# Prompt System

Tool: ChatGPT image generation. **One conversation per block, with `canon-brief.md` pasted at the top of each** — the conversation is the prompt, and a block run in an earlier block's conversation inherits that picture's setting (`ch33/behind-me`, run 1 against run 2). Describe what you want; a negation earns its place only when something in the picture pulls toward the thing banned.

Two recipes. A **portrait** is generated unanchored — no reference attached — so the prompt carries the medium. A **scene or plate** is generated with reference images attached, so the references carry the medium, the faces and the apparent age, and the prompt carries everything else.

**§SYSTEM is the rules; §BLOCKS is the shared components a new prompt is assembled from, by hand** (author, s58). Nothing here is a finished prompt: every finished prompt is a file under `prompts/` or a `### SCENE-VERBATIM:` block on `scene-tests.md`, and where a rule needs a worked example it points at one. The evidence behind every rule is in `archive/` — `findings.md` before s47, `prompt-system-s66.md` and `readme-s66.md` for s47–s65 — and in each plate's run record under its CHOSEN entry in `prompts/plate-candidates/`.

---

# SYSTEM

## Choosing the moment

A plate is a moment, not a person, and THE PLATE FOLLOWS THE PAGE binds it (`README.md`): it depicts what its chapter has put in front of the reader, answers with framing where the page is silent, and says who is not in the frame.

