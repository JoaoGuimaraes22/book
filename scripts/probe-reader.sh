#!/usr/bin/env bash
# Standard reader-probe battery against the "Book One — Reader Copy" notebook.
# Run AFTER a chapter is committed and synced (scripts/sync-reader-notebook.sh).
# Saves a dated record to archive/probes/<label>.md so probes stay comparable across chapters.
#
# Usage: scripts/probe-reader.sh <label>     e.g. scripts/probe-reader.sh ch-10
set -euo pipefail
cd "$(dirname "$0")/.."

NOTEBOOK_ID="ce62aafb-0d6c-45af-becc-5bdf01d9799c"
label="${1:?usage: probe-reader.sh <label>, e.g. ch-10}"
out="archive/probes/${label}.md"
mkdir -p archive/probes

Q1="Based only on these chapters, summarize what you KNOW and what you SUSPECT about: (a) Kael's parents' past, (b) Kael's own abilities and nature, (c) the master's motives. Separate knowledge from suspicion and cite the evidence."
Q2="As a devoted reader: what do you expect AND want to happen next? What do you fear the author might do wrong?"
Q3="What confused you or felt unresolved in the most recent chapter? List anything that felt like a mistake, a contradiction, or a gun that should have fired."

{
  echo "# Reader probe — ${label}"
  echo "Date: $(date +%F). Instrument: Reader Copy notebook (chapters only). Answers are reader-inference evidence, never canon."
  for q in "$Q1" "$Q2" "$Q3"; do
    echo; echo "## Q: $q"; echo
    nlm query notebook "$NOTEBOOK_ID" "$q" 2>/dev/null | python3 -c "import json,sys; print(json.load(sys.stdin)['answer'])"
  done
} > "$out"

echo "probe saved: $out"
