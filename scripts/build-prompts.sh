#!/usr/bin/env bash
# Rebuild 08-Plates/prompts/ from the prompt system and the sheets.
#
# THE MARKDOWN IS THE SOURCE OF TRUTH. Everything under 08-Plates/prompts/ is a
# generated, paste-ready artifact — never edit those files by hand. Edit the block in
# 08-Plates/prompt-system.md, 08-Plates/scene-tests.md or 08-Plates/plates/ch<NN>.md
# and re-run this. A hand-edited prompt file is a second home for a fact the doc
# already owns.
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
sysdoc = io.open("08-Plates/prompt-system.md", encoding="utf-8").read()
tests  = io.open("08-Plates/scene-tests.md", encoding="utf-8").read()

def fenced(text, after, n=0):
    """The (n+1)th ``` block appearing after the marker `after`."""
    seg = text.split(after, 1)[1]
    return seg.split("```")[1 + 2 * n].strip("\n")

STYLE   = fenced(sysdoc, "## STYLE block — portrait")
HAIR    = fenced(sysdoc, "## HAIR line")
HALFFIG = fenced(sysdoc, "## COMPOSITION override — half figure")
BASE    = fenced(sysdoc, "## BASE block — full figure")
CLOSE   = fenced(sysdoc, "#### Closing line")
SCENE_STYLE = fenced(sysdoc, "## Scene style line")
MEDIUM  = STYLE.split("\n\n")[0]   # for a plate with no reference attached

AGE = {
    "child":      fenced(sysdoc, "#### Child — Kael at four"),
    "kael9":      fenced(sysdoc, "#### Nine — Kael at nine"),
    "adolescent": fenced(sysdoc, "#### Adolescent — Kael at fourteen, Valeria, Aeliana"),
    "aurelian":   fenced(sysdoc, "#### Aurelian — the body ahead of the face"),
    "elarine":    fenced(sysdoc, "#### Elarine — small, nothing caught up yet"),
    "vask":       fenced(sysdoc, "#### Vask — grown and worn down"),
    "neris":      fenced(sysdoc, "#### Neris — grown, the age in the eyes"),
    "severin":    fenced(sysdoc, "#### Severin — old, worn to what mattered"),
}

# file -> (heading in prompt-system.md, age block, include HAIR, composition override)
PORTRAITS = [
    ("kael-4",       "### Kael at four\n",         "child",      True,  None),
    ("kael-9",       "### Kael at nine\n",         "kael9",      True,  None),
    ("kael-9-still", "### Kael at nine — still\n", "kael9",      True,  None),
    ("kael-14",      "### Kael at fourteen\n",     "adolescent", True,  None),
    ("valeria-14",   "### Valeria\n",              "adolescent", True,  None),
    ("aeliana-15",   "### Aeliana\n",              "adolescent", True,  None),
    ("aurelian-14",  "### Aurelian\n",             "aurelian",   False, None),
    ("elarine-14",   "### Elarine\n",              "elarine",    False, None),
    ("vask",         "### Vask\n",                 "vask",       True,  None),
    ("neris",        "### Neris\n",                "neris",      True,  None),
    ("severin",      "### Severin\n",              "severin",    True,  HALFFIG),
]

FULL_FIGURES = [
    ("kael-14-full",    "### Kael — full figure\n"),
    ("valeria-14-full", "### Valeria — full figure\n"),
    ("aeliana-15-full", "### Aeliana — full figure\n"),
]

def write(path, text):
    os.makedirs(os.path.dirname(path), exist_ok=True)
    io.open(path, "w", encoding="utf-8").write(text.rstrip("\n") + "\n")

def split_image_lines(block):
    """Hoist the opening `Image N:` paragraph (whole paragraph, so a wrapped line is not orphaned)."""
    if re.match(r"Image \d+:", block):
        head, _, rest = block.partition("\n\n")
        return head, rest.lstrip("\n")
    return "", block

n = 0
for name, head, age, hair, comp in PORTRAITS:
    style = STYLE
    if comp:  # swap the fixed Composition paragraph for the override
        style = re.sub(r"Composition:.*?(?=\n\nLighting:)", comp, style, flags=re.S)
    parts = [style, AGE[age]] + ([HAIR] if hair else []) + [fenced(sysdoc, head)]
    write(f"{out}/portraits/{name}.md", "\n\n".join(parts))
    n += 1

for name, head in FULL_FIGURES:
    refs, subject = split_image_lines(fenced(sysdoc, head))
    parts = ([refs] if refs else []) + [BASE, subject, CLOSE]
    write(f"{out}/full-figures/{name}.md", "\n\n".join(parts))
    n += 1

# Scene tests: the first fence under each SCENE-VERBATIM heading, untouched.
for slug in re.findall(r"^### SCENE-VERBATIM: (\S+)\s*$", tests, flags=re.M):
    write(f"{out}/scene-tests/{slug}.md", fenced(tests, "### SCENE-VERBATIM: %s\n" % slug))
    n += 1

# Plates. The Image lines go first; then the scene style line (the references carry the
# medium) — or, for a plate with no reference attached, the STYLE block's Medium
# paragraph; then the plate's own block. PLATE-VERBATIM is emitted untouched.
for sheet in sorted(glob.glob("08-Plates/plates/*.md")):
    stem = os.path.splitext(os.path.basename(sheet))[0]
    text = io.open(sheet, encoding="utf-8").read()
    for kind, slug in re.findall(r"^### (PLATE|PLATE-VERBATIM): (\S+)\s*$", text, flags=re.M):
        block = fenced(text, "### %s: %s\n" % (kind, slug))
        if kind == "PLATE-VERBATIM":
            body = block
        else:
            refs, rest = split_image_lines(block)
            header = SCENE_STYLE if refs else MEDIUM
            body = (refs + "\n\n" if refs else "") + header + "\n\n" + rest
        write(f"{out}/plates/{stem}-{slug}.md", body)
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