- **The default plate is a chest-up with a face doing something** (s42, s45). A hand-and-object crop has to earn itself; a faceless candidate is priced, not disqualified (s43). **The set is short of action and of close range, and that is the thing to correct** (author, s65: *i feel like we have little action shots and closeups … those are really cool*) — an action plate is budgeted at several runs (§Limits), and a close-up is a portrait of a moment, in the chapter's own light and expression.
- **A hard moment is not passed over for fear of a refusal** (author, s60: *those are the best images, we can always do them, eventually*): write the block, run it, and reword and run again for as long as the author wants it (§Injury). **A refusal ends nothing by itself** (author, s68) — the author says when an attempt is over.
- **The pregnancy is framed out, never drawn** (author, s51: *probably should have avoided illustrations with Neris' body showing — it is very weird with the guidelines and pregnancy*). Neris is pregnant from Ch. 21 to the end of Book One, and a plate carries it in posture, cloth and crop — no clause naming the term, the carry or the shape, and nothing below her collar authored where the frame can hold it. `ch21/the-nine-things` predates the ruling and stands.
- **Aeliana's beauty is a page fact, handled with care:** it reaches the page as what a room does in her presence and as Kael's instruments failing, never as a narrator verdict (`03`), so a picture built to be about how beautiful she is would be saying a thing the book has not said. That her pictures are the author's favourites in the set (author, s53: *aeliana pics are the best*) is a taste note and not a programme — the two that earned it, `ch33/the-lamp` and `ch34/the-elbow`, are pictures of her doing a job with her hands.

**Silhouette separation is a production rule.** Two characters who threaten to converge are separated on provenance and bearing before the face is touched — tested at thumbnail size on Kael and Valeria, both thirteen, dark-haired, carrying two blades, and since used on Valeria and Elarine (bound vs loose, scholar vs uniform) and on Kael and Aurelian (village vs house, hacked vs groomed):

| | Kael | Valeria |
|---|---|---|
| build | hides its training | reads as function even at rest |
| stillness | invisible — trained not to move | **it warns** |
| hair | short, ordinary | well past the shoulders |
| blades | bundled on the back | one in each hand |
| cloth | undyed, light | dark |
| provenance | out of a shed, unsold | eleven generations of service |

## Portraits

A portrait file is STYLE · AGE · HAIR (where used) · SUBJECT, from §BLOCKS.

**Age.** The eye line is the age instrument: eyes **below** the vertical midpoint of the head is a child, **at** it an adolescent, **above** it an adult — a dial, not three stops (Kael at nine sits *just below*). Age words in the SUBJECT block alone are ignored. Two levers besides the eye line. For a grown face, name the quality wanted and the adjacent one that reads as decline, and forbid the decline by its markers — *weather, not age* (Vask); *lean, not wasted* (Severin); *fully grown, and nothing has been taken out of her* (Neris) — because one negation cannot hold a line against a stack of positives pointing the other way. And a stack of softness positives pulls an age **down**, about two years (`oss-14` read twelve off a rung that said fourteen): name the age once and let a softness clause or two go. **The rungs:** the adolescent rung is shared (Kael at fourteen, Valeria, Aeliana, and the plates — §BLOCKS); every other rung lives in the prompt that cut its reference — the child in `prompts/portraits/kael-4.md`, nine in `kael-9.md`, *the body ahead of the face* in `aurelian-14.md`, *small, nothing caught up yet* in `elarine-14.md` (it says *fifteen* with the eyes at the midpoint, `03` has her at ~13, and both plates anchored on it drifted to mid-teens; not re-cut), *weather, not age* in `vask.md`, *the age in the eyes* in `neris.md`, *worn to what mattered* in `severin.md`, the bespoke soft rung in `oss-14.md`.

**The eyes win on one axis each — check it against the hair first.** Saturation: Valeria's green, Aeliana's blue, Aurelian's amber (amber needs the skin around the eye kept cool and the cheeks quieter than it, or the warm face eats it). Lightest value: Kael's grey. Local contrast: Neris, Vask — two clauses, the hair demoted to fine ink strands and open washes with no hard-edged black in it, then the sharpest step from light to dark in the picture sited inside the eye at the edge of the iris (`prompts/portraits/neris.md`). Finish: Elarine — the only fully resolved thing in a loose picture. A dark eye cannot win on darkest value against dark hair unless the hair is demoted.

**Hair: name what it competes with, then push the other way.** Dark hair against a dark eye → demote it. Light hair on pale ground → define it, as ink strands with drawn edges that never dissolve into the paper (`prompts/portraits/severin.md`). A grey head: tell the brows not to match, or the tool harmonises them. A beard covers the mouth: move the expression to the eyes and brows. The HAIR line (§BLOCKS) goes in for loose or unkempt hair — Kael, Valeria, Aeliana, Vask, Neris, Severin — and stays out for a groomed or bound head, Aurelian and Elarine: it fights the SUBJECT block and wins.

**Ground is per character:** cool pale parchment for everyone but Aeliana, whose silver needs warm aged parchment to sit against. **Complexion encodes station:** Kael weathered → Valeria mid → Aurelian clear with sun on it → Elarine pale indoor → Aeliana pale untouched; the parents extend the scale off its top. The scale runs on weathering and value, never on speckle — the medium speckles every face, and it cannot be prompted away.

**Ban the shape, count the thing.** Several negations aimed at one feature remove the feature — *no freckles* did nothing, and five bans on white in the hair removed Vask's grey. One ban on the bad form plus a positive quantity of the good one: *one strand in six, scattered, never gathered* (`prompts/portraits/vask.md`). Attack the archetype the tool is reaching for (*not a wizard, not a sage*) as well as the affect. *Plain* and *not handsome* do not render; dirt, weather and a hacked crop do. Two edit passes at most — each softens the granulation and warms the palette.

**Half figure.** Where the build is part of the reference (Severin), the COMPOSITION override (§BLOCKS) replaces STYLE's Composition paragraph; the file still belongs in `images/portraits/`.

## The references — what each one is

**Every prompt is one file under `prompts/portraits/`, hand-authored and the source** (author, s58); `prompts/README.md` says which of them reproduces the picture it cut. Per reference: its rung, whether the HAIR line is in it, and the one thing to know before anchoring on it.

- **`kael-14`** · adolescent · HAIR. The anchor for every plate of him. His grey is spent for plates (author, s42): a plate may show the eyes at full strength; on the page it stays unspent, which is a prose rule.
- **`kael-4`** · child · HAIR. The one Kael whose face is not doing the coat; the block forbids the system's default by name, or a run inherits it.
- **`kael-9`** · nine · HAIR. Author-revised; *the ink carries the cloth* is the finish counterweight for worked cloth. Covers Ch. 3–7.
- **`valeria-14`** · adolescent · HAIR. Never a one-sword identity — twin blades, both hands full, is what she is; where a hand is occupied with something else, a plate may leave the second blade out of frame or undrawn (author, s51).
- **`aeliana-15`** · adolescent · HAIR. Carries a pauldron the block forbids; not regenerated.
- **`aurelian-14`** · own rung · no HAIR. *Riding and hunting* is a rendering steer, not canon. Cut with no insignia, badge, house colour or chain, the cloth carrying the station — a fact about the picture; `03` gives him none either way.
- **`elarine-14`** · own rung · no HAIR. The eyes won on finish, not on darkest value against her own hair — if re-cut, demote the hair. Her binding is her silhouette (*scholar* where Valeria reads *uniform*); let loose, it returned Valeria's.
- **`oss-14`** · own rung · no HAIR. Cut at s64 (author: *we should actually choose a design for oss instead of having him be just a faceless thing*); the colouring the block proposed is now `03/oss.md`'s (author, s64). The cloth is the second subject — new, pressed, dyed a colour that had to be paid for. Reads about twelve off a rung that said fourteen (§Portraits), and that suits him.
- **`vask`** · own rung · HAIR. No grey, and younger than `03`'s *used tools*; ruled acceptable (s34, s43). The grey instruction has failed twice with the cause unsettled — not a third time.
- **`neris`** · own rung · HAIR. Early thirties; ruled good (s44). Her hands are where the book keeps her: any full figure or scene puts them in frame and occupied.
- **`neris-marked`** · own rung · HAIR. `neris.md` plus one paragraph for the three quartz-white marks, so the two read as one casting; valid from Ch. 36, `neris` before it. About a decade older, and wanted (author, s60: *i like it reading a bit older. she has taken a big toll*). Anything anchored here inherits loud white — the marks took the sharpest light-to-dark step — and they came back evenly spaced where the page has two together and the third apart: say so.
- **`severin`** · own rung · HAIR · half figure. Author-revised: the build in the SUBJECT, the brows told not to match, the light hair defined against the pale ground, the expression in the eyes because the beard has the mouth.

## Full figures

Anchored to the character's portrait — the one anchored portrait case, because the point is to extend an existing face. The file is the `Image` line, then BASE, SUBJECT and the closing line (§BLOCKS); **one file each under `prompts/full-figures/`, hand-authored and the source** (author, s58).

- **`kael-14-full`** — village register. Carries no weapons; page canon has two short blades across his back in a cloth wrap — write the wrap into a scene by hand when the moment carries it. Its *plain dark clothing, well-made and well-maintained, chosen to go unnoticed* disagrees with `03`: he is not dressed to conceal, and a plate dresses him in whatever his chapter has him in.
- **`valeria-14-full`** — the matched pair is load-bearing; the collar insignia is canon-by-precedent.
- **`aeliana-15-full`** — hair loose by default; a Ch. 22 plate puts it up.

## Writing the block

**Every plate anchors on the fourteen-year-old references** — `kael-14`, `elarine-14`, `valeria-14`, `aurelian-14`, `aeliana-15` — for any chapter (s44): one consistent face across the book over age-accuracy in any single picture, and the age is written into the block (§Age in a plate) or the picture will be fourteen. `kael-4` and `kael-9` are in the library and not the default.

**References attached:** the full-figure sheet where one exists and the body is in frame — it carries build and costume, where a portrait carries only the face and everything below its collar is then authored in the prompt and will not repeat in the next picture. A close crop attaches the portrait. A plate may attach both of one person; the `Image N:` lines name the files.

**The reference carries** the face, bone, eye and hair colour, skin, apparent age, the medium — and the expression: in a close crop the reference's mood beats the prompt, so move the eyes onto an object or change the pose before writing an override, and if that fails cut a second reference. **The prompt carries** posture, each hand, everything below the collar, the framing, the light where it is not soft side daylight, the hues on the objects that have them, and all clothing when more than one figure is present — costume bleeds between dark garments; identity does not.

**The scene style line** (§BLOCKS) goes once under the `Image` lines — *image* for one reference, *images* for more. A plate with no reference gets STYLE's Medium paragraph in its place. The check: `grep -c '^Same medium and style' prompts/plates/*.md` — every count 1, and 0 only where no reference is attached.

**The plate template** (§BLOCKS) is the scene-test register (author, s47: *my favourite compositions, colouring, beauty are the images in scene tests*) — one implied wall, soft daylight from one side, faces near and engaged with each other, colour named on the objects that have it. The register starts at s47: the folder before it is history rather than precedent, and an instrument is argued from a post-register run, never from a pre-register failure (author, s51). Start at the template and add an instrument only when this picture needs it. The specimens: `scene-tests.md` §`talk-kael-valeria` for two figures and §`quartet-conversation` for four; `prompts/plates/ch33-behind-me.md` for a close-up.

## Instruments — one when the picture needs it, none by habit

**The frame.** Named as one of the tool's five ratios, first in the Composition line — **1:1 · 3:4 · 9:16 · 4:3 · 16:9** (author, s60; the author's interface is Portuguese and calls them *quadrado · retrato · story · paisagem · ecrã panorâmico*). Not a shape in prose — *tall upright frame, taller than it is wide* cannot change a pixel the ratio has already set — and not the bare words *portrait* or *landscape*, which name other things in this folder. **3:4 is the default** (author, s63: *those are not so big on a page … 3:4 or 9:16 is more page filling*): `scripts/build-docx.py` fits every plate width-first inside its cap on a 6×9 trim, so 3:4 fills the page at 4.6 × 6.1in against a 4.6 × 7.5in text block, 1:1 gives 4.6 × 4.6, 4:3 gives 4.6 × 3.5, 16:9 a third of the block, and 9:16 meets the height cap first and comes back narrower than the text column. A wide frame is spent where the picture is actually wide (author: *sometimes its fine*), never by habit.

