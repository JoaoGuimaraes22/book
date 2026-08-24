# Tools

## Repo scripts (`scripts/`)
- `verify.sh` — session-open check: git tree clean + `wc -w` vs the canonical baselines in 05.
- `check-quotes.sh [minwords]` — **phantom audit.** Every double-quoted span in 02/03/04/05/07 is checked against the committed manuscript; it reports what is on no page. Tolerates one interruption per span, so split speech tags do not false-positive. A hit is a PHANTOM or text that should be unquoted (CLAUDE.md §THE LEDGER FOLLOWS THE PAGE). Detects only: confirm with `git log -S '<text>' -- manuscript/` before calling it a phantom — the line may have been cut from a chapter that once held it. **A phantom with an instruction built on it is a real bug**, because the instruction outlives the sentence — chase the rules, not the mismatches. Blind by construction to an invented fact that was never quoted (the hand-borne fans, s30; the freckles, s34).
- `check-echoes.sh [files]` — protected-phrasing scan against `07/protected-phrasings.md`. With a draft: every protected phrase it contains (each must be deliberate). Without args: phrases appearing in more than one chapter. Detects only.
- `clues.sh [-a] [regex]` — design-time reader for `07/planted-clues.md`. No args: section counts plus every PLANNED and VALVE row. With a regex: the rows whose payoff or handling match (`-a` matches the whole row). This replaces reading the ledger whole at a session open.
- `build-manuscript.sh [epub]` — concatenates the chapters into `build/Book-One.md` (+ EPUB via pandoc). `build/` is derived and gitignored.
- `sync-reader-notebook.sh [--all | files]` — pushes chapters to the reader-copy notebook. **It adds and updates; it never removes:** after any `git mv` or delete in `manuscript/`, run `nlm source list <notebook-id>` and delete the orphan with `nlm source delete <source-id> --confirm`. **It cannot see an untracked new chapter** (it diffs `git diff --name-only HEAD`): pass the path explicitly before the commit, or run it after. **The default run misses prose commits older than the last one:** use `--all` after a multi-commit session. Always confirm the source count matches the chapter count.
- `probe-reader.sh <label>` — the standard reader-probe battery (knowledge / expectation / confusion), saved to `archive/probes/<label>.md` so probes stay comparable. Run after commit + sync.

## NotebookLM CLI (`nlm`)
NotebookLM from the terminal (`nlm --help`; the author's Google account; WSL login `nlm login --wsl`; health check `nlm doctor`). Mostly idle — reach for it deliberately, not by default.

- **"Book One — Reader Copy"** (`ce62aafb-0d6c-45af-becc-5bdf01d9799c`) — the clean-reader simulator: manuscript chapters ONLY, never bibles, 00 or 05. Query: `nlm query notebook <id> "..."`. Sync after prose changes with the script above.
- **Dormant capabilities** (exist, unused): reports (`nlm report`) · mind maps (`nlm mindmap`) · audio overviews (`nlm audio` — a fresh-ears pass) · video / slides / infographics · quiz / flashcards (a blunt reader-retention check) · data tables · predictive queries (plain `nlm query` with *what do you expect next* — reader-expectation evidence) · research (web sources; irrelevant to a closed canon) · cross-notebook, batch and pipeline plumbing. Artifacts land in Studio (`nlm studio`, `nlm download`, `nlm export`).
- **Quirks:** `source add` takes `--file/--title/--wait`; updating a source is delete + re-add; `source delete` takes SOURCE IDS ONLY — a notebook id passed there is treated as another source id (it prompts, which is the only safety net).

### Rules
1. Nothing NotebookLM produces is canon — reader-side evidence or creative fodder only. Canon decisions happen between author and Claude and commit to the files.
2. The reader copy stays clean forever. A full-canon notebook, if ever wanted, is a SEPARATE notebook.
3. Notebooks are derived; git is truth. Anything worth keeping from an output gets written into a repo file.
