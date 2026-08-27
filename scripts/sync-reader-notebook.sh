#!/usr/bin/env bash
# Sync manuscript chapters to the NotebookLM "Book One — Reader Copy" notebook.
#
# The notebook is a DERIVED artifact of manuscript/ (every book) — a clean-reader
# simulator. It must only ever contain manuscript chapters: no bibles, no 00,
# no continuity log. Run at session close after any prose change.
#
# Usage:
#   scripts/sync-reader-notebook.sh                # sync chapters changed since last git commit that touched them
#   scripts/sync-reader-notebook.sh --all          # delete + re-upload every chapter
#   scripts/sync-reader-notebook.sh <file.md>...   # sync specific chapter files
set -euo pipefail

NOTEBOOK_ID="ce62aafb-0d6c-45af-becc-5bdf01d9799c"
REPO_DIR="$(cd "$(dirname "$0")/.." && pwd)"
MANUSCRIPT_DIR="$REPO_DIR/manuscript"   # every book; chapter numbers run on across books (author, s52)

title_for() { # chapter filename -> source title (Ch. N — Title)
  basename "$1" .md | sed -E 's/^0?([0-9]+)-/Ch. \1 — /; s/-/ /g'
}

# Pick which files to sync
files=()
if [[ "${1:-}" == "--all" ]]; then
  for f in "$MANUSCRIPT_DIR"/*/*.md; do files+=("$f"); done
elif [[ $# -gt 0 ]]; then
  for f in "$@"; do files+=("$(realpath "$f")"); done
else
  # Chapters with uncommitted changes, plus those changed in the last commit
  while IFS= read -r f; do
    [[ -n "$f" ]] && files+=("$REPO_DIR/$f")
  done < <(cd "$REPO_DIR" && { git diff --name-only HEAD -- manuscript/; \
           git diff --name-only HEAD~1 HEAD -- manuscript/ 2>/dev/null; } | sort -u)
fi

if [[ ${#files[@]} -eq 0 ]]; then
  echo "Nothing to sync (no chapter changes found). Use --all to force."
  exit 0
fi

sources_json="$(nlm source list "$NOTEBOOK_ID" --json)"

for f in "${files[@]}"; do
  [[ -f "$f" ]] || { echo "skip (missing): $f"; continue; }
  title="$(title_for "$f")"
  old_id="$(printf '%s' "$sources_json" | python3 -c "
import json, sys
title = sys.argv[1]
for s in json.load(sys.stdin):
    if s.get('title') == title:
        print(s['id']); break
" "$title")"
  if [[ -n "$old_id" ]]; then
    nlm source delete "$old_id" --confirm >/dev/null
    echo "replaced: $title"
  else
    echo "added:    $title"
  fi
  nlm source add "$NOTEBOOK_ID" --file "$f" --title "$title" --wait >/dev/null
done

echo "Reader notebook in sync: https://notebooklm.google.com/notebook/$NOTEBOOK_ID"
