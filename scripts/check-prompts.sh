#!/usr/bin/env bash
# Prompt economy audit — "A PROMPT IS AN INSTRUCTION, NOT AN EXPLANATION".
#
# Reports, per generated prompt: length, how much emphasis it is spending, and
# any clause whose audience is a person rather than a renderer. Detection only;
# judgment stays human, the same way scripts/check-quotes.sh works. A flag is a
# question, not a failure — some rationale is load-bearing.
#
# The rule it enforces, from 08-Plates/scene-prompt-system.md:
#   could a renderer draw something different because of this line?
#   If not, it belongs in the plate sheet's prose, not in the prompt.
#
#   scripts/check-prompts.sh          -> report every generated prompt
#
# ADOPTED PROMPTS ARE RECORDS AND ARE NOT BUGS. A flag on a prompt that has
# already produced an adopted image is history, not a defect — do not edit it to
# quiet this report. The audit is for what has not been run yet.
set -euo pipefail
cd "$(dirname "$0")/.."

python3 - <<'PY'
import glob, io, re

# Clauses addressed to a reader. "X is the subject of the image" is NOT here:
# that is a priority instruction and is documented as working.
RATIONALE = [
    r"\bis deliberate\b", r"\bare deliberate\b", r"\bwas deliberate\b",
    r"\bthat is why\b", r"\bwhich is why\b", r"\bwhich is what tells\b",
    r"\bthe reason for\b", r"\bthe whole point\b", r"\bon purpose\b",
    r"\bin order to\b", r"\bso that the reader\b", r"\bthis matters\b",
]
BUDGET = 550   # words, including the ~100-word style header

rows, flagged = [], 0
for path in sorted(glob.glob("08-Plates/prompts/**/*.txt", recursive=True)):
    text = io.open(path, encoding="utf-8").read()
    words = len(text.split())
    # paragraphs that open with a run of two or more SHOUTED words
    caps = sum(1 for p in text.split("\n\n") if re.match(r"[A-Z][A-Z'’]+ [A-Z][A-Z'’]+", p.strip()))
    hits = [m.group(0) for rx in RATIONALE for m in re.finditer(rx, text, re.I)]
    rows.append((path.split("prompts/")[1], words, caps, hits))
    if words > BUDGET or caps > 6 or hits:
        flagged += 1

w = max(len(r[0]) for r in rows)
print(f"{'prompt'.ljust(w)}  words  caps  rationale")
for name, words, caps, hits in rows:
    mark = "!" if (words > BUDGET or caps > 6 or hits) else " "
    print(f"{mark}{name.ljust(w)} {words:6} {caps:5}  {', '.join(sorted(set(hits))) or '-'}")
print(f"\n{len(rows)} prompts, {flagged} flagged."
      f"  Budget {BUDGET} words, {6} capitalised openings.")
print("A flag is a question, not a failure: could a renderer draw something\n"
      "different because of that line? If not, it belongs in the sheet's prose.")
PY
