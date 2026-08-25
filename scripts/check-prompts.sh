#!/usr/bin/env bash
# Prompt economy audit — measures, never legislates.
#
# THE RULE LIVES IN 08-Plates/scene-prompt-system.md, section
# "A prompt is an instruction, not an explanation", in the fenced BUDGET /
# RATIONALE block. This script reads its thresholds and its wordlist from
# there and holds none of its own — the same way build-prompts.sh reads the
# prompts from the markdown. To change what counts as bloat, edit that block.
#
# Detection only; judgment stays human, like scripts/check-quotes.sh.
#
# ADOPTED PROMPTS ARE RECORDS AND ARE NOT BUGS. A flag on a prompt that has
# already produced an adopted image is history — do not edit it to quiet this
# report. The audit is for what has not been run yet.
#
#   scripts/check-prompts.sh          -> report every generated prompt
set -euo pipefail
cd "$(dirname "$0")/.."

python3 - <<'PY'
import glob, io, re, sys

doc = io.open("08-Plates/scene-prompt-system.md", encoding="utf-8").read()
m = re.search(r"```\nBUDGET: (\d+) words · (\d+) capitalised openings\nRATIONALE: (.+?)\n```", doc, re.S)
if not m:
    sys.exit("check-prompts: no BUDGET/RATIONALE block in scene-prompt-system.md "
             "§A prompt is an instruction, not an explanation — the rule lives there, "
             "and this script will not guess it.")
BUDGET, MAXCAPS = int(m.group(1)), int(m.group(2))
RATIONALE = [p.strip() for p in m.group(3).split("·") if p.strip()]

rows, flagged = [], 0
for path in sorted(glob.glob("08-Plates/prompts/**/*.txt", recursive=True)):
    text = io.open(path, encoding="utf-8").read()
    words = len(text.split())
    caps = sum(1 for p in text.split("\n\n") if re.match(r"[A-Z][A-Z'’]+ [A-Z][A-Z'’]+", p.strip()))
    hits = sorted({p for p in RATIONALE if re.search(r"\b%s\b" % re.escape(p), text, re.I)})
    bad = words > BUDGET or caps > MAXCAPS or hits
    rows.append((path.split("prompts/")[1], words, caps, hits, bad))
    flagged += bool(bad)

w = max(len(r[0]) for r in rows)
print(f" {'prompt'.ljust(w)}  words  caps  rationale")
for name, words, caps, hits, bad in rows:
    print(f"{'!' if bad else ' '}{name.ljust(w)} {words:6} {caps:5}  {', '.join(hits) or '-'}")
print(f"\n{len(rows)} prompts, {flagged} flagged. "
      f"Budget {BUDGET} words / {MAXCAPS} capitalised openings, read from the markdown.")
print("A flag is a question, not a failure, and an adopted prompt's flag is history.")
PY
