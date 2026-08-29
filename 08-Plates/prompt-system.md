# Prompt System

Tool: ChatGPT image generation. **One conversation per block, with `canon-brief.md` pasted at the top of each** — the conversation is the prompt, and a block run in an earlier block's conversation inherits that picture's setting (`ch33/behind-me`, run 1 against run 2). Describe what you want; a negation earns its place only when something in the picture pulls toward the thing banned.

Two recipes. A **portrait** is generated unanchored — no reference attached — so the prompt carries the medium. A **scene or plate** is generated with reference images attached, so the references carry the medium, the faces and the apparent age, and the prompt carries everything else.

**Nothing here is a finished prompt.** The fenced blocks are the SHARED COMPONENTS, and a prompt is assembled from them by hand into its own file under `prompts/` (author, s58). The evidence behind every rule is in `archive/`: `findings.md` for the folder before s47, `prompt-system-s66.md` and `readme-s66.md` for s47–s65, and each plate's run record under its CHOSEN entry in `prompts/plate-candidates/`.

---

# Portraits — STYLE · AGE · HAIR · SUBJECT

## STYLE block — portrait

Verbatim, every portrait.

```
Medium: loose expressive watercolour and ink on rough cold-press
paper, visible paper tooth and pigment granulation, scratchy fine
ink linework, wash blooms with hard irregular edges, generous bare
unpainted paper.

Colour: restrained transparent washes laid over a dominant ink
drawing. Muted, desaturated, earthy. The ink linework remains the
strongest element; colour tints rather than fills. Large areas left
as bare paper. Warm living skin, soft ochre in the mid-tones — the
warmth belongs to the skin alone, not the paper or the cloth.

Eyes: the focal point of the picture, framed by dark lashes and
dark brows.

Composition: three-quarter view with the head turned away from the
viewer, gaze returning to the viewer. Head and shoulders, with
visible shoulder and collar anchoring the lower frame.

Lighting: soft directional light, gentle shadow beneath the
cheekbone and along the jaw, most of the face held in light values.
```

## AGE — the rungs

The eye line is the age instrument: eyes **below** the vertical midpoint of the head is a child, **at** it an adolescent, **above** it an adult — a dial, not three stops (Kael at nine sits *just below*). Age words in the SUBJECT block alone are ignored. Two levers besides the eye line. For a grown face, name the quality wanted and the adjacent one that reads as decline, and forbid the decline by its markers — *weather, not age* (Vask); *lean, not wasted* (Severin); *fully grown, and nothing has been taken out of her* (Neris) — because one negation cannot hold a line against a stack of positives pointing the other way. And a stack of softness positives pulls an age **down**, about two years (`oss-14` read twelve off a rung that said fourteen): name the age once and let a softness clause or two go.

#### Child — Kael at four

```
Age: a small child of four. THE HEAD IS A CHILD'S — the cranium
large and round and wide across the top, the face small and set
low within it, and the eyes BELOW the vertical midpoint of the
head, not at it and not above it. Round full cheeks with real fat
in them, a small soft nose, a small round chin, no jaw definition
anywhere at all, a short soft neck. The eyes large relative to the
face; the brows fine and faint. Everything soft, nothing in the
face set yet. A very young child — not a small adolescent, not a
miniature adult, and not one year older than four.
```

#### Nine — Kael at nine

```
Age: a boy of nine. The head is still a child's — the cranium large
and round across the top, the face set low within it — and the eyes
sit JUST BELOW the vertical midpoint of the head: closer to that
midpoint than a small child's are, and still clearly below it. The
face has begun to come out of the cranium: a little definition
arriving at the chin, the cheeks still full but no longer soft with
infant fat, the nose still small, the neck still short. Brows fine
but readable. NINE — not a small child of four or five, not an
adolescent, and none of the jaw a teenager has.
```

#### Adolescent — Kael at fourteen, Valeria, Aeliana

```
Age: eyes set at the vertical midpoint of the head, jaw softly
defined but not sharp, some remaining fullness in the cheeks.
Adolescent, not grown.
```

#### Aurelian — the body ahead of the face

