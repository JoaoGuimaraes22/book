#!/usr/bin/env bash
# Phantom audit — "THE LEDGER FOLLOWS THE PAGE".
#
# Scans the doc system for double-quoted spans and checks each against the
# committed manuscript. Anything it cannot find is either (a) a PHANTOM — text
# recorded as page canon that was never on any page — or (b) legitimately
# not-page text (design language, an author ruling, a struck line kept as a
# record), which by convention should be written UNQUOTED, in italics, so this
# tool skips it. Same convention 07/protected-phrasings has used since s25.
#
#   scripts/check-quotes.sh            -> report every quoted span not on a page
#   scripts/check-quotes.sh 7          -> raise the minimum fragment length
#
# Detection only. Judgment stays human: confirm each hit with `git log -S` before
# calling it a phantom — a line may have been cut from a chapter that once held it.
set -euo pipefail
cd "$(dirname "$0")/.."

python3 - "$@" <<'EOF'
import re, glob, sys, unicodedata, collections

def norm(t):
    t = unicodedata.normalize("NFKD", t)
    for a, b in (("’","'"),("‘","'"),("“",'"'),("”",'"'),("—"," "),("–"," ")):
        t = t.replace(a, b)
    t = re.sub(r"[*_`]", "", t).lower()
    t = re.sub(r"[^a-z0-9' ]", " ", t)
    return re.sub(r"\s+", " ", t).strip()

man = norm(" ".join(open(p).read() for p in sorted(glob.glob("manuscript/*/*.md"))))   # every book

def present(n, gap=7):
    """On the page, allowing ONE interruption (a speech tag) anywhere in the span."""
    if n in man:
        return True
    w = n.split()
    for i in range(1, len(w)):
        a, b = " ".join(w[:i]), " ".join(w[i:])
        if len(b.split()) < 2:
            break
        if re.search(re.escape(a) + r" (?:\w+ ){1,%d}" % gap + re.escape(b), man):
            return True
    return False

FILES = (sorted(glob.glob("03-Character-Bible/*.md")) + sorted(glob.glob("07-Story-Ledger/*.md"))
         + ["05-Continuity-Log.md", "04-Outline.md"] + sorted(glob.glob("02-World-Bible/*.md")))
FILES = [f for f in FILES if not f.endswith(("index.md", "changelog.md"))]

MINW = int(sys.argv[1]) if len(sys.argv) > 1 else 5
miss = collections.defaultdict(set)
total = 0
for f in FILES:
    for q in re.findall(r'"([^"\n]{3,400})"', open(f).read()):
        # naive quote pairing can capture the span BETWEEN a closing quote and the
        # next opening one; a real quotation never starts or ends with whitespace.
        if q != q.strip():
            continue
        for frag in re.split(r"[.?!;]|…|\.\.\.|\s/\s", q):
            n = norm(frag)
            if len(n.split()) < MINW:
                continue
            total += 1
            if not present(n):
                miss[n].add(f)

print(f"quoted fragments checked: {total}   NOT FOUND ON ANY PAGE: {len(miss)}\n")
for n, fs in sorted(miss.items()):
    print(f'  "{n}"')
    print(f'      {", ".join(sorted(fs))}')
print("\nEach hit is a PHANTOM or should be unquoted. Confirm with: git log -S '<text>' -- manuscript/")
EOF
