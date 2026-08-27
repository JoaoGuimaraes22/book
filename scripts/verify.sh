#!/usr/bin/env bash
# Session-open verification (protocol step 1):
#   1. git working tree must be clean (anything unexplained = stale/unfinished state -> STOP)
#   2. wc -w of every chapter (any book under manuscript/) + 00 must match the CANONICAL baselines in 05
#   3. scripts/check-quotes.sh must report 0 quoted spans that are on no page
# A mismatch mid-session just means baselines need updating at close (protocol step 6);
# a mismatch at session OPEN means something changed outside protocol -> investigate.
set -euo pipefail
cd "$(dirname "$0")/.."

status=0

if [[ -n "$(git status --porcelain)" ]]; then
  echo "GIT: working tree NOT clean:"
  git status --short
  status=1
else
  echo "GIT: clean"
fi

python3 - <<'EOF' || status=1
import re, glob, sys

log = open("05-Continuity-Log.md").read()
m = re.search(r"## WORD-COUNT BASELINES \(CANONICAL[^\n]*\n- ([^\n]*)", log)
if not m:
    sys.exit("BASELINES: canonical block not found in 05")

ok = True
for label, count in re.findall(r"(Ch\. \d+|00) = ([\d,]+)", m.group(1)):
    expected = int(count.replace(",", ""))
    if label == "00":
        paths = ["00-Author-Canon-SEALED.md"]
    else:
        n = int(label.split()[1])
        paths = sorted(glob.glob(f"manuscript/*/{n:02d}-*.md"))   # every book: numbering runs on across books (author, s52)
    if len(paths) != 1:
        print(f"BASELINES: {label}: expected one file, found {paths}"); ok = False; continue
    actual = len(open(paths[0]).read().split())
    if actual != expected:
        print(f"BASELINES: MISMATCH {label}: baseline {expected}, actual {actual} ({paths[0]})")
        ok = False

print("BASELINES: all match" if ok else "BASELINES: mismatches found")
sys.exit(0 if ok else 1)
EOF

# 3. phantom audit — every quoted span in the doc system must be on a page (THE LEDGER FOLLOWS THE PAGE)
phantoms="$(bash scripts/check-quotes.sh | sed -n 's/.*NOT FOUND ON ANY PAGE: \([0-9]*\).*/\1/p')"
if [[ "$phantoms" == "0" ]]; then
  echo "PHANTOMS: 0"
else
  echo "PHANTOMS: ${phantoms:-?} — run scripts/check-quotes.sh and confirm each with git log -S"
  status=1
fi

if [[ $status -eq 0 ]]; then echo "VERIFY: OK"; else echo "VERIFY: FAILED"; fi
exit $status
