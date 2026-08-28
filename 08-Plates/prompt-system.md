# Prompt System

Tool: ChatGPT image generation. Describe what you want; a negation earns its place only when something in the picture pulls toward the thing banned. Paste `canon-brief.md` at the top of the conversation first.

Two recipes. A **portrait** is generated unanchored — no reference attached — so the prompt carries the medium. A **scene or plate** is generated with reference images attached, so the references carry the medium, the faces and the apparent age, and the prompt carries everything else.

**Nothing here is a finished prompt.** The fenced blocks below are the SHARED COMPONENTS — the ones used many times over — and a prompt is assembled from them by hand into its own file under `prompts/` (author, s58). Every finding, run record and revision that produced these rules is in `archive/findings.md`, verbatim, under its original heading.

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

## AGE block — one per character

The eye line is the age instrument, and the only one that works on its own: eyes **below** the vertical midpoint of the head is a child, **at** it an adolescent, **above** it an adult — and it is a dial, not three stops (Kael at nine sits *just below*). Age words in the SUBJECT block alone are ignored.

For a grown face, name the quality you want and the adjacent one that reads as decline, and forbid the decline by its markers: *weather, not age* (Vask); *lean, not wasted* (Severin); *fully grown, and nothing has been taken out of her — not girlish, not unformed* (Neris). One negation cannot hold a line against a stack of positives pointing the other way.

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

Noted s45: this block says *fifteen* and sets the eyes at the midpoint, the file it cut is named `-14`, and `03` has her at ~13. Both plates anchored on it drifted to mid-teens. Not re-cut.

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

**How the eyes win — one axis each, and check it against the hair first.** Saturation: Valeria's green, Aeliana's blue, Aurelian's amber — and amber needs the skin around the eye kept cool and the cheeks quieter than it, or the warm face eats it. Lightest value: Kael's grey. Local contrast: Neris, Vask — two clauses, demote the hair to *fine ink strands and open transparent washes with bare paper left through the mass, no hard-edged black anywhere in it*, then *the sharpest step from light to dark in the whole picture happens inside the eye itself, at the edge of the iris*. Finish: Elarine — the only fully resolved thing in a loose picture. A dark eye cannot win on darkest value against dark hair unless the hair is demoted.

**Hair: name what it competes with, then push the other way.** Dark hair against a dark eye → demote it. Light hair on pale ground → define it (*defined ink strands and clear drawn edges against the pale ground, never dissolving into the paper*). A grey head: tell the brows not to match, or the tool harmonises them. A beard covers the mouth: move the expression to the eyes and brows.

**Ground is per character:** cool pale parchment for everyone but Aeliana, whose silver needs warm aged parchment to sit against. **Complexion encodes station:** Kael weathered → Valeria mid → Aurelian clear with sun on it → Elarine pale indoor → Aeliana pale untouched; the parents extend the scale off its top. The scale runs on weathering and value, never on speckle.

**Ban the shape, count the thing.** Several negations aimed at one feature remove the feature — *no freckles* did nothing, and five bans on white in the hair removed Vask's grey. One ban on the bad form plus a positive quantity of the good one: *one strand in six, scattered, never gathered*. Attack the archetype the tool is reaching for (*not a wizard, not a sage*) as well as the affect. *Plain* and *not handsome* do not render; dirt, weather and a hacked crop do. Two edit passes at most — each softens the granulation and warms the palette. The medium speckles every face: texture, not freckles, and it cannot be prompted away.

---

# The characters — SUBJECT blocks

**The prompts themselves are one file each under `prompts/portraits/`, hand-authored and the source** (author, s58) — the same ruling that put plate prompts in their own files. What is below is what each one IS: the reference it cut, its AGE rung, whether the HAIR line is in it, and what is known about the run. Each is the block that cut the adopted reference — or, for the s33 set, an assembly of the current system that will not reproduce it (`prompts/README.md`).

### Kael at fourteen

`images/portraits/kael-14.png` · adolescent · HAIR.

**The prompt is `prompts/portraits/kael-14.md`**, which is the source and holds it as run.

### Kael at four

