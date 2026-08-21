#!/usr/bin/env bash
# Echo audit ("echo deliberately or not at all"):
# scans prose for occurrences of protected phrasings from 07-Story-Ledger.md.
#
# Usage:
#   scripts/check-echoes.sh <draft.md> [...]  -> list every protected phrase found in the given file(s)
#                                                (a new chapter should hit protected phrases ONLY on purpose)
#   scripts/check-echoes.sh                   -> scan the whole manuscript; flag phrases appearing in
#                                                MORE THAN ONE chapter (candidate accidental respends)
#
# The tool only detects; deliberate echoes are legitimate. Judgment stays human.
# Limitation: only quoted phrases (>= 3 words) from the protected lists are matched; single-word
# protections ("Done", "Evening", "Quiet.") and unquoted motifs (the tapping hand) need eyes.
set -euo pipefail
cd "$(dirname "$0")/.."

python3 - "$@" <<'EOF'
import re, sys, glob, collections

ledger = open("07-Story-Ledger.md").read()
# Protected phrasings live in their own section since the session-18 restructure:
# one phrase per line, from the header containing "On-page canon phrasing" to the
# next "## " header or end of file. Retired phrases are listed unquoted -> skipped.
m = re.search(r"^##[^\n]*On-page canon phrasing[^\n]*\n(.*?)(?=^## |\Z)",
              ledger, re.M | re.S)
if not m:
    sys.exit("protected-phrasings section not found in 07")

phrases = set()
for quoted in re.findall(r'"([^"]+)"', m.group(1)):
    # split ellipses/slashes into independently searchable fragments
    for frag in re.split(r"\.\.\.|/", quoted):
        frag = frag.strip(" .,—")
        if len(frag.split()) >= 3:
            phrases.add(frag)

def norm(text):
    return re.sub(r"\s+", " ", text.lower())

targets = sys.argv[1:] or sorted(glob.glob("manuscript/book-one/*.md"))
whole_manuscript = not sys.argv[1:]

hits = collections.defaultdict(list)  # phrase -> [files]
for path in targets:
    body = norm(open(path).read())
    for p in phrases:
        if norm(p) in body:
            hits[p].append(path)

if whole_manuscript:
    flagged = {p: fs for p, fs in hits.items() if len(fs) > 1}
    if not flagged:
        print("No protected phrase appears in more than one chapter.")
    for p, fs in sorted(flagged.items()):
        print(f'MULTI-CHAPTER: "{p}"')
        for f in fs: print(f"    {f}")
else:
    if not hits:
        print("No protected phrases found in the given file(s).")
    for p, fs in sorted(hits.items()):
        print(f'FOUND: "{p}"  ({", ".join(fs)})')
    print(f"\n{len(hits)} protected phrase(s) present — each must be a deliberate echo.")
EOF