```
Age: eyes set at the vertical midpoint of the head. Fifteen — the
body is ahead of the face. Jaw softly defined but not sharp, cheeks
still full and unhollowed beneath the cheekbone, chin small, skin
smooth with no hardness anywhere in it. Adolescent face on a frame
that has outgrown it.
```

#### Elarine — small, nothing caught up yet

```
Age: eyes set at the vertical midpoint of the head. Fifteen, and
small for it. Jaw softly defined but not sharp, cheeks still full
and unhollowed beneath the cheekbone, chin small, neck slender,
skin smooth with no hardness anywhere in it. A small unfinished
frame; nothing about her has caught up with her yet except the
eyes.
```

This block says *fifteen* and sets the eyes at the midpoint; the file it cut is named `-14` and `03` has her at ~13. Both plates anchored on it drifted to mid-teens. Not re-cut.

#### Vask — grown and worn down

```
Age: a man of about thirty-five, and he must read thirty-five —
not forty-five and not fifty. Eyes set slightly above the vertical
midpoint of the head. The jaw fully set and hard at the edge, no
fullness anywhere in the cheek, a shallow hollow beneath the
cheekbone. Lines at the outer corners of the eyes and faintly from
the nose to the mouth, and nowhere else: no scoring across the
forehead, no sunken temple, no loosening or sagging anywhere in
the skin. THE WEAR ON HIM IS WEATHER, NOT AGE — sun and wind and
salt worked hard into the surface of a face whose structure
underneath is young and hard. Neck thick, the tendons standing.
Nothing soft left anywhere in him. Heavily weathered, and nothing
has been taken out of him — the body sound, the strength all still
there. Not elderly, not frail, not diminished, not ill. And
nothing on display: a man who has worked outdoors for twenty
years, and no more than that.
```

#### Neris — grown, the age in the eyes

```
Age: a woman of about thirty-five. Eyes set slightly above the
vertical midpoint of the head. The jaw fully set and clean at the
edge, the cheek flat and unhollowed, the skin smooth and even over
good bone, the neck smooth and the throat unmarked. No lines
anywhere in the face except the faintest at the outer corners of
the eyes. Fully grown, and nothing has been taken out of her face
yet. Not girlish, not unformed — a fully adult face that has simply
not been worn. The age is in the eyes and nowhere else at all.
```

#### Severin — old, worn to what mattered

```
Age: an old man of about sixty-five. Eyes set well above the
vertical midpoint of the head. Deep lines cut from the nose to the
mouth, across the forehead and at the outer corners of the eyes;
the skin coarse, dry and weathered, drawn tight over the bone. The
face pared down to its structure, brow and cheekbone hard and
clearly readable. NO hollow cheeks, NO sunken temples, NO thin or
scrawny neck, NO slackness or sagging anywhere, NO frailty of any
kind. WORN TO WHAT MATTERED: everything inessential gone and every
essential thing still there. Not frail, not gaunt, not sick, not
wispy. An old man who is plainly still dangerous and completely at
ease about it.
```

## HAIR line

```
Hair: irregular clumps and locks of varying thickness, uneven
edges, naturally settled rather than combed.
```

Include it for loose or unkempt hair (Kael, Valeria, Aeliana, Vask, Neris, Severin). Omit it for a groomed or bound head (Aurelian, Elarine) — it fights the SUBJECT block and wins.

## COMPOSITION override — half figure

Replaces the STYLE block's Composition paragraph when the character's build is part of the reference (Severin). The file still belongs in `images/portraits/`.

```
Composition: half figure, cut at roughly the waist, the shoulders
and chest and both forearms in frame. Three-quarter view with the
body angled away from the viewer, the head turned back so the face
is visible, gaze returning to the viewer. Empty parchment ground,
no setting, no background elements.
```

## SUBJECT template

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

**The eyes win on one axis each — check it against the hair first.** Saturation: Valeria's green, Aeliana's blue, Aurelian's amber (amber needs the skin around the eye kept cool and the cheeks quieter than it, or the warm face eats it). Lightest value: Kael's grey. Local contrast: Neris, Vask — two clauses: demote the hair to *fine ink strands and open transparent washes with bare paper left through the mass, no hard-edged black anywhere in it*, then *the sharpest step from light to dark in the whole picture happens inside the eye itself, at the edge of the iris*. Finish: Elarine — the only fully resolved thing in a loose picture. A dark eye cannot win on darkest value against dark hair unless the hair is demoted.