`images/portraits/kael-4.png` · child · HAIR. The one Kael whose face is not doing the coat; the block forbids the system's own default by name, or an unattended run inherits it.

**The prompt is `prompts/portraits/kael-4.md`**, which is the source and holds it as run.

### Kael at nine

`images/portraits/kael-9.png` · nine · HAIR. Author-revised before the run. *The ink carries the cloth* is the finish counterweight for anything wearing worked cloth. Ran with a village behind him against the block's empty ground; adopted as it stands. Covers Ch. 3–7.

**The prompt is `prompts/portraits/kael-9.md`**, which is the source and holds it as run.

### Valeria

`images/portraits/valeria-14.png` · adolescent · HAIR.

**The prompt is `prompts/portraits/valeria-14.md`**, which is the source and holds it as run.

### Aeliana

`images/portraits/aeliana-15.png` · adolescent · HAIR. The adopted image carries a pauldron the block forbids; flagged, not regenerated.

**The prompt is `prompts/portraits/aeliana-15.md`**, which is the source and holds it as run.

### Aurelian

`images/portraits/aurelian-14.png` · Aurelian · no HAIR. *Riding and hunting* is a rendering steer that bought the well-fed colouring; it is not canon and stays in this block. The reference was cut with no insignia, badge, house colour or chain on him — the quality of the cloth carrying the station. That is what the picture has, not a fact about him: `03` gives him none of it either way (moved from `canon-brief.md`, s59).

**The prompt is `prompts/portraits/aurelian-14.md`**, which is the source and holds it as run.

### Elarine

`images/portraits/elarine-14.png` · Elarine · no HAIR. The darkest-value clause could not beat her own hair and the eyes won on finish; if she is ever re-cut, demote the hair (§SUBJECT template). The binding is her silhouette — *scholar* where Valeria reads *uniform* — and the one run that let it come loose returned Valeria's silhouette on her (§Damage); what that costs is known, and whether a picture spends it is the picture's (moved from `canon-brief.md`, s59).

**The prompt is `prompts/portraits/elarine-14.md`**, which is the source and holds it as run.

### Vask

`images/portraits/vask.png` · Vask · HAIR. The adopted image shows no grey and reads younger than `03`'s *used tools*; both ruled acceptable (s34, s43) and `03` does not move. The block is the corrected one; its grey instruction has failed twice and the cause is not settled — do not run the same fix a third time.

**The prompt is `prompts/portraits/vask.md`**, which is the source and holds it as run.

### Neris

`images/portraits/neris.png` · Neris · HAIR. Reads early thirties and striking; ruled good (s44). Her hands are where the book keeps her — any full figure or scene puts them in frame and occupied.

**The prompt is `prompts/portraits/neris.md`**, which is the source and holds it as run.

### Neris — marked

`images/portraits/neris-marked.png` · Neris · HAIR. The re-cut for the three quartz-white marks, which `neris.png` predates; **a plate uses the reference valid at its chapter**, so this one from Ch. 33 on and `neris.png` before it. Built as `neris.md` plus one inserted paragraph with nothing else moved, so the two read as one casting. **It came back about a decade older than `neris.png` and the author ruled that wanted** (s60: *i like it reading a bit older. she has taken a big toll*) — the AGE paragraph asked for a flat unhollowed cheek and no lines and did not get them, and **the white in the hair is itself a stack of positives pointing at age** (§AGE), which nothing in the block told it was a mark instead. Two findings on the marks, neither a correction owed: they took the sharpest step from light to dark in the picture where the block sent it to the eye, so anything anchored here inherits loud white; and they came back **evenly spaced and equal in width**, where the page has two arriving together and the third later and apart — the block said *separate from each other* and should have said the two sit near each other.

**The prompt is `prompts/portraits/neris-marked.md`**, which is the source and holds it as run.

### Severin

`images/portraits/severin.png` · Severin · HAIR · half-figure composition. Author-revised: the build moved out of the AGE block into the SUBJECT; the brows told not to match; the light hair defined against the pale ground; the expression moved to the eyes because the beard has the mouth.

**The prompt is `prompts/portraits/severin.md`**, which is the source and holds it as run.

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

### Kael — full figure

