#!/usr/bin/env bash
# Prompt pre-flight ("a prompt is a specification, not documentation"):
# lints generated prompts for the two failure modes that are MECHANICALLY detectable.
#
# Usage:
#   scripts/check-prompt-bloat.sh                 -> lint every built prompt
#   scripts/check-prompt-bloat.sh <file.md> ...  -> lint the given prompt(s)
#
# WHY THIS EXISTS: every rule in 08-Plates/scene-prompt-system.md was written
# retrospectively, as a finding after a run, and nothing applied them before the next
# block shipped, so the same bloat kept arriving. This is the prospective half.
#
# WHAT IT DELIBERATELY DOES NOT CHECK, and this is the useful part of building it.
# Two mechanical tests for over-negation were tried against the adopted prompts and
# BOTH were thrown out for flagging the folder's best work:
#   1. Negation DENSITY. It flagged ch01-fallen-stars and ch04-blade-across-her-knees,
#      both adopted on the first run, and rated the author's own ch01-vask-kael-goat
#      the worst file in the folder at one negation per fifteen words.
#   2. Negation RUNS inside one sentence. It flagged severin.md, whose eleven-term NOT
#      list is the documented reason that portrait works (portrait-prompt-system.md,
#      "ATTACK THE ARCHETYPE, NOT ONLY THE AFFECT").
# The difference between a bad run (no lamp, no fire, no torch -- one noun, three names)
# and a good one (not warm, not kindly, not stern -- three distinct channels) is
# semantic, and no counter can see it. THAT JUDGEMENT STAYS HUMAN. See
# scene-prompt-system.md "Over-writing contradicts": count the channel, not the sentence.
set -euo pipefail
cd "$(dirname "$0")/.."

python3 - "$@" <<'EOF'
import glob, io, re, sys

# README.md in prompts/ is hand-written documentation, not a built prompt --
# excluded here for the same reason build-prompts.sh --check excludes it.
files = sys.argv[1:] or [f for f in sorted(glob.glob("08-Plates/prompts/**/*.md", recursive=True))
                         if not f.endswith("README.md")]

# Words that name a feeling, a judgement or a reason rather than a surface. A prompt is
# read by something that turns clauses into pixels; these can only work when a drawable
# clause sits beside them ("Specify, do not narrate").
# NB: "clearly" and "obviously" were tried here and removed -- in these prompts they
# intensify drawable clauses ("clearly separate in colour", "clearly visible") rather
# than narrating, and they flagged half the folder for nothing.
ABSTRACT = (r"\b(?:deliberate(?:ly)?|beautiful|striking|important|meaningful|"
            r"reads as|the reason|the point|the whole point|and that is why|because)\b")

def caps_blocks(text):
    return re.findall(r"(?:\b[A-Z][A-Z'’-]{1,}\b[ ,:]+){2,}\b[A-Z][A-Z'’-]{1,}\b", text)

def body(text):
    """Drop the shared style header and the Image N: lines -- boilerplate is not restatement."""
    text = re.sub(r"^.*?(?=\n\n)", "", text, flags=re.S) if text.startswith("Medium:") else text
    text = re.sub(r"^Colour:.*?(?=\n\n)", "", text, flags=re.S | re.M)
    return "\n".join(l for l in text.split("\n") if not l.startswith("Image "))

def repeated(text, n=5):
    words = re.findall(r"[a-z']+", text.lower())
    counts = {}
    for i in range(len(words) - n + 1):
        g = " ".join(words[i:i+n])
        counts[g] = counts.get(g, 0) + 1
    return {g: c for g, c in counts.items() if c > 1}

problems = 0
for f in files:
    raw = io.open(f, encoding="utf-8").read()
    b = body(raw)
    flags = []

    dupes = repeated(b)
    if dupes:
        top = sorted(dupes.items(), key=lambda kv: -kv[1])[:3]
        flags.append("RESTATEMENT: " + "; ".join('"%s" x%d' % (g, c) for g, c in top))

    caps = caps_blocks(b)
    if len(caps) > 8:
        flags.append("EMPHASIS: %d capitalised blocks -- adopted first-run prompts sit at 5-6" % len(caps))

    # Markdown that leaked out of the sheet and into the fenced block. A prompt is
    # plain text; asterisks and backticks reach the generator as literal characters.
    md = re.findall(r"\*\*|`|^\s*[-*] |^#{1,6} ", raw, re.M)
    if md:
        flags.append("MARKDOWN LEAK: %d marker(s) in the prompt text" % len(md))

    abst = sorted(set(a.lower() for a in re.findall(ABSTRACT, b, re.I)))
    if abst:
        flags.append("ABSTRACTIONS: " + ", ".join(abst))

    if flags:
        problems += 1
        print("\n%s  (%d words)" % (f, len(raw.split())))
        for fl in flags:
            print("  - " + fl)

print("\nprompts checked: %d   flagged: %d" % (len(files), problems))
print("Every flag can be legitimate. LENGTH IS NOT THE METRIC -- redundancy and rhetoric are.")
EOF