**Hair: name what it competes with, then push the other way.** Dark hair against a dark eye → demote it. Light hair on pale ground → define it (*defined ink strands and clear drawn edges against the pale ground, never dissolving into the paper*). A grey head: tell the brows not to match, or the tool harmonises them. A beard covers the mouth: move the expression to the eyes and brows.

**Ground is per character:** cool pale parchment for everyone but Aeliana, whose silver needs warm aged parchment to sit against. **Complexion encodes station:** Kael weathered → Valeria mid → Aurelian clear with sun on it → Elarine pale indoor → Aeliana pale untouched; the parents extend the scale off its top. The scale runs on weathering and value, never on speckle — the medium speckles every face, and it cannot be prompted away.

**Ban the shape, count the thing.** Several negations aimed at one feature remove the feature — *no freckles* did nothing, and five bans on white in the hair removed Vask's grey. One ban on the bad form plus a positive quantity of the good one: *one strand in six, scattered, never gathered*. Attack the archetype the tool is reaching for (*not a wizard, not a sage*) as well as the affect. *Plain* and *not handsome* do not render; dirt, weather and a hacked crop do. Two edit passes at most — each softens the granulation and warms the palette.

---

# The references — what each one is

**Every prompt is one file under `prompts/portraits/`, hand-authored and the source** (author, s58); `prompts/README.md` says which of them reproduces the picture it cut. Per reference: its rung, whether the HAIR line is in it, and the one thing to know before anchoring on it.

- **`kael-14`** · adolescent · HAIR. The anchor for every plate of him.
- **`kael-4`** · child · HAIR. The one Kael whose face is not doing the coat; the block forbids the system's default by name, or a run inherits it.
- **`kael-9`** · nine · HAIR. Author-revised; *the ink carries the cloth* is the finish counterweight for worked cloth. Covers Ch. 3–7.
- **`valeria-14`** · adolescent · HAIR.
- **`aeliana-15`** · adolescent · HAIR. Carries a pauldron the block forbids; not regenerated.
- **`aurelian-14`** · Aurelian · no HAIR. *Riding and hunting* is a rendering steer, not canon. Cut with no insignia, badge, house colour or chain, the cloth carrying the station — a fact about the picture; `03` gives him none either way.
- **`elarine-14`** · Elarine · no HAIR. The eyes won on finish, not on darkest value against her own hair — if re-cut, demote the hair. Her binding is her silhouette (*scholar* where Valeria reads *uniform*); let loose, it returned Valeria's.
- **`oss-14`** · a bespoke soft rung · no HAIR. Cut at s64 (author: *we should actually choose a design for oss instead of having him be just a faceless thing*); the colouring the block proposed is now `03/oss.md`'s (author, s64). The cloth is the second subject — new, pressed, dyed a colour that had to be paid for. Reads about twelve off a rung that said fourteen (§AGE), and that suits him.
- **`vask`** · Vask · HAIR. No grey, and younger than `03`'s *used tools*; ruled acceptable (s34, s43). The grey instruction has failed twice with the cause unsettled — not a third time.
- **`neris`** · Neris · HAIR. Early thirties; ruled good (s44). Her hands are where the book keeps her: any full figure or scene puts them in frame and occupied.
- **`neris-marked`** · Neris · HAIR. `neris.md` plus one paragraph for the three quartz-white marks, so the two read as one casting; valid from Ch. 36, `neris` before it. About a decade older, and wanted (author, s60). Anything anchored here inherits loud white — the marks took the sharpest light-to-dark step — and they came back evenly spaced where the page has two together and the third apart: say so.
- **`severin`** · Severin · HAIR · half figure. Author-revised: the build in the SUBJECT, the brows told not to match, the light hair defined against the pale ground, the expression in the eyes because the beard has the mouth.

---

# Full figures — BASE · SUBJECT

Anchored to the character's portrait — the one anchored portrait case, because the point is to extend an existing face. The file opens with the `Image` line, then BASE, SUBJECT and the closing line; **the prompts are one file each under `prompts/full-figures/`, hand-authored and the source** (author, s58).

## BASE block — full figure

