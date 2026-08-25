#!/usr/bin/env bash
# Rebuild 08-Plates/prompts/ from the prompt systems.
#
# The MARKDOWN IS THE SOURCE OF TRUTH. Everything under 08-Plates/prompts/ is a
# generated, paste-ready artifact — never edit those files by hand, edit the
# block in portrait-prompt-system.md / scene-prompt-system.md and re-run this.
# (A hand-edited .txt is a second home for a fact the doc already owns, which is
# the drift that produced the s30 phantoms.)
#
# Usage: scripts/build-prompts.sh [--check]
#   --check  rebuild into a temp dir and diff; non-zero if prompts/ is stale.
set -euo pipefail
cd "$(dirname "$0")/.."

OUT="08-Plates/prompts"
if [[ "${1:-}" == "--check" ]]; then OUT="$(mktemp -d)/prompts"; fi

python3 - "$OUT" <<'PY'
import glob, io, os, re, sys

out = sys.argv[1]
port = io.open("08-Plates/portrait-prompt-system.md", encoding="utf-8").read()
scene = io.open("08-Plates/scene-prompt-system.md", encoding="utf-8").read()

def fenced(text, after, n=0):
    """The (n+1)th ``` block appearing after the marker `after`."""
    seg = text.split(after, 1)[1]
    return seg.split("```")[1 + 2 * n].strip("\n")

STYLE   = fenced(port, "## STYLE block — fixed")
HAIR    = fenced(port, "## HAIR line — optional")
HALFFIG = fenced(port, "## COMPOSITION override — half figure")
BASE    = fenced(port, "## BASE block — full figure")

AGE = {
    "child":      fenced(port, "**Kael at four — the first CHILD block**"),
    "kael9":      fenced(port, "**Kael at nine — the intermediate rung**"),
    "adolescent": fenced(port, "**The original, still correct for Kael at fourteen, Valeria and Aeliana:**"),
    "aurelian":   fenced(port, "**Aurelian — the body ahead of the face**"),
    "elarine":    fenced(port, "**Elarine — small, and nothing caught up yet:**"),
    "vask":       fenced(port, "**Vask — grown and worn down**"),
    "neris":      fenced(port, "**Neris — grown, and the age is in the eyes:**"),
    "severin":    fenced(port, "**Severin — old, and worn to what mattered**"),
}

# character -> (heading in the doc, age block, include HAIR, composition override)
PORTRAITS = [
    ("kael-4",      "### Kael at four",  "child",      True,  None),
    ("kael-9",      "### Kael at nine",  "kael9",      True,  None),
    ("kael-14",     "### Kael",          "adolescent", True,  None),
    ("valeria-14",  "### Valeria",       "adolescent", True,  None),
    ("aeliana-15",  "### Aeliana",       "adolescent", True,  None),
    ("aurelian-14", "### Aurelian",      "aurelian",   False, None),
    ("elarine-14",  "### Elarine",       "elarine",    False, None),
    ("vask",        "### Vask",          "vask",       True,  None),
    ("neris",       "### Neris",         "neris",      True,  None),
    ("severin",     "### Severin",       "severin",    True,  HALFFIG),
]

FULL_FIGURES = [
    ("kael-14-full",    "## Kael — full figure"),
    ("valeria-14-full", "## Valeria — full figure"),
    ("aeliana-15-full", "## Aeliana — full figure"),
]

def write(path, text):
    os.makedirs(os.path.dirname(path), exist_ok=True)
    io.open(path, "w", encoding="utf-8").write(text.rstrip("\n") + "\n")

n = 0
for name, head, age, hair, comp in PORTRAITS:
    style = STYLE
    if comp:  # swap the fixed Composition paragraph for the override
        style = re.sub(r"Composition:.*?(?=\n\nLighting:)", comp, style, flags=re.S)
    parts = [style, AGE[age]] + ([HAIR] if hair else []) + [fenced(port, head + "\n")]
    write(f"{out}/portraits/{name}.txt", "\n\n".join(parts))
    n += 1

for name, head in FULL_FIGURES:
    write(f"{out}/full-figures/{name}.txt", BASE + "\n\n" + fenced(port, head + "\n"))
    n += 1

write(f"{out}/scene-tests/quartet-conversation.txt", fenced(scene, "### Four figures — the quartet prompt, as run"))
n += 1

# Plates. A plate takes the house look — the Medium and Colour paragraphs of the
# fixed STYLE block — and nothing else; it writes its own composition, lighting
# and framing. Sliced, not copied, so that text keeps one home.
PLATE_STYLE = STYLE.split("\n\nEyes:")[0].strip("\n")

for sheet in sorted(glob.glob("08-Plates/plates/*.md")):
    stem = os.path.splitext(os.path.basename(sheet))[0]
    text = io.open(sheet, encoding="utf-8").read()
    for kind, slug in re.findall(r"^### (PLATE|PLATE-VERBATIM): (\S+)\s*$", text, flags=re.M):
        block = fenced(text, "### %s: %s\n" % (kind, slug))
        # PLATE-VERBATIM is the exact text as run and already carries its own
        # style header: emit it untouched. Never reassemble a prompt that ran.
        body = block if kind == "PLATE-VERBATIM" else PLATE_STYLE + "\n\n" + block
        write(f"{out}/plates/{stem}-{slug}.txt", body)
        n += 1

print(f"built {n} prompt files into {out}/")
PY

if [[ "${1:-}" == "--check" ]]; then
  # README.md is hand-written, not generated — exclude it from the comparison.
  if diff -rq --exclude=README.md "$OUT" 08-Plates/prompts >/dev/null 2>&1; then
    echo "PROMPTS: in sync with the markdown"
  else
    echo "PROMPTS: STALE — run scripts/build-prompts.sh"
    diff -rq --exclude=README.md "$OUT" 08-Plates/prompts || true
    exit 1
  fi
fi
