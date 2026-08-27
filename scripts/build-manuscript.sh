#!/usr/bin/env bash
# Build one book of the manuscript into a single file for read-through passes.
#
# Usage:
#   scripts/build-manuscript.sh                 -> build/Book-One.md   (default book: book-one)
#   scripts/build-manuscript.sh book-two        -> build/Book-Two.md
#   scripts/build-manuscript.sh book-one epub   -> build/Book-One.epub too (requires pandoc)
#
# Chapter numbers run on across books (author, s52), so each book is its own
# directory under manuscript/ and its own build. build/ is derived but tracked
# (author, s55): built at a book's finish, not per session.
set -euo pipefail
cd "$(dirname "$0")/.."

book="book-one"
if [[ $# -gt 0 && "$1" != "epub" ]]; then book="$1"; shift; fi
[[ -d "manuscript/$book" ]] || { echo "no such book: manuscript/$book" >&2; exit 1; }
title="$(printf '%s' "$book" | awk -F- '{for (i=1;i<=NF;i++) $i=toupper(substr($i,1,1)) substr($i,2)} 1' OFS=' ')"   # book-one -> Book One
name="${title// /-}"

mkdir -p build
out="build/$name.md"

{
  echo "# $title"
  echo
  for f in manuscript/"$book"/*.md; do
    cat "$f"
    echo; echo; echo '---'; echo
  done
} > "$out"

echo "built: $out ($(wc -w < "$out") words)"

if [[ "${1:-}" == "epub" ]]; then
  if command -v pandoc >/dev/null; then
    pandoc "$out" -o "build/$name.epub" --metadata title="$title"
    echo "built: build/$name.epub"
  else
    echo "pandoc not installed — skipped epub (md build is done)" >&2
  fi
fi