```
Medium: loose expressive watercolour and ink on rough cold-press
paper, visible paper tooth and pigment granulation, scratchy fine
ink linework, wash blooms with hard irregular edges, generous bare
unpainted paper.

Colour: restrained transparent washes laid over a dominant ink
drawing. Muted, desaturated, earthy. The ink linework remains the
strongest element; colour tints rather than fills. Large areas left
as bare paper. Warm living skin, soft ochre in the mid-tones — the
warmth belongs to the skin alone, not the paper or the cloth.

Composition: full figure, standing, head to feet, feet included and
fully in frame. Three-quarter view, body angled away from the
viewer, head turned back so the face is visible. Empty parchment
ground, no setting, no background elements, no cast shadow.

Lighting: soft directional light from one side, gentle shadow along
the shaded side of the figure and beneath the chin.

Hair: irregular clumps and locks of varying thickness, uneven
edges, naturally settled rather than combed.
```

#### Closing line

```
Preserve his/her face, hair, colouring and apparent age exactly as
shown in the reference image. Extend to a full standing figure; the
reference shows head and shoulders only.
```

- **`kael-14-full`** — village register. Carries no weapons; page canon has two short blades across his back in a cloth wrap — write the wrap into a scene by hand when the moment carries it. Its *plain dark clothing, well-made and well-maintained, chosen to go unnoticed* disagrees with `03`: he is not dressed to conceal, and a plate dresses him in whatever his chapter has him in.
- **`valeria-14-full`** — the matched pair is load-bearing; the collar insignia is canon-by-precedent.
- **`aeliana-15-full`** — hair loose by default; a Ch. 22 plate puts it up.

---

# Scenes and plates

**References attached:** the full-figure sheet where one exists and the body is in frame — it carries build and costume, where a portrait carries only the face and everything below its collar is then authored in the prompt and will not repeat in the next picture. A close crop attaches the portrait. A plate may attach both of one person; the `Image N:` lines name the files.

**The reference carries** the face, bone, eye and hair colour, skin, apparent age, the medium — and the expression: in a close crop the reference's mood beats the prompt, so move the eyes onto an object or change the pose before writing an override, and if that fails cut a second reference. **The prompt carries** posture, each hand, everything below the collar, the framing, the light where it is not soft side daylight, the hues on the objects that have them, and all clothing when more than one figure is present — costume bleeds between dark garments; identity does not.

A plate is a moment, not a person, and THE PLATE FOLLOWS THE PAGE binds it (`README.md`): it writes its own composition and light every time, and it says who is not in the frame.

## Scene style line

The header for anything with a reference attached, once, under the `Image` lines (*image* for one reference, *images* for more). A plate with no reference gets the STYLE block's Medium paragraph in its place. The check: `grep -c '^Same medium and style' prompts/plates/*.md` — every count 1, and 0 only where no reference is attached.

```
Same medium and style as the reference images: loose watercolour and
ink on rough cold-press paper, scratchy ink linework, wash blooms,
bare paper in the lights.
```

## Plate template

The scene-test register (author, s47: the scene tests are the folder's best pictures) — one implied wall, soft daylight from one side, faces near and engaged with each other, colour named on the objects that have it. Start here and add an instrument from the list below only when this picture needs it. The specimens: `scene-tests.md` §`talk-kael-valeria` for two figures and §`quartet-conversation` for four; `prompts/plates/ch33-behind-me.md` for a close-up.

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

## Instruments — one when the picture needs it, none by habit

**The frame.** Named as one of the tool's five ratios, first in the Composition line — **1:1 · 3:4 · 9:16 · 4:3 · 16:9** (author, s60; the author's interface is Portuguese and calls them *quadrado · retrato · story · paisagem · ecrã panorâmico*). Not a shape in prose — *tall upright frame, taller than it is wide* cannot change a pixel the ratio has already set — and not the bare words *portrait* or *landscape*, which name other things in this folder. **3:4 is the default** (author, s63: *those are not so big on a page … 3:4 or 9:16 is more page filling*): `scripts/build-docx.py` fits every plate width-first inside its cap on a 6×9 trim, so 3:4 fills the page at 4.6 × 6.1in against a 4.6 × 7.5in text block, 1:1 gives 4.6 × 4.6, 4:3 gives 4.6 × 3.5, 16:9 a third of the block, and 9:16 meets the height cap first and comes back narrower than the text column. A wide frame is spent where the picture is actually wide (author: *sometimes its fine*), never by habit.

