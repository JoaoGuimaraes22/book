#!/usr/bin/env bash
# Clue lookup — design-time reader for 07-Story-Ledger/planted-clues.md.
#
# The clue ledger is the largest law-core file and is NOT read whole at a
# session open. When designing a chapter, ask it what the target owes:
#
#   scripts/clues.sh                      -> section counts + every PLANNED and VALVE row
#   scripts/clues.sh fire                 -> rows whose "Pays off in" or "Handling" mentions "fire"
#   scripts/clues.sh fire Vask Halden     -> rows matching ANY term, each printed ONCE, tagged [fire] [Vask] ...
#   scripts/clues.sh 'Ch\. 19'            -> terms are case-insensitive regexes
#   scripts/clues.sh -a Halden            -> match against the whole row, not just payoff/handling
#
# Detection only: the row text is the law; judgment stays human.
set -euo pipefail
cd "$(dirname "$0")/.."

python3 - "$@" <<'EOF'
import re, sys

args = sys.argv[1:]
whole = False
if args and args[0] == "-a":
    whole = True; args = args[1:]
patterns = [(a, re.compile(a, re.I)) for a in args]

text = open("07-Story-Ledger/planted-clues.md").read()
sections = re.split(r"^### ", text, flags=re.M)[1:]

def rows(block):
    out = []
    for line in block.splitlines():
        if not line.startswith("|") or set(line.strip("| ")) <= set("-| "):
            continue
        cells = [c.strip() for c in line.strip().strip("|").split("|")]
        if len(cells) < 4 or cells[0] == "Clue":
            continue
        out.append(cells)
    return out

def show(cells):
    clue, planted, pays, handling = cells[:4]
    print(f"  • {clue}\n      planted: {planted}   pays: {pays}   handling: {handling}")

for block in sections:
    title = block.split("\n", 1)[0].strip()
    rs = rows(block)
    state = title.split(" ")[0]
    if not patterns:
        print(f"{title}  [{len(rs)} rows]")
        if state in ("PLANNED", "VALVE"):
            for r in rs: show(r)
        continue
    hits = []
    for r in rs:                      # each row once, whichever terms hit it
        hay = " | ".join(r) if whole else (r[2] + " | " + r[3])
        tags = [a for a, rx in patterns if rx.search(hay)]
        if tags: hits.append((tags, r))
    if hits:
        print(f"{title}  [{len(hits)}/{len(rs)} rows match]")
        for tags, r in hits:
            print("  " + " ".join(f"[{a}]" for a in tags))
            show(r)
EOF
