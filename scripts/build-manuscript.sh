#!/usr/bin/env bash
# Build the manuscript into a single file for read-through passes.
#
# Usage:
#   scripts/build-manuscript.sh          -> build/Book-One.md   (always)
#   scripts/build-manuscript.sh epub     -> build/Book-One.epub too (requires pandoc)
#
# build/ is a derived artifact — gitignored, regenerate at will.
set -euo pipefail
cd "$(dirname "$0")/.."

mkdir -p build
out="build/Book-One.md"

{
  echo "# Book One"
  echo
  for f in manuscript/book-one/*.md; do
    cat "$f"
    echo; echo; echo '---'; echo
  done
} > "$out"

echo "built: $out ($(wc -w < "$out") words)"

if [[ "${1:-}" == "epub" ]]; then
  if command -v pandoc >/dev/null; then
    pandoc "$out" -o build/Book-One.epub --metadata title="Book One"
    echo "built: build/Book-One.epub"
  else
    echo "pandoc not installed — skipped epub (md build is done)" >&2
  fi
fi