**The cut.** First words of the Composition line, plainest term, stop (author, s65: *can't you just say "chest up" or something*): *chest-up, one figure* (`ch23/the-horizon`, the tightest crop in the folder); *A close-up of her face. Head and shoulders only, the head large in the frame* (`ch33/behind-me`, first run). The long form — camera, placement, then *the bottom edge crosses X so that no A, no B and no C are in the frame* — came back wider every time: what is buried in a long composition paragraph, the tool decides for itself. A body in movement widens past any landmark — a stride needs a floor — and the widening has been the better picture each time; trust the tool's read of how much body a movement needs. A frame held closed on a moving body has not yet been bought by any wording. A cropped figure needs a floor, or it hangs on bare paper:

```
Setting: a stone hall as loose wash suggestion — a broad flagstone
floor receding behind them, tall walls implied in cool grey washes,
the upper reaches lost in shadow. Both figures grounded on the same
floor plane.
```

**Hands.** One line per hand, and the absences — *three blades total* failed twice; this held:

```
WHAT IS IN EACH HAND:
His right hand holds one short blade and nothing else.
His left hand is empty and open.
Her right hand holds one longsword and nothing else.
Her left hand holds one longsword and nothing else.
Four hands, three blades, nothing else in any hand. Both her
scabbards are empty. No other blade, blade tip or hilt appears
anywhere in the frame.
```

A limb that carries two instructions is one chain, in order — *knife, hand, wrist, grip — one continuous limb.* A size contrast holds only for the pair it is written beside; state it again wherever it must hold. Hands that are deliberately out of frame are said to be.

**Scale.** A ratio to something in the frame, never an adjective — *very small* and *a toddler, not a boy of seven* both failed:

```
SCALE — the child is FOUR YEARS OLD and must read four:
The top of his head reaches roughly the man's hip.
His head is large for his body, roughly a fifth of his total height.
Short limbs, a round torso, no waist, no length in him anywhere.
The goat's shoulder is at about the child's chest.
```

The two terms must sit where the frame can compare them.

**Age in a plate.** The reference carries apparent age and the fourteen-year-old anchor is the lever; no ratio has pulled an age down in a face-filling crop. Where a face has drifted older — the adolescents do, on nearly every plate — the rung goes in as its age line and two eye-line clauses, *Age: thirteen. The eyes at the vertical midpoint of the head, the jaw softly defined and not sharp*, which brought `ch35/the-spotter` back to fourteen (author). It is not free beside a hard subject: four minor-markers in one paragraph next to iron on a boy's wrists were refused before any image was made (`ch39`), so beside restraint or harm let the reference carry the age.

**Nouns.** A concrete noun arrives with its default, and the default beats every adjective hung on it — *dagger* returned a longsword, *coat* a frock coat, *candle* a wick flame, *standing stone* a menhir. For anything other than the default, describe the construction — what it is made of, how it closes, how long it falls — with the defining feature first and measured, then kill the default by name. Banning a noun's features leaves nothing: describe what is there. The test: could a costumier from three centuries all draw it from the words?

**The winner and the rival.** Where a small thing must win the picture, hold the rival at quiet middle values with no hard edges, then site the sharpest step from light to dark on the winner — edge and finish, both clauses. It needs a rival to demote and a dark for it to recede into; in flat daylight the instrument is the crop, and below a hand's size in frame nothing carries finish, so again the crop. Read the framing, pose and costume back and check the tell is actually visible. The rival may be the face, by name, with the winner sized by ratio — *the open hand is wider in the frame than his head … his face and the whole of the rest of him are held at quiet middle values with soft wash-bled edges and no hard-edged dark anywhere; the sharpest step from light to dark in the picture happens at the edge of the red on the hand* (`ch28/the-hand-back`). The hardest form gives the winner the finish alone — *her face carries the only finished drawing in the picture* — and forbids the rival the channel outright — *no hard edge anywhere in them* — and returned a faceless man who is the largest mass in the frame and still loses it (`ch33/standing-on-his-feet`). Both are the author's blocks.

**Light.** Soft side daylight is the default and needs no clause. A named source: say where it is, that it is the only one, what it leaves dark, and where the warmth lands. A warm source lights a face only when it is close — a candle on the bench does, a town at the foot of a mountain does not; where the source is far, the figure is lit by ambient sky and the source is the one warm thing. A low or high camera is written on two channels — the picture-maker's own words, *low-angle view, the camera at the height of his knee, looking up*, and the surfaces it exposes, *the underside of the jaw is visible; the horizon sits level with his knees*; the exposure clause alone carried a kneeling subject and not a standing one. Camera vocabulary is not banned (author, s59). For real depth, say where the viewer is first, stack the frame bottom to top, and pin it with a ratio.

**Colour.** Name the hues on the objects that have them and ban nothing (author, s42, s45). The portrait Colour paragraph's *warmth belongs to the skin alone* does not reach a plate.

**Absence.** Ban what something in the picture pulls toward — a herd behind a goat, a second blade near a swordsman, a face where the framing hid one, a watcher in a solitary moment — and nothing else. Naming a thing to ban it puts the word in front of the filter: *no blood on the bound child* was refused.

**Gaze and expression.** Say where each pair of eyes goes. Never tell a face to do nothing — *his face is doing nothing at all* renders as vacancy, and vacancy is not stillness (author, s48: *Kael is kind of expressionless*): a still face gets one working part named, as a state the picture can hold and not an action the face performs. *Level* and *flat* are directions, not temperaments — each has put a gaze on the viewer that the block sent elsewhere. Point at the mouth (*mouth open mid-word*), not the abstraction; state a contradiction as one — *the body is deferential and the attention is not*; *not smiling — just not braced* got warmth without breaking character.

**Two stillnesses, two recipes.** Calm: *the face level, the eyes steady on the man, the jaw set but easy.* Cold: anatomy doing work and not moving — the chin down so the eyes come out from under the brows, the eyes wide and fixed on one named point, the brows low and straight, the jaw set with the muscle standing at the corner, the mouth closed and pressed thin, the contradiction stated once (*everything in the face is set hard and none of it is moving*), and the face's physical history (a screamed-out throat leaves red rims and a wet face). The calm recipe on a cold moment returned a mild boy looking softly over his shoulder (`ch33/quiet-and-cold` run 1; author: *his face is way too chill*), and negations made it worse — *nothing in the face is straining and nothing in it has gone slack* clears both directions and leaves the reference's own neutral face, which in a close crop wins anyway.

**Eye contact** is named as the subject, on its own, in caps:

```
THE TWO ARE LOOKING DIRECTLY AT EACH OTHER. His eyes up, hers down,
the lines of sight meeting. This eye contact is the subject of the
image.
```

It lands on still bodies and not on working ones: eyes meet when neither body has a competing task and go to the task when one has. Where a moment needs both, give the working body a reason to have already finished, or drop the task.

**Ownership.** With two dark garments in frame, state it, and the absences per character as well as the possessions:

```
Do not mix their clothing — the gold embroidery belongs only to
Aeliana, the armour only to Valeria, and Kael wears neither.
```

**Four figures.** Two loose pairs at different depths, all turned in; a single speaker the other three attend to, or the pairs hold two conversations. Two people talking at once renders and stops the group reading as a portrait.

**Lettering.** One short word, capitals, named exactly, declared the only thing written on the surface, sized against the frame. Not a page.

**Injury.** Name the cut and where it is, never the tissue:

```
A fresh cut across his cheekbone. Several on his forearm and torso.
```

Torn clothing renders where absent clothing does not; healed scars, bruising, grime and soot render without difficulty. **Harm is not the barrier; a refusal is usually a fault in the block** — reword once, changing as little as possible, and take a second refusal as the answer for that attempt (author, s48). What passes the filter is also what renders: *slash* for *open cut*, *red* for *blood*, *lies level across his eyes* for *bound*, *hands curled loosely near his cheek in sleep* for *both fists shut and drawn up* — a shape, a colour, a placement or a state can be drawn where a category (cut, blood, restraint) cannot. Prefer them even where nothing is refused. What the guard reads is restraint apparatus filling the frame as the declared subject of a picture that also contains a child: the same iron and cloth passed at scene distance with the subject a line of sight, and were refused twice as a close crop opening *THE IRON IS THE SUBJECT* (`ch39`). Two routes out — scene distance, so the apparatus is incidental; or an object study, with no reference, no age and no face. Two specimens, on `archive/plate-sheets.md`:

- **Marks without flow — `ch26/aftermath`** (author, s51: *the perfect example for a battered cut bloody character*). The garment destroyed, not absent — *torn open down the front and hanging off one shoulder, the left sleeve ripped away entirely, the fabric shredded and filthy but still on him.* Every mark by its site — *dark bruising over one shoulder and along the ribs, older pale scars across the upper arm and collarbone.* One closing negation, not a stack — *Nothing bleeding.* The body as build — *lean, hard, wiry, visible ribs, the build of someone trained rather than grown* — and the face as anatomy, *flat and tired, mouth slightly open*.
- **Blood that shows — `ch23/the-horizon`** (author, s51: *also managed to get blood of a cut very well with its prompt*). The site stated flat — *HIS LEFT ARM IS CUT.* A shape, a path and an edge — *a long slash runs along the outside of the left arm above the elbow, its edges clean.* The blood a route and an appearance, never a substance — *there is red down the outside of the forearm and across the back of the hand, dark and wet.* The dressing's absence said — *the arm is bare and unbound and no cloth or wrapping is on it.* The cloth corroborating the site, and the face forbidden the injury — *not dazed, not in pain.*

Dried red beside a rendered burn is not a separate channel to this tool; it comes back as more burn (`ch35/one-knee-at-the-mast`).

**Damage.** Never paid for out of the features that separate a character: *much mended* returned rags on a boy who is poor and not destitute; a Sedrane's *very good quality* cloth written *torn through* returned a beggar, and her binding let loose in the same breath returned Valeria's silhouette. Name what survives first — the quality, the binding, the build — then the damage as an exception to it, and ban the archetype the frame now pulls toward (*not ragged, not tattered, not a beggar's clothing*) rather than the tears. **The body is the same rule** (author, s58): damage as pure subtraction takes the person with it — *gone thin* put frailty on an old man `03` calls **not frail**. Put the survival in the same breath and last, where it lands: *a month at sea is on him and it is all on the surface: the skin scoured by wind and sun and salt, and the frame under it sound — the strength still there, nothing taken out of him, not frail and not diminished* (`ch37/the-old-man-on-his-knees`). §AGE's *weather, not age*, one layer in.

**Write the state, not the action** (author, s53). A still picture cannot hold a thing happening over seconds; name the state it leaves and let the eye supply the verb. *The arm is not quite steady* cannot be drawn; *the lamp tilted slightly off level and the flame leaning* can (`ch33/the-lamp`). *Three olive trees splitting apart* cannot; *already split open, the trunks standing as ragged upright shells, and the strips off them out in the air clear of the trunks, low and level and mid-flight* can (`ch34`). Faces, objects and events alike.

**A face with no reference.** A character with no portrait is not blocked from a plate, only from a resolved face: against the light, or out of frame, the moment can be made. *No eyes are visible anywhere in the picture* has carried a man front-on, filling a lit doorway at the exact place the eye goes, with no features drawn on him (`ch39/the-door-at-dusk`), and a faceless man who is the largest mass in the frame (`ch33/standing-on-his-feet`). *Do not turn the head toward the viewer* is a second ban on the same channel, earned only where the face is deliberately hidden, and unproven.

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
- **A substance lying in the grooves of metal, distinct from the metal, does not render** — black in the folds of an iron band came back as dark metal on a dark ground, and absent again on bright silver with the black named as the only dark thing on it. Below what the medium separates; no demotion fixes it.
- **Action is budgeted, not fenced** (author, s65). `scene-tests.md` §`fight-kael-valeria` — two bodies inside each other's reach with three blades crossing — took six attempts and is one of the folder's best pictures; `ch32/out-of-the-door` and `ch33/standing-on-his-feet` landed first run. The recipe: the count per hand, the blade sized against a body part, the second weapon given a contact point instead of a trajectory, both figures grounded on the same floor plane, dry-brush drag and flicked spatter added to the style line. At close range two bodies as one mass read as an embrace at thumbnail size — site something hard where the eye lands first.
