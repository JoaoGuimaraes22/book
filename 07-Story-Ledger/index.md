# 07 — Story Ledger (index)
**Status:** THE LAW of the story — do-not-contradict canon. Pure TOC, no facts. Changes only when canon changes. Live state: `../05-Continuity-Log.md` · history: `../archive/session-log.md`.

## LAW CORE — read at every session open
- [timeline.md](timeline.md) — part/age structure and every age pinned on the page.
- [standing-rules.md](standing-rules.md) — author-ratified story-side state: what is spent, fixed, or may not be contradicted.
- [magic-snapshot.md](magic-snapshot.md) — canon snapshot; deep layer in 00, public layer in 02.
- [open-threads.md](open-threads.md) — end-of-Book-One state of the live threads.
- [established-facts.md](established-facts.md) — facts no single chapter owns; names in use, blocked and available.

## DESIGN-TIME — read when designing a chapter, not at every open
- [planted-clues.md](planted-clues.md) — the clue ledger: what was planted, where, and what it is owed. `scripts/clues.sh <keyword>` answers what a target carries; **never read whole** — the script is its only reader, and the payoff column (a spoiler) stays behind `-p`, on request.

## ACCUMULATORS
- [chapter-records.md](chapter-records.md) — one canonical record per committed chapter of the CURRENT PART (summary + FACTS tail). Read at every open, skipping chapters read in full from `manuscript/`. **Per-Part roll:** when a Part closes, its records move to the parts file.
- [chapter-records-parts-1-3.md](chapter-records-parts-1-3.md) — Ch. 1–22. Spot-read on demand; continuity for these chapters is carried by the law core, the 03 sheets and the clue ledger.
- Spent design canon rolled out of 00 at s46: `../archive/author-canon-spent.md` — history, not cold-read.
- [protected-phrasings.md](protected-phrasings.md) — on-page coined phrasing; parsed by `scripts/check-echoes.sh`. **Not cold-read** — run the script on every new or revised chapter instead.

Per-book roll: at the book boundary the accumulators roll to `*-book-N.md`; the law core never moves. No word counts here — `wc -w` prints them.
