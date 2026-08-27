# Book One — an epic fantasy series in progress

This repository holds the manuscript and everything standing behind it: the world, the characters, the continuity law, the illustrated plates, and the protocol the drafting sessions run under.

> [!CAUTION]
> **`00-Author-Canon-SEALED.md` is the spoiler vault.** It is the unredacted future of the series — every hidden truth, every destination, the end of Book One and what lies past it. It is not a tease and it does not hold back. Do not open it unless you want the whole thing ruined.
>
> `04-Outline.md` also looks forward. **Everything else outside `01` and the manuscript assumes you have already read to the end of Book One.**

## Start here

- **The pitch** — [`01-Premise-and-Pitch.md`](01-Premise-and-Pitch.md): logline, POV doctrine, thematic core, the promise the book is making. Spoiler-safe.
- **The book** — [`manuscript/book-one/`](manuscript/book-one), beginning at [Ch. 1 — *The Stars That Fell*](manuscript/book-one/01-The-Stars-That-Fell.md). Book One is complete in draft; per-chapter word counts are the baselines in `05`.
- **The pictures** — [`08-Plates/`](08-Plates): plates and portraits, in chapter order. They spoil the scenes they illustrate.

## How the repository is organised

Every file has a contract, an admission test, and an eviction path — content that fails its test moves somewhere else. The contracts themselves live in [`CLAUDE.md`](CLAUDE.md); this is only the map.

| | |
|---|---|
| `00-Author-Canon-SEALED.md` | The vault. Every truth not yet on a page. **Spoilers.** |
| `01-Premise-and-Pitch.md` | The foundation — still true if the plot changed. |
| `02-World-Bible/` | The world, one topic per file. True regardless of who is on the page. |
| `03-Character-Bible/` | One sheet per character: Glance / Static / Dynamic / Forward. |
| `04-Outline.md` | The forward plan. Spent beats roll to the archive. |
| `05-Continuity-Log.md` | Live state, and the canonical word-count baselines. |
| `06-Style-Sheet.md` | How the prose is written — the rule, not the state. |
| `07-Story-Ledger/` | Do-not-contradict canon: timeline, standing rules, established facts, planted clues. |
| `08-Plates/` | Reader-facing illustrations. Self-contained; governed by its own README. |
| `archive/` | Session records, rolled text, probes. Append-only. |
| `manuscript/` | The chapters. |
| `scripts/` | The instruments — see [`TOOLS.md`](TOOLS.md). |

Two principles hold the whole thing together: **the files are the sole source of truth** — chat is disposable scaffolding, and `git log` is the history of what changed — and **one fact, one home**: if a script can compute it, it is not typed; if another file owns it, this one points rather than copies.

## Licence

All rights reserved. See [`LICENSE`](LICENSE) — the text of this novel is not open source, and the repository being public is not permission to reuse it.