**The cut.** First words of the Composition line, plainest term, stop (author, s65: *can't you just say "chest up" or something*): *chest-up, one figure* (`prompts/plates/ch23-the-horizon.md`, the tightest crop in the folder); *A close-up of her face. Head and shoulders only, the head large in the frame* (`ch33-behind-me.md`, first run). The long form — camera, placement, then *the bottom edge crosses X so that no A, no B and no C are in the frame* — came back wider every time: what is buried in a long composition paragraph, the tool decides for itself. A body in movement widens past any landmark — a stride needs a floor — and the widening has been the better picture each time; trust the tool's read of how much body a movement needs. A frame held closed on a moving body has not yet been bought by any wording. A cropped figure needs a floor, or it hangs on bare paper: the Setting clause in `ch12-you-have-two-years.md` (*both figures grounded on the same floor plane*).

**The hands' own view.** The camera brought down the length of the subject's own forearms, so the reader is inside the body instead of in front of it. `prompts/plates/ch40-the-holding.md` asked for a side-on close study of two hands and a rope and the run answered with this, and it was adopted for it: a pair of hands at work reads as the reader's own hands. Ask for it plainly — the camera behind the wrists, looking down the arms at what they are doing. It costs the face outright, so it is only for a picture whose subject is the work.

**Hands.** One line per hand, and the absences — *three blades total* failed twice. The form that held is WHAT IS IN EACH HAND in `scene-tests.md` §`fight-kael-valeria`: one line per hand naming what it holds *and nothing else*, then the count (*four hands, three blades*), the empty scabbards, and no other blade anywhere in the frame. A limb that carries two instructions is one chain, in order — *knife, hand, wrist, grip — one continuous limb.* A size contrast holds only for the pair it is written beside; state it again wherever it must hold. Hands that are deliberately out of frame are said to be.

**Scale.** A ratio to something in the frame, never an adjective — *very small* and *a toddler, not a boy of seven* both failed; the SCALE paragraph in `prompts/plates/ch01-vask-kael-goat.md` held (the child's head to the man's hip, the head a fifth of his height, the goat's shoulder at his chest). The two terms must sit where the frame can compare them.

**Age in a plate.** The reference carries apparent age and the fourteen-year-old anchor is the lever; no ratio has pulled an age down in a face-filling crop. Where a face has drifted older — the adolescents do, on nearly every plate — the rung goes in with the number in front, *Age: thirteen. The eyes at the vertical midpoint of the head, the jaw softly defined and not sharp* (`prompts/plates/ch35-the-spotter.md`, which it brought back to fourteen — author). It is not free beside a hard subject: four minor-markers in one paragraph next to iron on a boy's wrists were refused before any image was made (`ch39`), so beside restraint or harm let the reference carry the age.

**Nouns.** A concrete noun arrives with its default, and the default beats every adjective hung on it — *dagger* returned a longsword, *coat* a frock coat, *candle* a wick flame, *standing stone* a menhir — and *the coat* is never designed at all: it is the book's metaphor for Kael's concealment, not a garment. For anything other than the default, describe the construction — what it is made of, how it closes, how long it falls — with the defining feature first and measured, then kill the default by name. Banning a noun's features leaves nothing: describe what is there. The test: could a costumier from three centuries all draw it from the words?

**The winner and the rival.** Where a small thing must win the picture, hold the rival at quiet middle values with no hard edges, then site the sharpest step from light to dark on the winner — edge and finish, both clauses. It needs a rival to demote and a dark for it to recede into; in flat daylight the instrument is the crop, and below a hand's size in frame nothing carries finish, so again the crop. Read the framing, pose and costume back and check the tell is actually visible. The rival may be the face, by name, with the winner sized by ratio — `prompts/plates/ch28-the-hand-back.md` (the open hand wider in the frame than his head; the face and the rest of him at quiet middle values with no hard-edged dark; the sharpest step at the edge of the red on the hand). The hardest form gives the winner the finish alone and forbids the rival the channel outright — `ch33-standing-on-his-feet.md` (*her face carries the only finished drawing in the picture*; everything else *no hard edge anywhere in them*), which returned a faceless man who is the largest mass in the frame and still loses it. Both are the author's blocks.

**Light.** Soft side daylight is the default and needs no clause. A named source: say where it is, that it is the only one, what it leaves dark, and where the warmth lands. A warm source lights a face only when it is close — a candle on the bench does, a town at the foot of a mountain does not; where the source is far, the figure is lit by ambient sky and the source is the one warm thing. A low or high camera is written on two channels — the picture-maker's own words, *low-angle view, the camera at the height of his knee, looking up*, and the surfaces it exposes, *the underside of the jaw is visible; the horizon sits level with his knees*; the exposure clause alone carried a kneeling subject and not a standing one. Camera vocabulary is not banned (author, s59). For real depth, say where the viewer is first, stack the frame bottom to top, and pin it with a ratio.

**Colour.** Name the hues on the objects that have them and ban nothing (author, s42, s45). The portrait Colour paragraph's *warmth belongs to the skin alone* does not reach a plate.

**Absence.** Ban what something in the picture pulls toward — a herd behind a goat, a second blade near a swordsman, a face where the framing hid one, a watcher in a solitary moment — and nothing else. Naming a thing to ban it puts the word in front of the filter: *no blood on the bound child* was refused.

**Gaze and expression.** Say where each pair of eyes goes. Never tell a face to do nothing — *his face is doing nothing at all* renders as vacancy, and vacancy is not stillness (author, s48: *Kael is kind of expressionless*): a still face gets one working part named, as a state the picture can hold and not an action the face performs. *Level* and *flat* are directions, not temperaments — each has put a gaze on the viewer that the block sent elsewhere. Point at the mouth (*mouth open mid-word*), not the abstraction; state a contradiction as one — *the body is deferential and the attention is not*; *not smiling — just not braced* got warmth without breaking character.

**Two stillnesses, two recipes.** Calm: *the face level, the eyes steady on the man, the jaw set but easy.* Cold: anatomy doing work and not moving — the chin down so the eyes come out from under the brows, the eyes wide and fixed on one named point, the brows low and straight, the jaw set with the muscle standing at the corner, the mouth closed and pressed thin, the contradiction stated once (*everything in the face is set hard and none of it is moving*), and the face's physical history (a screamed-out throat leaves red rims and a wet face) — `prompts/plates/ch33-quiet-and-cold.md`. The calm recipe on a cold moment returned a mild boy looking softly over his shoulder (its run 1; author: *his face is way too chill*), and negations made it worse — *nothing in the face is straining and nothing in it has gone slack* clears both directions and leaves the reference's own neutral face, which in a close crop wins anyway.

**Eye contact** is named as the subject, on its own, in caps — *THE TWO ARE LOOKING DIRECTLY AT EACH OTHER … This eye contact is the subject of the image* (`scene-tests.md` §`kneel-kael-aeliana`; `prompts/plates/ch36-the-boat-words.md`). It lands on still bodies and not on working ones: eyes meet when neither body has a competing task and go to the task when one has. Where a moment needs both, give the working body a reason to have already finished, or drop the task.

**Ownership.** With two dark garments in frame, state it, and the absences per character as well as the possessions — *the X belongs only to A, the Y only to B, and C wears neither* (`prompts/plates/ch24-she-saw-him-seeing-it.md`).

**Four figures.** Two loose pairs at different depths, all turned in; a single speaker the other three attend to, or the pairs hold two conversations. Two people talking at once renders and stops the group reading as a portrait.

**Lettering.** One short word, capitals, named exactly, declared the only thing written on the surface, sized against the frame. Not a page.

**Injury.** Name the cut and where it is, never the tissue. Torn clothing renders where absent clothing does not; healed scars, bruising, grime and soot render without difficulty. **Harm is not the barrier; a refusal is usually a fault in the block** — reword, changing as little as possible, and run it again. **There is no cap on the attempts and the author calls when one is over** (author, s68: *injury rule should be rerun as long as i want to*); every reword goes back through the instrument below. What passes the filter is also what renders: *slash* for *open cut*, *red* for *blood*, *lies level across his eyes* for *bound*, *hands curled loosely near his cheek in sleep* for *both fists shut and drawn up* — a shape, a colour, a placement or a state can be drawn where a category (cut, blood, restraint) cannot. Prefer them even where nothing is refused. What the guard reads is restraint apparatus filling the frame as the declared subject of a picture that also contains a child: the same iron and cloth passed at scene distance with the subject a line of sight, and were refused twice as a close crop opening *THE IRON IS THE SUBJECT* (`ch39`). Two routes out — scene distance, so the apparatus is incidental; or an object study, with no reference, no age and no face. Two specimens:

- **Marks without flow — `prompts/plates/ch26-aftermath.md`** (author, s51: *the perfect example for a battered cut bloody character*). The garment destroyed, not absent; every mark by its site, never by tissue; one closing negation and not a stack (*Nothing bleeding*), which is what buys the paragraph; the body as build and the face as anatomy, not suffering.
- **Blood that shows — `prompts/plates/ch23-the-horizon.md`** (author, s51: *also managed to get blood of a cut very well with its prompt*). The site stated flat, in caps, before anything about how it looks; the cut as a shape with a path and an edge, not a wound; the blood as a route and an appearance (*red … dark and wet*), never a substance; the absence of a dressing said out loud, which is what reads fresh; the cloth corroborating the site; and the face forbidden the injury, so the wound does not hijack the expression.

Dried red beside a rendered burn is not a separate channel to this tool; it comes back as more burn (`ch35-one-knee-at-the-mast.md`).

**Damage.** Never paid for out of the features that separate a character: *much mended* returned rags on a boy who is poor and not destitute; a Sedrane's *very good quality* cloth written *torn through* returned a beggar, and her binding let loose in the same breath returned Valeria's silhouette. Name what survives first — the quality, the binding, the build — then the damage as an exception to it, and ban the archetype the frame now pulls toward (*not ragged, not tattered, not a beggar's clothing*) rather than the tears. **The body is the same rule** (author, s58): damage as pure subtraction takes the person with it — *gone thin* put frailty on an old man `03` calls **not frail**. Put the survival in the same breath and last, where it lands — `prompts/plates/ch37-the-old-man-on-his-knees.md` (a month at sea all on the surface, the frame under it sound). §Portraits' *weather, not age*, one layer in.

**Write the state, not the action** (author, s53). A still picture cannot hold a thing happening over seconds; name the state it leaves and let the eye supply the verb. *The arm is not quite steady* cannot be drawn; a lamp tilted off level with the flame leaning can (`prompts/plates/ch33-the-lamp.md`). Trees splitting apart cannot; trunks already standing as ragged upright shells with the strips off them mid-flight can (`ch34-the-bowl.md`). Faces, objects and events alike.

**A face with no reference.** A character with no portrait is not blocked from a plate, only from a resolved face: against the light, or out of frame, the moment can be made. *No eyes are visible anywhere in the picture* has carried a man front-on, filling a lit doorway at the exact place the eye goes, with no features drawn on him (`prompts/plates/ch39-the-door-at-dusk.md`), and a faceless man who is the largest mass in the frame (`ch33-standing-on-his-feet.md`). *Do not turn the head toward the viewer* is a second ban on the same channel, earned only where the face is deliberately hidden, and unproven.

## Before the run

Each fact once, in the place it belongs. Every clause must be able to change a pixel; a note to a colleague goes on the candidate list, not in the block. A block long enough to restate itself is long enough to contradict itself, and the renderer splits the difference. Length is not the metric; ritual is (author, s48: *cutting for cutting's sake is not the goal … if it turns out a bit bigger sometimes, well that's that*) — a long block earns it clause by clause and a short one is not thereby right. **Ask of every clause what it forbids, then find where else that is already forbidden.** The channels that keep bloating — each ONE clause, once, in one place:

- **Only one person in the frame.** Composition already says *one boy alone*; a ban paragraph and a preserve line saying it again are the same channel three times.
- **The gaze.** *He is not looking at the viewer* is earned where a reference pulls the eye there; *and his head is not turned toward the viewer* is a second ban on the same channel.
- **A ban stack.** *no glow, no haze, no cloud, nothing sprays, nothing arcs* is one channel five times, and each name goes in front of the filter.
- **Build, under a full figure.** The reference carries build and costume; *lean, hard, wiry* cannot change a pixel it has not already set.
- **The light, twice.** If Setting places the sources, the finish paragraph must not place them again.
- **A meta-preamble.** *THIS READS IN THIS ORDER*, *THE SUBJECT OF THE IMAGE IS …*, *this is one continuous chain* — notes to a colleague. The ordered clauses go in the block.
- **Stillness.** *Nothing is happening* does it. *He is not braced, he is not moving anywhere, nothing about him is in motion* is the same fact three more times.
- **What the reference already carries.** An eye colour, an age, a build, under a reference that has it.

The author's pass on `ch33/standing-on-his-feet` (s65: *less bloated prompt*) took a fifth out of a block written under this list, and every removal was on it: the pass is not done by having read this paragraph.

## Limits

- **A warm source in the frame costs the palette and the bare paper, and no wording has moved it.** Every lamp-lit or fire-lit run comes back dense and warm, the tooth a hard reticulated texture and almost no bare paper, where daylight holds the register every time; bare paper reserved by name and the ink protected from softening changed nothing (five for five). The ink does hold. A design choice, not a prompting one: daylight and the register, or the night and the dense warm one.
- **Run-to-run variance is real:** rerun before changing anything.
- **Finish is not yet consistent across the set** and the author has not settled it. The controlled pair is `ch08-the-one-who-did-not-laugh` / `-cold`; new blocks reserve bare paper by name and protect the ink from a general softening, and leave hue per picture (s43).
- **A substance lying in the grooves of metal, distinct from the metal, does not render** — black in the folds of an iron band came back as dark metal on a dark ground, and absent again on bright silver with the black named as the only dark thing on it. Below what the medium separates; no demotion fixes it.
- **Action shots are amazing, but sometimes complicated** (author, s65). `scene-tests.md` §`fight-kael-valeria` — two bodies inside each other's reach with three blades crossing — took six attempts and is one of the folder's best pictures; `ch32/out-of-the-door` and `ch33/standing-on-his-feet` landed first run. The recipe: the count per hand, the blade sized against a body part, the second weapon given a contact point instead of a trajectory, both figures grounded on the same floor plane, dry-brush drag and flicked spatter added to the style line. At close range two bodies as one mass read as an embrace at thumbnail size — site something hard where the eye lands first.

---

# BLOCKS

The components used many times over. Copy one in; once written, the prompt file is the source. Each is the text that cut the adopted pictures, except where a trim is noted at the block — **a trimmed block has not yet cut a picture, and the next run on it is the test**; the as-run text is in any file that used it.

## STYLE — portrait

Every portrait, first. Trimmed at s66: *Large areas left as bare paper* restated *generous bare unpainted paper*, and *The ink linework remains the strongest element* restated *a dominant ink drawing* — one channel twice, each. The twelve references were cut with both in (any `prompts/portraits/` file).

```
Medium: loose expressive watercolour and ink on rough cold-press
paper, visible paper tooth and pigment granulation, scratchy fine
ink linework, wash blooms with hard irregular edges, generous bare
unpainted paper.

Colour: restrained transparent washes laid over a dominant ink
drawing. Muted, desaturated, earthy. Colour tints rather than
fills. Warm living skin, soft ochre in the mid-tones — the warmth
belongs to the skin alone, not the paper or the cloth.

Eyes: the focal point of the picture, framed by dark lashes and
dark brows.

Composition: three-quarter view with the head turned away from the
viewer, gaze returning to the viewer. Head and shoulders, with
visible shoulder and collar anchoring the lower frame.

Lighting: soft directional light, gentle shadow beneath the
cheekbone and along the jaw, most of the face held in light values.
```

## AGE — adolescent

Kael at fourteen, Valeria, Aeliana; in a plate, with the number in front (§Age in a plate). Both negations are earned: the drift on every adolescent face is older than written.

```
Age: eyes set at the vertical midpoint of the head, jaw softly
defined but not sharp, some remaining fullness in the cheeks.
Adolescent, not grown.
```

## HAIR

```
Hair: irregular clumps and locks of varying thickness, uneven
edges, naturally settled rather than combed.
```

## COMPOSITION — half figure

Replaces STYLE's Composition paragraph (§Portraits, half figure). Trimmed at s66 to the plain crop (§The cut) and one ground clause; the as-run text is `prompts/portraits/severin.md`.

```
Composition: half figure, waist up, both forearms in frame.
Three-quarter view with the body angled away from the viewer, the
head turned back so the face is visible, gaze returning to the
viewer. Empty parchment ground with nothing behind the figure.
```

## SUBJECT — template

```
SUBJECT — [cool pale / warm aged] parchment ground.
[Age and one-line identity.]
Eyes [colour] — [how they win: most saturated point, OR lightest value,
OR darkest value].
[Hair colour, length, any styling.]
[Skin condition.]
[Facial structure notes.]
[Expression.]
[Garment, with its colours.]
```

## BASE — full figure

STYLE's Medium and Colour paragraphs, then the three below. Trimmed at s66: the ground clause was *no setting, no background elements, no cast shadow* — one channel three times, and `kael-9` ran with a village behind him against it; the as-run text is any `prompts/full-figures/` file.

```
Composition: full figure, standing, head to feet, feet included and
fully in frame. Three-quarter view, body angled away from the
viewer, head turned back so the face is visible. Empty parchment
ground with nothing behind the figure and no cast shadow.

Lighting: soft directional light from one side, gentle shadow along
the shaded side of the figure and beneath the chin.

Hair: irregular clumps and locks of varying thickness, uneven
edges, naturally settled rather than combed.
```

## Closing line — full figure

```
Preserve his/her face, hair, colouring and apparent age exactly as
shown in the reference image. Extend to a full standing figure; the
reference shows head and shoulders only.
```

## Scene style line

Once, under the `Image` lines; *image* for one reference.

```
Same medium and style as the reference images: loose watercolour and
ink on rough cold-press paper, scratchy ink linework, wash blooms,
bare paper in the lights.
```

## Plate template

```
Image 1: <file>.png — <full-figure|portrait> reference of <who>.

Same medium and style as the reference image: loose watercolour and
ink on rough cold-press paper, scratchy ink linework, wash blooms,
bare paper in the lights.

Composition: 3:4. <The crop, in the plainest term that names it —
chest-up, one figure | a close-up of her face, head and shoulders
only, the head large in the frame>. <Who is where, facing which way,
at what depth.>

Setting: <place> as loose wash suggestion — a wall implied behind
them, the background falling into shadow. Soft daylight from one side.

<Age: <N>. The eyes at the vertical midpoint of the head, the jaw
softly defined and not sharp. — only where this face has drifted.>

<The moment, in one paragraph — the state it leaves, not the action.>

<NAME> <pose>. <Expression, pointed at the mouth and the brows.>
<Costume by construction, hues named — deep umber and warm charcoal,
ink-black and dark olive.>

<Where each pair of eyes goes. If they meet, the eye contact is the
subject of the image.>

<Lighting: — only where it is not soft side daylight: where the
source is, that it is the only one, what it leaves dark.>

Preserve <his|her|each> face, hair, colouring and apparent age
exactly as shown in the reference image. <Two figures: Do not blend
their features. Do not mix their clothing: the X belongs only to A,
the Y only to B.>
```