`images/full-figures/kael-14-full.png`. Village register. The sheet carries no weapons; page canon has two short blades across his back in a cloth wrap — write the wrap into a scene by hand when the moment carries it. The sheet's clothing — *plain dark clothing, well-made and well-maintained, chosen to go unnoticed* — disagrees with `03`: he is not dressed to conceal, and a plate dresses him in whatever his chapter has him in (moved from `canon-brief.md`, s59).

**The prompt is `prompts/full-figures/kael-14-full.md`**, which is the source and holds it as run.

### Valeria — full figure

`images/full-figures/valeria-14-full.png`. The matched pair is load-bearing; the collar insignia is canon-by-precedent.

**The prompt is `prompts/full-figures/valeria-14-full.md`**, which is the source and holds it as run.

### Aeliana — full figure

`images/full-figures/aeliana-15-full.png`. Hair loose here by default; a Ch. 22 plate puts it up.

**The prompt is `prompts/full-figures/aeliana-15-full.md`**, which is the source and holds it as run.

---

# Scenes and plates

References attached: the full-figure sheet where one exists — it carries build and costume, a portrait carries only the face, and everything below a portrait's collar is then authored in the prompt and will not repeat in the next picture. A plate may attach both of one person. The `Image N:` lines name the file to attach.

**The reference carries** the face, bone, eye and hair colour, skin, apparent age, the medium — and the expression. In a close crop the reference's mood beats the prompt: move the eyes onto an object or change the pose before writing an override, and if that fails cut a second reference. **The prompt must carry** posture, each hand, everything below the collar, the framing, the light where it is not soft side daylight, the hues on the objects that have them, and all clothing when more than one figure is present — costume bleeds between dark garments; identity does not.

## Scene style line

The header for anything with a reference attached. Every plate prompt carries it under its `Image` lines; a plate with no reference gets the STYLE block's Medium paragraph in its place.

```
Same medium and style as the reference images: loose watercolour and
ink on rough cold-press paper, scratchy ink linework, wash blooms,
bare paper in the lights.
```

## Plate template

