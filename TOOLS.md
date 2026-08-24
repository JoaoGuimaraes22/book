# Tools

## Repo scripts (`scripts/`)
- `verify.sh` — session-open check: git tree clean + `wc -w` vs canonical baselines in 05. Protocol step 1 is now this one command.
- `check-echoes.sh [files]` — protected-phrasing scan against 07's list. With a draft: every protected phrase it contains (each must be deliberate). Without args: phrases appearing in >1 chapter across the manuscript. Detects only; judgment stays human.
- `check-quotes.sh [minwords]` — **phantom audit.** Checks every double-quoted span in 02/03/04/05/07 against the committed manuscript and reports what is not on any page. Tolerates one interruption per span, so split quotations (`"…," his father said. "…"`) do not false-positive. A hit is either a PHANTOM or text that should be unquoted per the CLAUDE.md hard rule. Detects only; confirm with `git log -S '<text>' -- manuscript/` before calling it a phantom, because a line may have been cut from a chapter that once carried it.
  - **SEVERITY — the part that matters.** A phantom on its own is hygiene: strike it and move on. **A phantom with an INSTRUCTION built on it is a real bug**, because the instruction outlives the sentence and the next chapter gets written off it. Three of the first four found were that kind: *"That is not why."* had `05`'s NEVER RESOLVE rule, `03/severin` and the clue ledger all encoding a contradiction between the parents that the page never stages; *and did not ask again, then or ever* had a standing KNOWN OPEN ruling protecting a sentence that does not exist; *"older than"* was marked *protect absolutely* and was untrue besides. The fourth carried nothing and cost nothing. **So: chase the rules, not the mismatches.**
  - **IT IS NOISY.** Speech-tag splits throw false positives and need eyes. And it is blind by construction to the worst class: **an invented fact that was never quoted** — the hand-borne fans (s30), the freckles (s34). Quote marks are what it checks; an unquoted invention is invisible to it forever.
- `build-manuscript.sh [epub]` — concatenates chapters into `build/Book-One.md` (+ EPUB via pandoc) for read-through passes. `build/` is derived, gitignored.
- `sync-reader-notebook.sh` — pushes changed chapters to the reader-copy notebook (below). **It ADDS and UPDATES; it never REMOVES (found s30).** Renaming or deleting a chapter file leaves an orphaned source behind, and two sources holding the same scene silently corrupt every later probe. After any `git mv` in `manuscript/`, run `nlm source list <notebook-id>` and delete the orphan with `nlm source delete <source-id> --confirm`. **And it cannot see a NEW chapter (found s32):** the default run diffs `git diff --name-only HEAD`, which does not list untracked files, so a freshly drafted chapter reports *Nothing to sync* and is silently missed. **Either sync it before commit by passing the path explicitly** (`scripts/sync-reader-notebook.sh manuscript/book-one/NN-Title.md`) **or run it after the commit.** Always confirm the source count matches the chapter count.
- `probe-reader.sh <label>` — standard reader-probe battery (knowledge / expectation / confusion), saved to `archive/probes/<label>.md` so probes stay comparable chapter over chapter. Run after commit + sync.

## NotebookLM CLI (`nlm`)

Google NotebookLM driven from the terminal (`nlm --help`; authenticated as the author's Google account; WSL login via `nlm login --wsl`). Mostly idle — reach for it deliberately, not by default.

### The standing instrument (in active use)
- **"Book One — Reader Copy"** (`ce62aafb-0d6c-45af-becc-5bdf01d9799c`) — clean-reader simulator. Chapters only, never bibles/00/05. Query with `nlm query notebook <id> "..."`. Sync after prose changes: `scripts/sync-reader-notebook.sh`. Full rules: this file §Rules + CLAUDE.md §Instruments; probe records in `archive/session-log.md` §READER-COPY INSTRUMENT.

### Dormant capabilities (documented so we remember they exist)
All operate on a notebook's sources; artifacts land in NotebookLM's Studio (`nlm studio`, `nlm download`, `nlm export` to Google Docs/Sheets).

- **Reports** (`nlm report`) — structured written syntheses of the sources (e.g. a character-thread report, a timeline audit from the reader's side).
- **Mind maps** (`nlm mindmap`) — visual maps of entities/threads as the sources present them; useful as a reader-side view of how the plot web looks assembled.
- **Audio overviews** (`nlm audio`) — podcast-style discussion of the sources. Fresh-ears pass for the author: hearing two voices discuss the book surfaces pacing/legibility impressions reading doesn't.
- **Video overviews, slides, infographics** (`nlm video`, `nlm slides`, `nlm infographic`) — presentation-shaped renderings; unlikely for a novel, exists.
- **Quiz / flashcards** (`nlm quiz`, `nlm flashcards`) — could serve as a blunt "what does a reader retain?" check.
- **Data tables** (`nlm data-table`) — tabular extraction across sources.
- **Creative/predictive queries** — plain `nlm query` with "what do you expect next / pitch directions" prompts. This is READER-EXPECTATION EVIDENCE (what an attentive reader anticipates, wants, fears) and occasionally idea fodder.
- **Research** (`nlm research`) — web source discovery; irrelevant to a closed canon, noted for completeness.
- **Cross-notebook queries, batch ops, pipelines** (`nlm cross`, `nlm batch`, `nlm pipeline`) — plumbing for multi-notebook setups.

### Rules
1. Nothing NotebookLM produces is canon. Its outputs are evidence (reader-side) or fodder (creative) — canon decisions happen between author and Claude and commit to 05.
2. The reader copy stays clean forever. If a full-canon notebook is ever wanted (bibles included, for continuity cross-checks by a second model), create a SEPARATE notebook — never add canon docs to the reader copy.
3. Notebooks are derived artifacts; git is truth. Anything worth keeping from a NotebookLM output gets written into a repo file, not left in Studio.