The scene-test register (author ruling, s47: the scene tests are the folder's best pictures). Start here and add an instrument from the list below only when this picture needs it.

```
Image 1: <file>.png — <full-figure|portrait> reference of <who>.

Same medium and style as the reference images: loose watercolour and
ink on rough cold-press paper, scratchy ink linework, wash blooms,
bare paper in the lights.

Setting: <place> as loose wash suggestion — a wall implied behind
them, the background falling into shadow. Soft daylight from one side.

Composition: <tall upright frame, taller than it is wide | wide frame,
wider than it is tall>. <Where the bottom edge cuts the body, and what
that puts out of frame>. <Who is where, facing which way, at what depth.>

<The moment, in one paragraph — or that nothing is happening, where
the subject implies violence.>

<NAME> <pose>. <Expression, pointed at the mouth and the brows.>
<Costume by construction, hues named — deep umber and warm charcoal,
ink-black and dark olive.>

<Where each pair of eyes goes. If they meet, the eye contact is the
subject of the image.>

Preserve each exactly as shown in their reference image — faces,
hair, colouring, apparent age. Do not blend their features. Do not
mix their clothing: <the X belongs only to A, the Y only to B>.
```

**A plate prompt carries the scene style line exactly once, under its `Image` lines** — it was emitted twice on both `ch26/the-fan` prompts when the build still prepended it (s51; nothing in the pictures depended on it). To check the whole folder: `grep -c '^Same medium and style' 08-Plates/prompts/plates/*.md` — every count should be 1, and 0 only where no reference is attached.

The specimens are on `scene-tests.md`: `talk-kael-valeria` is the two-figure version of this and `quartet-conversation` the four.

## Instruments — one when the picture needs it, none by habit

**The frame.** **NAMED AS A RATIO, FIRST IN THE COMPOSITION LINE** (author, s60): the tool takes an explicit aspect token and there are five — **1:1 · 3:4 · 9:16 · 4:3 · 16:9** (the author's interface is Portuguese and calls them *quadrado · retrato · story · paisagem · ecrã panorâmico*; the numbers are the portable part). **The s59 shape clause is retired** — *tall upright frame, taller than it is wide* cannot change a pixel the ratio has already set, and every clause must be able to change one. Do not write the bare words *portrait* or *landscape* alone, which name other things in this folder; write the ratio. The evidence: `ch38/nobody-say-it` ran twice, once on the shape clause and once on a ratio, and the adopted picture is exactly 3:4. The tool has three canvases and picks one from the content when nothing names it, and a tall canvas under *the bottom edge at the waist* has height to fill and fills it with body. Counted at s59: none of the ninety plate prompts named the frame, 64 of the 79 adopted plates came back tall, and the loose crop stood at twelve recorded instances with no correction ever tried against it. This is the first, and the next run under it is the test.

**The cut.** Name it as a landmark on the body and say what it puts out of frame — *the bottom edge of the picture crosses both boys just below the collarbone, so that no arms, no hands and no legs are in the frame at all.* *Chest-up* and *waist-up* both came back wider. A cropped figure needs a floor, or it hangs on bare paper:

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

The two terms must sit where the frame can compare them. In a face-filling crop under the fourteen-year-old anchor no ratio has yet pulled an age down: the anchor is the lever, and the eye-line rung is cheap and may stay. **IT IS NOT CHEAP IN EVERY BLOCK** (s60, `prompts/plate-candidates/ch39.md`): carried into a picture whose subject was iron on a boy's wrists, the rung put four minor-markers — *Age* · *jaw softly defined but not sharp* · *some remaining fullness in the cheeks* · *Adolescent, not grown* — in one paragraph beside a restraint, and it was refused before any image was made. The reference carries apparent age (§Scenes and plates); the rung's job is to correct drift, so it earns its place where age has drifted and not by default.

**Nouns.** A concrete noun arrives with its default, and the default beats every adjective hung on it — *dagger* returned a longsword, *coat* a frock coat, *candle* a wick flame, *standing stone* a menhir. When you want something other than the default, describe the construction — what it is made of, how it closes, how long it falls — with the defining feature first and measured, then kill the default by name. Banning a noun's features leaves nothing: describe what is there. The test: could a costumier from three centuries all draw it from the words?

**The winner and the rival.** Where a small thing must win the picture, hold the rival at quiet middle values with no hard edges, then site the sharpest step from light to dark on the winner — two channels, edge and finish, so both clauses. It needs a rival to demote and a dark for it to recede into; in flat daylight the instrument is the crop. Below a hand's size in frame nothing carries finish, and the fix is again the crop. Read the framing, pose and costume back and check the tell is actually visible in the picture described. **THE SPECIMEN IS `archive/plate-sheets.md` §ch28's `the-hand-back` block** (author, s53): the winner is given a ratio to a body part — *the open hand is wider in the frame than his head* — and **the rival demoted is the face**, by name, on both channels at once — *his face and the whole of the rest of him are held at quiet middle values with soft wash-bled edges and no hard-edged dark anywhere; the sharpest step from light to dark in the picture happens at the edge of the red on the hand.* A face can be fully drawn and still be demoted; naming it as the thing to hold down is what makes an inch of subject win.

**Light.** Soft side daylight is the default and needs no clause. A named source: say where it is, that it is the only one, what it leaves dark, and where the warmth lands. A warm source lights a face only when it is close — a candle on the bench does, a town at the foot of a mountain does not; where the source is far, the figure is lit by ambient sky and the source is the one warm thing. A low or high camera is written on two channels: in the picture-maker's own words — *low-angle view, the camera at the height of his knee, looking up* — and as the surfaces it exposes — *the underside of the jaw is visible; the horizon sits level with his knees*. The exposure clause on its own carried a kneeling subject (`ch37/the-old-man-on-his-knees`) and did not carry a standing one: `ch37/the-water-at-the-gate` wrote the height as exposure only, under this paragraph's old rule that the camera is never named as where the viewer stands, and came back at eye level. The camera words are the caption vocabulary the tool has read more often than any other description of an angle, and they are not banned (author, s59). For real depth, say where the viewer is first, stack the frame bottom to top, and pin it with a ratio.

**Colour.** Name the hues on the objects that have them and ban nothing (author ruling, s42; re-ruled s45 after a global cool clause propagated through eleven blocks). The portrait Colour paragraph's *warmth belongs to the skin alone* is a portrait clause and does not reach a plate.

**Absence.** Ban what something in the picture pulls toward — a herd behind a goat, a second blade near a swordsman, a face where the framing hid one, a watcher in a solitary moment — and nothing else. Naming a thing to ban it puts the word in front of the filter: *no blood on the bound child* was refused.

**Gaze and expression.** Say where each pair of eyes goes. **Never tell a face to do nothing** — *his face is doing nothing at all* renders as vacancy, and vacancy is not stillness (author, s48: *Kael is kind of expressionless*). A still face gets one working part named: *the face level, the eyes steady on the man, the jaw set but easy.* *Level* and *flat* are directions, not temperaments — each has put a gaze on the viewer that the block sent elsewhere (`archive/plate-sheets.md` §ch14, `archive/plate-sheets.md` §ch17). Point at the mouth (*mouth open mid-word*), not the abstraction. State a contradiction as one — *the body is deferential and the attention is not.* *Not smiling — just not braced* got warmth without breaking character. Eye contact between two figures is named as the subject, on its own, in caps:

```
THE TWO ARE LOOKING DIRECTLY AT EACH OTHER. His eyes up, hers down,
the lines of sight meeting. This eye contact is the subject of the
image.
```

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

Torn clothing renders where absent clothing does not. Healed scars, bruising, grime and soot render without difficulty. **A refusal is often a fault in the block, not a limit on the moment** (s48, twice). `ch21/dead` — a blade stopped clear of a boy's throat — was refused and then ran after a rewording, and `ch23/the-horizon` was refused and ran on a two-word change with everything else identical: **`open cut` → `slash`, `blood` → `red`** (author, s48). Those two are the isolated result; the `dead` rewrite moved four things at once and proved nothing about which. So: reword once, changing as little as possible, and if it refuses again take that as the answer. Harm itself is not the barrier. **THE SPECIMEN IS `archive/plate-sheets.md` §ch26's `aftermath` block** (author, s51: *the perfect example for a battered cut bloody character*) — cut as a scene test, adopted onto the page at Ch. 26, and it renders bruising, soot, shredded cloth, old scars and fresh marks in one picture without a refusal. What it does, and what to copy:

- **The garment is destroyed, not absent** — *torn open down the front and hanging off one shoulder, the left sleeve ripped away entirely, the fabric shredded and filthy but still on him.* Torn cloth renders where bare skin argues.
- **Every mark is named by its site and never by tissue** — *dark bruising over one shoulder and along the ribs, older pale scars across the upper arm and collarbone.* Sites, not wounds.
- **It closes on one negation, not a stack** — *Nothing bleeding.* That single clause is what buys the rest of the paragraph.
- **The body is stated as build, not as suffering** — *lean, hard, wiry, visible ribs, the build of someone trained rather than grown* — and the face is *flat and tired, mouth slightly open*, which is exhaustion written as anatomy.

**AND THE MATCHING SPECIMEN FOR BLOOD THAT SHOWS IS `archive/plate-sheets.md` §ch23's `the-horizon`** (author, s51: *also managed to get blood of a cut very well with its prompt*). Where `aftermath` closes on *Nothing bleeding* and gets marks without flow, this one opens on the site as a plain fact and gets flow by giving it a route:

- **The heading states it flat** — *HIS LEFT ARM IS CUT.* No hedging and no euphemism; the picture is told what is true before it is told what it looks like.
- **The cut gets a shape, a path and an edge, not a wound** — *a long slash runs along the outside of the left arm above the elbow, its edges clean.*
- **The blood is a route and an appearance, never a substance** — *there is red down the outside of the forearm and across the back of the hand, dark and wet.* Where it runs, and two words about how it looks.
- **The absence of a dressing is said out loud** — *the arm is bare and unbound and no cloth or wrapping is on it* — which is what makes it read fresh rather than treated.
- **The cloth corroborates the site** — *his clothing is torn where the cut is.*
- **And the face is forbidden the injury** — *not dazed, not in pain* — so the wound does not hijack the expression, which on that plate is the subject.

**The vocabulary that passed the filter is also the vocabulary that rendered.** `slash` for `open cut` and `red` for `blood` were adopted at s48 as a refusal workaround, and they work for a second reason: *slash* names a shape and *red* names a colour that can be put somewhere, where *cut* and *blood* are categories with nothing to draw in them. Prefer them even where nothing is being refused. **AND THE SECOND CONFIRMATION IS A CHILD, NOT A WOUND** (s60, `prompts/plate-candidates/ch38.md`): refused on the adolescent-and-children guard before any image was made, and it ran on ***bound* level across his eyes → *lies* level across his eyes** and ***both fists shut and drawn up* → *hands curled loosely near his cheek in sleep***. **Bound** and **fists shut** are categories — restraint — where **lies** is a placement and **curled loosely in sleep** is a state. The block that ran kept everything a reader would expect to be the problem: a thirteen-year-old on a bed, an overhead camera, *lie on their backs*, *worn thin, the collar open at the throat*, and a stack of body-part negations at the cut. **The caveat is `ch21/dead`'s** — the rewrite moved five things at once and does not isolate which. **AND THE THIRD FINDING IS ABOUT SCALE, NOT WORDS** (s60, four runs in one session). `ch39/the-door-at-dusk` put a girl with a strip of cloth across her mouth and iron on both wrists into a picture and **passed first time**, because she is one figure at scene distance in a lit box and the subject is a line of sight. `ch39/the-black-in-the-iron` and `ch39/the-iron-did-nothing` were close crops that opened *THE IRON IS THE SUBJECT* and *HER WRISTS ARE MARKED*, and both were refused before any image was made. **What the guard reads is restraint apparatus filling the frame as the declared subject of a picture that also contains a child** — not the cloth, not the iron, not the harm. Two routes out, one per picture and both keeping the moment: pull to scene distance so the apparatus is incidental and the subject is what people are doing; or take every human and age cue out and let it be an object study, with no reference attached, no age named and no face in frame.

**Damage must not be paid for out of the features that separate a character** (s51, `archive/plate-sheets.md` §ch26). `ch23/empty` run 1 returned *much mended* as rags on a boy who is poor and not destitute; `ch26/not-kind-to-me` run 1 wrote a Sedrane's *very good quality* cloth as *torn through* and got a beggar, and in the same breath let her severe binding come loose and got Valeria's silhouette back. Name what survives first — the quality, the binding, the build — then the damage as an exception to it, and ban the archetype the frame now pulls toward (*not ragged, not tattered, not a beggar's clothing*) rather than the tears.

**AND IT HOLDS FOR THE BODY EXACTLY AS IT HOLDS FOR THE CLOTH (author, s58, twice in two plates — promoted under the s42 ruling).** Damage written as pure subtraction takes the person with it: *gone thin* put frailty on an old man `03` calls **not frail**, and *he is thin* was going the same way on a trained boy. Both blocks were corrected the same way and the correction was wanted both times. **Name the survival in the same breath as the damage, and put the survival last, where it lands:** *a month at sea is on him and it is all on the surface: the skin scoured by wind and sun and salt, and the frame under it sound — the strength still there, nothing taken out of him, not frail and not diminished* (`ch37/the-old-man-on-his-knees`), and *a month at sea has taken weight off him and left the rest* (`ch37/the-water-at-the-gate`). It is §AGE's *weather, not age* applied to a body that has been through something, and it is the clause above written one layer in — the cloth rule and the body rule are the same rule.

**WRITE THE STATE, NOT THE ACTION** (author, s53, twice in one session). A still picture cannot hold a thing happening over seconds, so name the state it leaves and let the eye supply the verb. *The arm is not quite steady* cannot be drawn; **the lamp tilted slightly off level and the flame leaning** can, and did (`archive/plate-sheets.md` §ch33). *Three olive trees splitting apart from the top downward* cannot be drawn; **already split open, the trunks standing as ragged upright shells, and the strips off them out in the air clear of the trunks, low and level and mid-flight** can, and did on one run (`archive/plate-sheets.md` §ch34). This is s51's face rule — *a working part must be a state the picture can hold, not an action the face performs* — and it holds for objects and events exactly as it holds for faces.

**Before the run.** Each fact once, in the place it belongs. Every clause must be able to change a pixel; a note to a colleague goes on the sheet. A block long enough to restate itself is long enough to contradict itself, and the renderer splits the difference. Before cutting a repeat, name what it forbids and find where else that is forbidden — count the channel, not the sentence. Length is not the metric; ritual is (author, s48: *cutting for cutting's sake is not the goal … if it turns out a bit bigger sometimes, well that's that*). **A long block earns it clause by clause and a short one is not thereby right.**

**AND THESE ARE THE CHANNELS THAT KEEP BLOATING** (s51's *care with these bloated prompts*, and again at s53, where eighteen blocks were written without this pass and every one of them carried at least one of these). Each is ONE clause, once, in one place:

- **Only one person in the frame.** Composition already says *one boy alone*; a ban paragraph and a preserve line saying it again are the same channel three times.
- **The gaze.** *He is not looking at the viewer* is earned where a reference pulls the eye there; *and his head is not turned toward the viewer* is a second ban on the same channel and is only earned where the face is deliberately hidden (§Plates).
- **A ban stack.** *no glow, no haze, no cloud, nothing sprays, nothing arcs* is one channel five times, and §Absence warns that naming a thing puts the word in front of the filter — the longer the stack, the worse that gets.
- **Build, under a full figure.** The full-figure reference carries build and costume; restating *lean, hard, wiry* cannot change a pixel it has not already set.
- **The light, twice.** If Setting places the sources, the finish paragraph must not place them again.
- **A meta-preamble.** *THIS READS IN THIS ORDER*, *this is one continuous chain* — a note to a colleague. It goes on the sheet; the ordered clauses go in the block.
- **Stillness.** *Nothing is happening* does it. *He is not braced, he is not moving anywhere, nothing about him is in motion* is the same fact three more times.

## Plates — what changes from a scene

A plate is a moment, not a person, and THE PLATE FOLLOWS THE PAGE binds it (`README.md`). It writes its own composition and light every time; it says who is not in the frame; where it hides a face for its own reasons it says *no eyes are visible anywhere in the picture* and *do not turn the head toward the viewer*, which are two bans. **THE FIRST OF THOSE CARRIES A FACE THAT HAS NO REFERENCE** (s60, `prompts/plate-candidates/ch39.md`): the whole-picture suppression has four post-register runs and all four are adopted, and `ch39/the-door-at-dusk` is the one that proves it alone — a man front-on, filling a lit doorway, at the exact place the eye goes, with no features drawn on him. **So a character with no portrait is not blocked from a plate, only from a resolved face**: against the light, or out of frame, the moment can be made, and `ch37/the-name-at-the-table` and `ch38/the-table standing` were filed blocked under the older reading. **The second ban still has one instance, pre-register, and one confounded run** (`ch38/the-eight-lights`), and remains unproven. **The prompt is written straight into `prompts/plates/ch<NN>-<slug>.md`, which is the source** (author, s58), with the run record under it and its CHOSEN entry on `prompts/plate-candidates/ch<NN>.md`. Prompts that have already run are not retrofitted, and where the author optimised one before running it, the file holds their version, as run.

## Limits

Run-to-run variance is real: rerun before changing anything. **A SUBSTANCE LYING IN THE GROOVES OF METAL, DISTINCT FROM THE METAL, DOES NOT RENDER** (s60, `prompts/plate-candidates/ch39.md`, dropped after two runs): matte black worked into the folds of a worn iron band — *the way ink lies in the cut of a letter* — came back as ordinary dark metal against a dark ground, and then, with the iron rewritten bright pale silver and the black named as the only dark thing on it, came back absent again. Both runs are otherwise fine pictures. Two grounds, one result: the distinction is below what the medium separates, and no rival-demotion fixes it. The tool pattern-matches — overlapping limbs, occlusion and held objects at odd angles are where it breaks, which is what an action scene is. The methods here get a usable image in two or three attempts; for a fight beat rendered exactly, this is reference material for a commission.
