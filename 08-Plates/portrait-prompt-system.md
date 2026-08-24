# Portrait Prompt System

Tinted wash character portraits. Tool: ChatGPT image generation — no negative prompts, describe what you want rather than what you don't.

**How it works:** a fixed STYLE block, then a per-character AGE block, then an optional HAIR line, then a short SUBJECT block. Generate unanchored — no reference image attached.

**The three-part split is new at s34 and it was forced by a successful run.** The STYLE block was written as *identical across every character* and never actually was: the doc's own age note already told you to edit it for an older version of a character, and Aurelian's run needed an age paragraph written for a boy whose body is ahead of his face. **Age anatomy is per-character by nature — it is the one thing a shared block cannot carry.** So it is a block of its own now, and the fixed part is genuinely fixed.

---

## STYLE block — fixed

Paste verbatim, every time, for every character.

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

**CUT AT s34, and it stays cut:** the colour paragraph used to end `soft ochre in the mid-tones, most colour in the cheeks, nose and ears`. The ears ran hot from the first run and it was logged as a nuisance; Aurelian made it a fault. **A hot cheek competes with the eye**, which is fatal to a warm eye (his amber) and expensive for a dark one (Elarine's near-black). Cutting it is what let the amber win, and no character has ever needed it.

## AGE block — per character

Paste one, under the STYLE block. This is where the age lives; **age words in the SUBJECT block alone get ignored, and always have.**

**Aurelian — the body ahead of the face** *(the version that ran)*:

```
Age: eyes set at the vertical midpoint of the head. Fifteen — the
body is ahead of the face. Jaw softly defined but not sharp, cheeks
still full and unhollowed beneath the cheekbone, chin small, skin
smooth with no hardness anywhere in it. Adolescent face on a frame
that has outgrown it.
```

**Elarine — small, and nothing caught up yet:**

```
Age: eyes set at the vertical midpoint of the head. Fifteen, and
small for it. Jaw softly defined but not sharp, cheeks still full
and unhollowed beneath the cheekbone, chin small, neck slender,
skin smooth with no hardness anywhere in it. A small unfinished
frame; nothing about her has caught up with her yet except the
eyes.
```

**Vask — grown and worn down** *(the adolescent anatomy has to go entirely, not be softened)*:

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

**Neris — grown, and the age is in the eyes:**

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

**REVISED s34 — the first version said *about forty* and came back a decade older than that.** The number was not the fix. `03`'s *ages of watching in the face* **is a QUALITY, not a quantity of lines**, and the run read it as skin — so the block now forbids the skin from carrying it and relocates the watching to the eyes, where the sheet always meant it.

**AND THE CLAUSE THAT MAKES IT WORK IS THE ONE THAT FORBIDS YOUTH:** *Not girlish, not unformed — a fully adult face that has simply not been worn.* An age block that only strikes out lines resolves *no lines* into *young*, and hands back a girl. **For an unworn adult you must forbid both ends** — the wear and the youth — and the positive term is the middle: *fully grown, and nothing has been taken out of her face yet.* This is the reusable half of the adult age block and it will matter for anyone the book wants grown but undepleted.

**Severin — old, and worn to what mattered** *(the third adult block, and the only genuinely elderly one)*:

```
Age: an old man of about sixty-five — old, and POWERFULLY BUILT.
Eyes set well above the vertical midpoint of the head. Deep lines
cut from the nose to the mouth, across the forehead and at the
outer corners of the eyes; the skin coarse, dry and weathered,
drawn tight over the bone. The face pared down to its structure,
brow and cheekbone and jaw all hard and clearly readable.
POWERFUL, NOT WASTED — a big heavy frame with hard muscle still on
it, wide square shoulders, a thick corded neck, a heavy jaw, the
head sitting solid and square on the body. NO hollow cheeks, NO
sunken temples, NO thin or scrawny neck, NO slackness or sagging
anywhere, NO frailty of any kind. WORN TO WHAT MATTERED:
everything inessential gone and every essential thing still there.
Not frail, not gaunt, not sick, not wispy, not
kindly-grandfatherly. An old man who is plainly still dangerous
and completely at ease about it.
```

**The original, still correct for Kael, Valeria and Aeliana:**

```
Age: eyes set at the vertical midpoint of the head, jaw softly
defined but not sharp, some remaining fullness in the cheeks.
Adolescent, not grown.
```

For an older version of a character, rewrite this block — do not just change the SUBJECT age line, and drop `Adolescent, not grown` plus the cheek fullness or they will fight the older read.

## HAIR line — optional

```
Hair: irregular clumps and locks of varying thickness, uneven
edges, naturally settled rather than combed.
```

**Include it for loose or unkempt hair** — Kael's hacked crop, Valeria's and Aeliana's loose lengths. **Omit it for any groomed or bound head**: it fights `groomed, not tousled` (Aurelian) and `bound tight at the nape, not one strand loose` (Elarine), and the SUBJECT block loses.

## SUBJECT block — template

The age words here do almost nothing on their own — **the AGE block above is what carries it.** Keep the identity line anyway; it sets station and sex.

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

---

## The eight characters

### Kael

```
SUBJECT — cool pale parchment ground.
A fifteen-year-old mountain village boy.
Eyes near-white neutral grey — the LIGHTEST VALUE in the picture,
cool and colourless, not the most saturated. Distinct dark limbal
ring, small dark pupil.
Dark hair, unstyled, hacked short and uneven by hand, falling over
the forehead.
Sun-weathered and wind-chapped from work at altitude, freckles
across the nose, cool grey soot and dust along one cheekbone and in
the creases of the neck — the grime stays cool grey, never warm
brown.
Handsome, with faintly asymmetrical features — one brow set
slightly higher, nose a fraction off centre. Narrow neck, no facial
hair.
Expression still and level, mouth closed and relaxed, gaze flat and
direct. Neither hostile nor sad.
Threadbare open-collar linen shirt, coarse weave, frayed at the
collar edge, in dull umber and olive.
```

### Valeria

```
SUBJECT — cool pale parchment ground.
A sixteen-year-old girl.
Eyes vivid green — the most saturated point in the picture,
luminous against the muted palette, set against heavy dark lashes
and strong dark brows so the green reads sharp.
Long straight dark hair, blue-black, falling loose past the
shoulders.
Clear unmarked skin, no freckles.
Slightly rounded face, faint hollow beneath the cheekbone, small
chin, straight nose, narrow neck.
Expression: chin level, gaze flat and direct into the viewer, mouth
closed and still. Unimpressed and faintly tired. Not vulnerable,
not wistful, not searching.
Dark wrapped garment, plain heavy fabric, no ornament, in deep
charcoal and cool grey-blue.
```

### Aeliana

```
SUBJECT — warm aged parchment ground.
A sixteen-year-old girl.
Eyes pale blue — the most saturated point in the picture, luminous
against the muted palette.
Long wavy silver-white hair falling loose past the shoulders,
partly pinned at the crown, almost colourless, rendered mostly as
bare paper and the palest cool greys with fine ink strands defining
the locks. Colourless silver-white, not blonde — no yellow or gold
in the hair. The hair is the lightest mass in the picture.
Pale untouched skin, freckles across the nose and cheeks.
Face slightly rounded rather than elongated, small rounded chin,
straight nose, short philtrum, slender neck.
Expression quiet and slightly unguarded, lips closed and soft.
Dark embroidered high-collar court garment — scrollwork filigree
worked into the cloth itself at the collar and over the shoulder, in
tarnished gold thread against deep charcoal, the cloth in cool
grey-blues and dull umbers. Embroidery only: no armour, no pauldron,
no plate, no metalwork of any kind.
```

### Aurelian

**ADOPTED:** `images/portraits/aurelian-14.png`. Uses the **Aurelian AGE block** and **no HAIR line**.

```
SUBJECT — cool pale parchment ground.
A fifteen-year-old boy of a great house.
Eyes warm amber, gold-brown — the most saturated point in the
picture, luminous against the muted palette. The skin immediately
around the eye stays pale and cool-shadowed so the amber does not
merge into the warmth of the face; the eye is the one warm
saturated point in the picture and the cheeks stay quieter than it.
Dark-gold hair, thick and heavy, well cut and well kept, pushed
back off the forehead — groomed, not tousled.
Clear well-fed skin with sun on it from riding and hunting — no
weathering, no chapping, no grime, no freckles.
Broader through the shoulders and longer in the limb than the age
would give, the frame already settling toward a man's — a boy built
a year ahead of himself.
Strong even bone structure, straight nose. The jaw broad but not
yet set, the cheek still soft, the face several years behind the
shoulders.
Expression open, easy and pleasant, mouth closed with a faint
readiness to smile at one corner, chin carried high, gaze direct
and entirely unguarded — the face of someone who has never once
been put on the ground by anything. Not smug, not sneering, not
cruel, not haughty.
Good dark wool, well made and well fitted, an open collar over a
clean undershirt, in deep umber and warm charcoal. No ornament, no
insignia, no chain, no badge — the quality is in the cut and the
cloth.
```

**CANON NOTE — *riding and hunting* IS A RENDERING STEER, NOT CANON.** It is the phrase that bought the well-fed nobleman's colouring instead of a labourer's, and it earned its place in the block. **It is true of nobody in `03`:** Aurelian's sun comes off the yard, four days a week, on purpose, taking bruises from a seventeen-year-old spear. **Do not let it migrate into `03` or onto a page** — it is a prompt-side lever and it stays inside this file. If a future run wants the sheet's own version, *sun on it from training outdoors every day by choice* is the swap to try.

**WHAT THE RUN PROVED.** The amber fence works — the eyes are the one saturated point and they win a picture with a lot of warm hair in it — but **it works because the cheeks were demoted in two places at once**, the fixed block's cheek clause cut and the SUBJECT's `the cheeks stay quieter than it` added. Do not remove either half and expect the other to hold. **The two-sentence facial structure also outperformed one clause:** *Strong even bone structure, straight nose.* then the age sentence separately. Bone and age fight if they share a sentence.

### Elarine

**ADOPTED:** `images/portraits/elarine-14.png`. Uses the **Elarine AGE block** and **no HAIR line** — bound-severe hair and `naturally settled rather than combed` cannot both win. Below is the block **as it ran**.

**WHAT THE RUN PROVED, AND ONE LINE OF IT IS A LIE.** The hair, the collar and the build all came through hard, and **the costume is the best this system has produced** — high buttoned collar, close, exactly made, no ornament, *nothing on her that does not work* rendered instead of stated, and it puts real distance between her and Valeria's wrapped charcoal. The expression held too: level, appraising, still, **no verdict reached.**

**But `the DARKEST VALUE in the picture` did not happen and could not have.** She has ink-dark hair by page canon, so the darkest mass in the frame is her own head at twenty times the area. **The eyes won on FINISH instead** — the only fully resolved thing in a loose picture. **Two ways to fix it, and the second is better and was found later (s34, off Neris's run): demote the hair.** Render it as *fine ink strands and open transparent washes with bare paper left through the mass, soft wash-bled edges, no hard-edged black anywhere in it*, then state that *the sharpest step from light to dark in the whole picture happens inside the eye itself, at the edge of the iris.* **A dark eye can beat dark hair once the hair stops being a solid mass** — Neris proved it on a face with dark hair, dark eyes and no colour in the frame. **Or, keeping what her own run actually did, swap the eye clause for finish:**

```
Eyes very dark brown, near black — the MOST FINISHED thing in the
picture. Everywhere else the drawing is loose and suggestive; the
eyes alone are rendered tight and exact, sharp-edged, fully worked
out, with one clean catchlight. Not the most saturated and not the
darkest — her hair is as dark — they win by being the only part of
the image that has been finished.
```

**Her flush was not spent** — the cheek guard held, and the *spots of colour high on her cheeks* stay available to a plate of Ch. 13 or Ch. 17.

```
SUBJECT — cool pale parchment ground.
A fifteen-year-old girl of a great house.
Eyes very dark brown, near black — the DARKEST VALUE in the
picture, not the most saturated. The only place in the image where
the ink goes fully solid: two small absolute darks in a face made
otherwise of pale washes. Small, steady, precisely drawn, and the
darkest thing in the frame by a clear margin.
Ink-dark hair, a flat neutral black with no blue in it, drawn back
severely off the face and bound tight at the nape, not one strand
loose, the whole mass smooth and close to the skull.
Pale untouched indoor skin, clear and unmarked, no freckles. The
skin's warmth stays low and even across the whole face; no high
colour in the cheeks.
Small and finely built — narrow shoulders, a small head, a slender
neck.
Fine economical features, nothing exaggerated anywhere. The face
small and still unfinished, the cheek soft, nothing about her yet
grown into itself.
Expression: attention fully engaged and giving nothing back. Eyes
level and fixed on the viewer, mouth closed and still, brows
unmoved. She is in the middle of working something out and has
arrived at no verdict. Not cold, not haughty, not bored, not
amused, not tired.
Plain dark clothing of very good quality, close-fitting and exactly
made, a high buttoned collar to the throat, in ink-black and dark
olive. No jewellery, no embroidery, no ornament of any kind —
nothing on her that does not work.
```

### Vask

**ADOPTED, AND THE TWO DEPARTURES BELOW ARE ACCEPTED (author, s34) — no further run owed.** `images/portraits/vask.png`, run 3. **The age is right** (thirty-five, matching Neris) and the hair length, eyes, expression and cloth are all right. **Two things are not, both the cost of the youth instruction winning, and both were ruled acceptable rather than fixed. `03` DOES NOT MOVE:** it still says *greying early at the temples* and *a face like used tools*, those remain prose canon, and this portrait simply does not carry them. **A rendering that under-delivers a sheet is not a licence to edit the sheet.** The corrected block is below if anyone ever regenerates him.

1. **THERE IS NO VISIBLE GREY AT ALL, AND THE FENCE ATE IT.** Diagnosed, not guessed: the block aimed **five separate negations at light values in the hair** — *no hard-edged white*, *never a streak, never a seam, never a blaze or band or shape of white* — and the tool resolved the pile-up the cheapest way available, by putting **no light in the hair whatever.** Same overshoot as `no freckles`: a negation stack aimed at a feature suppresses the feature, not just its bad form. **The fix, now in the block, is one shape ban plus a positive COUNT:** *roughly one strand in six is grey, scattered evenly right through the mass and thickest at the temples, and the grey must be plainly visible at a glance. It is SCATTERED, never GATHERED — no streak, no seam, no patch.* Untested.
2. **THE FACE IS NO LONGER *A FACE LIKE USED TOOLS*.** `03`'s phrase survived at forty and did not survive the trip to thirty-five; this reads as a weathered handsome man rather than a used one. **The weather/age split is still correct, but the weather itself came down with the age** and needs restating on its own, the same lesson as the grey.

**Both are block bugs, not sheet bugs** — `03` is unchanged and right.

**THE PARENTS ARE THE SAME AGE (author ruling, s34)** — a relative fact only; both remain *age unpinned* in `03` and their files stay bare-named. Uses the **Vask AGE block** and **the HAIR line**. No age suffix, per the unpinned-age rule. **The block below is the order that ran: the length line BEFORE the demotion paragraph**, which is the reverse of how it was drafted and is how it worked.

```
SUBJECT — cool pale parchment ground.
A grown man of a mountain village, a herder by every appearance.
Eyes iron-dark, near black — the DARKEST VALUE in the picture, and
the sharpest step from light to dark anywhere in the image happens
inside the eye itself, at the edge of the iris.
Iron-dark hair of MEDIUM LENGTH — long enough to cover the ears
and reach the jaw, roughly cut a long time ago by somebody who was
not being careful and grown out since. Falling where it falls,
pushed back off the forehead.
The hair is dark but never a solid mass: rendered as fine ink
strands and open transparent washes with bare paper left through
it, soft wash-bled edges, no hard-edged black and no hard-edged
white anywhere in it. The grey lives in that openness — scattered
pale strands among the dark. HE IS GREYING EARLY, ahead of his
age: roughly one strand in six is grey, scattered evenly right
through the mass and thickest at the temples, and the grey must be
plainly visible at a glance. It is SCATTERED, never GATHERED — no
streak, no seam, no patch.
Weathered hard — wind, sun and salt worked deep into the skin, the
whole face used. The weathering is on the surface and the face
under it is not old.
Broad through the shoulders and no further: heavy across the top
of the back and the neck, nothing wasted below it, an economy
rather than a bulk.
Expression: level, mouth closed, gaze direct and completely
unreadable. There is nothing in his eyes that is angry and nothing
in them that is anything at all. Not hostile, not cold, not sad,
not kind, not tired. Perfectly still — a man who moves exactly as
much as is required and is not moving now.
Coarse undyed working cloth, heavy weave, a plain collar closed to
the base of the throat, much mended, in dull grey-brown and dead
olive. No ornament, no buckle, no badge.
```

**REVISED TWICE — before the first run off Neris's findings, and after it off its own.**

**WHAT RUN 1 PROVED, and the first item is the important one.** **The hair-demotion paragraph killed the drain-mark by construction.** No streak, no seam, no shape of white anywhere — the grey arrived as scattered pale strands in an open mass, exactly as specified. **Forbidding the shape had failed to be reliable; removing the material the shape is made of worked.** Also confirmed: **darkest value works on him** (the eyes are the darkest thing and the sharpest step), and the empty expression landed — *nothing in them that was anything*, without tipping into menace.

**WHAT RUN 2 SETTLED.** **The weather/age distinction is confirmed** — he lands at forty-odd with every weathering instruction intact, which is the whole claim. The eyes win on darkest value with the sharpest step at the iris; the expression holds *nothing in them that was anything* without leaking menace; and he reads unmistakably as Kael's father while staying clearly separate from him — the son's crop is hacked short, the father's is medium and grown out.

**ONE THING RUN 2 LOST, AND TAKING HIM TO THIRTY-FIVE FORCED IT TO BE SOLVED.** Run 2's grey was much fainter than run 1's — pulling him younger took the salt out along with the age, while `03` still says *iron-dark hair greying at the temples*. At forty that was tolerable. At thirty-five the age block would erase it entirely, so **the grey is now stated as PREMATURE rather than left to fall out of the age**: *he is greying early, ahead of his age, and it must be visible — a young man's face under a head that has already started to go.* **This is the better reading anyway** — the same *past its years* the face carries, carried by the hair, on a man `00` made an instrument before Kael was born. An instruction that another block is actively fighting has to be given its own reason, not a bigger adjective.

**WHAT RUN 1 GOT WRONG — HE CAME BACK FIFTY-FIVE, AND THE FIX IS A DISTINCTION.** `03` says *a face like used tools, weathered past its years*, and the block turned that into structural age: sunken temple, scored forehead, coarsened thickened skin. **Those are what read as decades. WEATHER AND AGE ARE DIFFERENT THINGS AND THE BLOCK MUST SAY SO** — weather is what sun and wind do to the *surface*, age is what time does to the *structure*. Vask is heavy on the first and light on the second, and the revised block says it in as many words: *the wear on him is WEATHER, not AGE — sun and wind and salt worked hard into the surface of a face whose structure underneath is still young and hard.* **This is the general lever for anybody the book wants weathered but not old**, and it is the third form of the age counterweight: Neris forbids youth, Vask forbids depletion, and now Vask also forbids age-as-structure while keeping every bit of the weather.

**HAIR: MEDIUM LENGTH (author ruling, s34), and it was free** — Vask's hair length appears on no page and in no sheet. It also separates him from his son, whose crop is *hacked short and uneven by hand*.

**UNRULED AND ADOPTED BY DEFAULT: he has stubble.** The block says nothing about facial hair and run 1 supplied it. Kael's block says *no facial hair* explicitly; Vask's says nothing, so this is a decision the tool made and nobody has ratified. Rule it or leave it, but know it is not canon.

**AND THE PRE-RUN REVISION, off what Neris's run taught.** Two changes, both load-bearing.

**(1) THE HAIR-DEMOTION PARAGRAPH DOES TWO JOBS HERE AT ONCE.** It was found on Neris as the enforcement half of the local-contrast mechanism — demote the rival dark mass, then site the sharpest step inside the iris. On Vask it also **makes the drain-mark impossible by construction:** hair rendered as fine ink strands and open washes with bare paper through it, with *no hard-edged white* and *never a shape*, **cannot resolve into a seam.** A solid mass can carry a streak; an open one cannot. This is a better fence than the negation alone, because it removes the material the error would be made of.

**(2) THE AGE BLOCK NEEDED A POSITIVE MIDDLE TERM, and his is the opposite of Neris's.** Hers forbade wear and had to forbid youth as well, or *no lines* resolves into *a girl*. His piles on wear and had to forbid **depletion**, or *weathered past his years* resolves into *an old man* — and Vask is the man who delivers the most terrifying display of skill in Book One. *Heavily worn, and nothing has been taken out of him.* **Then the second half, which is the concealment:** *and nothing on display: a man who has worked outdoors for forty years, and no more than that.* **He must not read as dangerous.** The reader never sees him fight until the fire; a portrait that leaks menace spends the whole design.

**CANON NOTES.** **The grey is the dangerous instruction in this block.** `02` has exactly two body-marks of magic and one of them is **white hair — the drain-mark, meaning this person went to the bottom of their reserve and nearly died.** Ruthen arrives on the page as *the master with the seam of white through his dark hair*, and Ch. 9 spends a whole paragraph on forty children not looking at it. **An image cannot tell greying-at-forty from a seam of white**, so the block forbids the shape and permits only the scatter. Check every run for a defined streak; if one appears, it is not a stylistic quibble, it is a magic system claim.

**HIS SCARS ARE DELIBERATELY OUT OF FRAME, and both are page-referenced.** The **long seam is in his shoulder** (Ch. 19: *whose was the blade that made the seam in your shoulder and where were you standing when it came*) and the **tally-marks are on the forearm** (Ch. 19: *the tally-marks came up out of the sleeve and lay there where they had lain in front of Kael for twelve years*). The page has never described either — they exist as questions Kael has never been allowed to ask. **The closed collar is on purpose:** there is no reason to spend the seam in a face reference and every reason not to. Both belong to the full figure, where the sleeve can come up.

### Neris

**ADOPTED:** `images/portraits/neris.png` — **the first adult portrait in the library, and the adult AGE block is proven by it.** Uses the **Neris AGE block** and **the HAIR line**. No age suffix, per the unpinned-age rule.

**WHAT THE REVISION PROVED, on three separate counts.** (1) **The age fix works, and the fix is to forbid the skin.** Naming a younger number did nothing on its own the first time; what moved the render a decade was the explicit list of what the face may not do — no mouth lines, no forehead, no hollowing, smooth neck — with the watching relocated to the eyes. (2) **Loose hair needed a light touch, not a heavy one.** *Fastened plainly for work* produced a bun; *unstyled and naturally settled… not arranged, not severe, not styled for anything* produced loose hair. **A four-item negation stack was drafted and never run** — the run used the light version and did not need it. *(Recorded wrong at first: this file briefly claimed the stack was what worked. It was not run. **Do not credit a technique to a prompt that was not the one used.**)* (3) **LOCAL CONTRAST WORKS — AND IT IS A TWO-PART INSTRUCTION, which is the finding.** Describing how the eye wins is not enough; the competing dark mass has to be demoted in the same breath. The paragraph that did it — *the hair is dark but never solid: fine ink strands and open transparent washes with bare paper left through the mass, soft wash-bled edges, no hard-edged black anywhere in it*, then *the sharpest step from light to dark in the whole picture happens inside the eye itself, at the edge of the iris* — **demotes the rival, then sites the winner.** The eyes carry a picture of a woman with dark hair, dark eyes and no colour anywhere in the frame. **The fifth mechanism is real, and it needs both halves.**

**THIS IS ALSO THE ANSWER TO ELARINE.** Her darkest-value clause failed against her own ink-dark hair, and the fix recorded at the time was to abandon the mechanism for *finish*. **That was one option and this is the better one:** demote the hair to strands and washes and a dark eye can beat dark hair after all. Use this paragraph if she is ever regenerated.

(4) **The brown arrived as an EDIT PASS, not in the prompt** — the block ran with *long dark hair* and the colour was changed afterwards. So the adopted image has spent one of its two edits (see §Known behaviours: granulation softens and the palette warms with each). The block above now carries the brown inline, so a fresh run starts clean.

```
SUBJECT — cool pale parchment ground.
A grown woman of a mountain village, to all appearances.
Eyes dark brown — they win the picture on CONTRAST rather than on
colour: a dark iris against a clean, light, clearly drawn sclera,
the widest jump from light to dark anywhere in the image packed
into the smallest area, while the whole face around them is held
at a quiet middle value. The eyes read wide open and awake.
The face around the eyes is held at a quiet even middle value. The
hair is dark but never solid: rendered as fine ink strands and open
transparent washes with bare paper left through the mass, soft
wash-bled edges, no hard-edged black anywhere in it. The sharpest
step from light to dark in the whole picture happens inside the eye
itself, at the edge of the iris.
Long dark brown hair falling loose past the shoulders — warm rather
than cool, plainly brown and not black, no blue anywhere in it —
unstyled and naturally settled, a few strands across the temple.
Ordinary — not arranged, not severe, not styled for anything.
Skin with weather and sun on it but not coarsened — she has worked
outdoors for years and it has not got into her the way it gets
into the others.
Fine bones — a narrow nose, a fine jaw, good structure close under
the skin. Handsome and unremarkable in the same breath.
Expression: entirely still, and the stillness is the subject of the
picture. Attentive, composed, giving nothing back, watching the
viewer the way you watch something you are deciding about. Mouth
closed and relaxed. Not cold, not sad, not kind, not warm, not
maternal, not tired.
Plain village working cloth — a coarse overdress over a plain
undershirt, the neck closed, in dull grey-brown and undyed
oatmeal, worn soft and much mended. No ornament of any kind.
```

**HAIR: LONG AND LOOSE (author ruling, s34), and it was free.** Checked before changing it, because Valeria's length turned out to be page canon at s33 and cost a prose edit: **Neris's hair appears nowhere in the manuscript and nowhere in `03` beyond *dark-haired*.** No prose moves. The first run read *fastened plainly for work* as a bun, so the block now kills every fastening by name — negating the shape is what the tool actually responds to.

**COLOUR: DARK BROWN, AND IT COSTS NOTHING (author ruling, s34).** Checked before changing: **Kael's hair colour is not on any page either** — the manuscript never names it, and *dark hair, his mother's* lives only in `03/kael`, `03/wren` and `03/appearance-ledger`. **`03`'s *dark-haired* already admits dark brown**, so no sheet moves, the maternal inheritance stays true, and no adopted image is invalidated. **Do not re-raise this.** A *mid*-brown would have been a different question — it would have had to reach Kael and Wren or break the one feature Kael visibly gets from either parent.

**SILHOUETTE WATCH:** long loose dark hair puts her within reach of Valeria. The brown helps — **Valeria's is blue-black and Neris's is warm**, so they now separate on temperature as well. They separate on everything else and it holds — **grown woman vs thirteen, village overdress vs uniform and steel, stillness vs a body that reads as function at rest.** Per the README's separation method: provenance and bearing first, never the face.

**CANON NOTES.** **Her eyes are dark by author ruling (s34) and that is what she looks like every day of her life.** She can switch them off (00 s20) and always could; the Kynemir red is the truth underneath and is **not** what a canonical reference shows. A switched-on variant stays available as a deliberate second file for a moment the book actually spends. **Do not put red in this one.**

**THE PORTRAIT MISSES HER, AND IT IS THE CROP'S FAULT, NOT THE BLOCK'S.** Every appearance the page gives Neris is her **hands** — *his mother's hands were quieter; they were the hands that undid knots* (Ch. 1) · *her hands rested on it the way her hands rested on bread dough, at home* (Ch. 4) · *his mother's hands were flat on the table* (Ch. 7) · *his mother's hands moved at the loom, each already leaving when the eye arrived* (Ch. 14) — and `03` makes them the lie's weak point: *the hands know too many trades.* A head-and-shoulders portrait cuts off the only part of her the book has ever spent. **Her full figure is not optional the way the others' were**, and it must put the hands in frame and occupied.

**HER PLATE IS ALREADY COMPOSED, BY CH. 4:** *His mother sat at the window in the dark with her back straight and her face to the sea, and across her knees, unsheathed, lay a blade he had never been shown, long and thin and older than the tools on the wall, and her hands rested on it the way her hands rested on bread dough, at home.* Back, window, sea, blade, hands. Nothing needs designing.

**AND SHE IS EIGHT OR NINE MONTHS PREGNANT** through the whole of the tournament season. Invisible at head-and-shoulders; unavoidable in a full figure or any Part III/IV scene. Decide it deliberately rather than by default.

### Severin

**NOT YET RUN.** Uses the **Severin AGE block** and **the HAIR line**. File as `images/portraits/severin.png` — no age suffix; `03` says *old*, not a number, same rule as the parents.

```
SUBJECT — cool pale parchment ground.
An old man, the head of a school.
Eyes very dark brown, near black — the DARKEST VALUE in the
picture by a wide margin, and the sharpest step from light to dark
anywhere in the image happens inside the eye itself, at the edge
of the iris. His hair is the lightest mass in the frame and his
eyes are the darkest point in it, and that opposition is the whole
picture.
Hair FULLY GREY — the entire head, evenly and completely, a true
neutral grey that is neither warm silver nor cold white. A FULL
THICK HEAD OF IT, coarse and heavy, worn LONG — swept back off the
forehead and falling past the collar to the shoulders. Not
thinning, not wispy, not receding, no scalp showing.
A full grey beard and moustache, close-cropped and neatly kept,
the same neutral grey as the hair.
The grey is uniform everywhere: no streak, no seam, no band, no
patch, nothing gathered or shaped anywhere in it, and no part of
it lighter or colder than any other part.
A big powerful old man — tall, long in the bone, wide and thick
across the shoulders and deep through the chest, with visible hard
muscle across the shoulders and upper back. Heavy thick wrists and
forearms, far too thick for a man whose work is paper. The robes
do not disguise any of it: the frame reads straight through the
cloth.
A scholar's stoop laid over the top of that body and not fitting
it — the head carried a little forward, the shoulders rounded, and
the powerful frame underneath plainly not built for the posture.
The stoop is a habit worn badly over a fighter's body, and both
must be visible at once.
Expression: courteous, unhurried, attentive, and giving out
nothing. Mouth closed and relaxed, the gaze level and patient — a
face that has already priced whatever it is looking at. Not warm,
not kindly, not stern, not sad, not tired.
Dark master's robes, heavy and plain, worn loose and open at the
front over a plain undertunic so the chest and shoulders read
through rather than being swallowed by cloth, with a broad chain
of office lying across both shoulders — plain linked
metal with real weight in it, dull and unpolished, no gems and no
ornament of any kind. In deep charcoal and cold grey-brown, the
chain in tarnished bronze.
```

**THE AUTHOR'S REFERENCE IS SILVERS RAYLEIGH (s34)** — *One Piece*, the old swordsman: long swept-back grey hair, a cropped beard, a big powerful body still obviously capable, and complete ease about it. **Taken from it:** the body, the bearing, the long swept-back hair, and the beard. **The stoop is what makes the borrowing exact rather than a compromise** — `03` reads *an enforcer's frame under a master's robes*, and Ch. 4 has the scholar's stoop *sitting on him the way a borrowed tool sits in the hand.* **So: Rayleigh's body, with the page's badly-worn stoop laid over it.** The stoop is the disguise and the frame underneath is the man, and both must be visible at once. That is the character, not a concession to it.

**NOT TAKEN, and each for a reason:**
- **THE WHITE.** Rayleigh reads silver-white. **Severin must stay a TRUE NEUTRAL GREY** — cold white is the drain-mark's own register (*pure quartz white*, `02`) and would confirm the valve `00` protects. This is the one hard no in the borrowing.
- **THE GLASSES.** **No eyewear exists anywhere in this world** — not on a page, not in `02`, not in `03` — and `03/priscian` has *a squint from a life at close text*, which is precisely the detail that would not be there if spectacles were available. Adding them is a `02` worldbuilding ruling that costs Priscian's squint, not a plate decision. **Ask before drawing them.**
- **THE OPEN CHEST AND THE MANTLE.** He wears robes and a chain, page canon twice. What the block does instead is wear the robes **loose and open at the front** so the chest and shoulders read through — the Rayleigh silhouette inside the costume the book actually gave him.

**REVISED AFTER RUN 1 — HE CAME BACK FRAIL, AND IT IS THE SAME MISTAKE FOR THE THIRD TIME THIS SESSION.** The block stacked positive depletion — *the flesh reduced · skin thinned, slackened along the jaw and the throat · the cheek hollowed, the temple hollowed · thinning* — and set one negation against it, *not frail*. **The negation lost, exactly as `no freckles` lost and exactly as the five white-bans lost Vask's grey.** It also said *genuinely old — not a vigorous fifty*, which pushed the same way.

**THE RULE, NOW STATED THREE TIMES OVER AND WORTH LEARNING: SEPARATE THE QUALITY YOU WANT FROM THE ADJACENT QUALITY THAT READS AS DECLINE, AND NAME BOTH.** Vask needed *weather, not age*. Severin needs **LEAN, NOT WASTED** — dry hard flesh over heavy bone, nothing soft left on him and nothing missing either — plus an explicit list of the frailty markers that are forbidden (hollow cheeks, sunken temples, scrawny neck, slackness, thinning hair), plus a positive body: *a big old man who is still strong, not a thin one.* **One negation cannot hold a line against six positive instructions pointing the other way.**

**AND THE PAGE BACKS THE CORRECTION.** This is a man who *came over the front of the host's box, dropped the height of a man, and went into the north curve against the flow* (Ch. 27), and who crossed the whole width of an arena at a walk (Ch. 26), and whose sheet reads **an enforcer's frame under a master's robes.** *Old the way the split rock is old* is not fragility — **a split rock is what is left when everything soft has gone, and it is the hardest thing on the mountain.**

**THE GREY IS THE WHOLE PROBLEM, AND THE BLOCK ANSWERS IT WITH FRAMING.** `03` says *hair fully grey — the second reading never confirmed*, and that reading is a valve `00` protects: **is his grey age, or is it drain?** The book refuses to say, and s30 has the tournament's six days *deepening* it. **An image cannot decline to answer**, so the portrait renders the AMBIGUITY rather than resolving it, which is what the hard rule means by framing:

- **Not the drain register.** `02` names the drain-mark **pure quartz white — cold and hard**, and Ruthen wears it on the page as *a streak of white through his dark hair, one clean seam of it, like quartz through rock.* A cold white Severin, or any seam at all, **confirms the drain and spends the valve.**
- **Not comfortable old age either.** Warm silver quietly kills the second reading, which is just as much a spend in the other direction.
- **So: a true neutral grey, complete and even, nothing gathered anywhere.** *No part of it lighter or colder than any other part* is the operative line — it forbids the seam and the quartz register in one clause.

**PAGE CANON, and most of this portrait is already written (Ch. 4):** *old the way the split rock was old — worn to what mattered. Tall, gone lean, grey all the way through… He walked with a scholar's stoop that sat on him the way a borrowed tool sits in the hand, and the wrists coming out of the sleeves were too thick for a man whose work was paper.* **The stoop is borrowed and the wrists are the tell** — the enforcer's frame under the scholar, which `03` makes the point of his body. Both are in the block and neither is invention.

**EYES DARK, NEAR-BLACK (author ruling, s34)** — unruled in 00, 02, 03 and on every page, the same gap Aurelian's amber filled. Fed to `03/severin`. **Mechanically it is the best case in the library:** a fully grey head is a light mass, so a dark eye wins on darkest value outright — the exact conditions Elarine never had. And it does the character, which is why it was chosen: the one dark unreadable thing in a face gone entirely pale.

**COSTUME: ROBES AND THE CHAIN (author ruling, s34).** Page canon twice — Ch. 22's *robes Kael had no name for, with a chain across his shoulders that plainly had weight in it*, and Ch. 26's *an old man in robes and a chain crossing the whole width of that white floor at a walk.* **The metal is unnamed on the page and tarnished bronze is a block choice, not canon.** His other register — Ch. 4's *coat too plain to be a villager's and too well-made to be a villager's* — is the mountain-house and fire costume and is **available as a second file** if a scene ever needs it.

**SILHOUETTE WATCH — TWO LIGHTEST MASSES.** Aeliana's silver and Severin's grey are both written as *the lightest mass in the picture*, and Kael's mechanism is *the lightest value in the frame*. Separately fine; **in any shared frame one of the three has to yield**, and the rule is that the scene's subject keeps its mechanism and the others are demoted by the same technique that demotes hair.

---

## How the system works

**Three eye mechanisms.** The STYLE line says only "focal point"; each SUBJECT block states how its own eyes win, because in a muted picture there are three different ways to be the focus and a colour can only use one of them.
- **Saturation** — Valeria's green, Aeliana's blue, Aurelian's amber: the most saturated point in an otherwise desaturated image.
- **Lightest value** — Kael's near-white grey, which is almost colourless and cannot win on saturation at all.
- ~~**Darkest value**~~ — proposed for Elarine's near-black and **it does not work, s34.** She has ink-dark hair (page canon, Ch. 9), so the darkest mass in the picture is her own head and the eyes cannot beat it by a margin. **A dark eye can only win on value against pale or mid hair.**
- **Local contrast** — Neris, **CONFIRMED**. Her hair is dark and her eyes are dark, which is Elarine's dead end exactly; but an eye can win without being the extreme of the picture if it carries **the picture's widest value jump packed into its smallest area**. **Two parts, both required: demote the rival mass** (hair as fine ink strands and open washes with bare paper through it, no hard-edged black) **and then site the sharpest step inside the iris.** It reads as *open*, which for her is the entire character — and it retires the belief that a dark eye cannot beat dark hair.
- **Finish** — what Elarine's run actually did, and it is the better mechanism for her anyway. In a picture that is loose everywhere, the eyes are the only fully resolved thing: rendered tight and exact, sharp-edged, one clean catchlight, while the rest is suggestion. She wins by being **the only part of the image that has been worked out** — which is the character, exactly.

**Check the eye against the HAIR before choosing a mechanism.** Both failures found so far are the same failure: the eye competing with something large and adjacent that shares its property. Amber against warm skin; near-black against near-black hair. **Saturation, value and finish are four different axes and the eye must own one of them outright.**

**Amber is the fragile one.** A warm eye sits in a face the STYLE block has already made warm, which is the same disappearance that eats Kael's grime. Aurelian's block therefore fences the eye specifically — `the skin immediately around the eye stays pale and cool-shadowed` — and demotes the cheeks so the eye is the only warm saturated point. Check that first if his portrait comes back flat. **CONFIRMED s34:** the fence held and the amber won a frame carrying a great deal of warm hair. It needed BOTH halves — the fixed block's cheek clause cut, and the SUBJECT's `the cheeks stay quieter than it` added.

**Ground temperature is per-character.** Kael, Valeria and Elarine cool, Aeliana warm. Hers went warm because pale silver hair needs something to sit against; it stays **the one deliberate inconsistency in the set**. Aurelian was the test of that and stayed cool: dark-gold hair does not need a ground to sit against, and his warmth belongs in the skin and the hair, where the STYLE block already localises it. Warm ground remains Aeliana's alone and means something because it is.

**Warmth must be localised.** Any warm instruction spreads to the whole image unless you name what stays cool. `The warmth belongs to the skin alone, not the paper or the cloth` is what confines it. Kael needs the extra `the grime stays cool grey, never warm brown` — warm grime on warm skin disappears entirely.

**Age is written as anatomy, not adjectives.** Age words alone get ignored. What works: eyes at the vertical midpoint of the head, jaw softly defined but not sharp, remaining cheek fullness, narrow neck. For an older version of a character, change the SUBJECT age line *and* delete `Adolescent, not grown` plus `some remaining fullness in the cheeks` from the STYLE block, or they'll fight the older read.

**Complexion encodes station.** Kael weathered → Valeria mid → Aurelian clear with sun on it → Elarine pale indoor → Aeliana pale untouched. Discovered by accident on the first three, kept on purpose: five characters, five visibly different lives, none of it stated in text. Aurelian added the point the scale was missing — a great-house child who *chooses* the yard, so the sun is on him and the weather never is. **The parents extend the scale off its own top end** — Vask is weathered past Kael and past anyone, an adult lifetime of it; Neris is the anomaly on purpose, weather on her without the coarsening, because *the hands know too many trades* and the face is the half of the lie that holds. **The scale runs on VALUE AND WEATHERING, never on speckle** — see the freckle ruling under §Known behaviours; granulation puts freckles on everybody and they distinguish nobody.

---

## Unanchored vs anchored

Generate **unanchored** for canonical portraits. The earlier anchored workflow was the source of persistent age drift — each generation inherited an older face from the reference and aged it further. Removing the anchor fixed it in one pass; all three now read their stated ages.

The tradeoff: unanchored gives a slightly different individual each run. Same character type, same style, not the same face.

Use an **anchor** only when continuity within a specific image matters — multiple characters in one frame, or a follow-up to an existing plate. Prepend `Image 1: reference portrait of [name]` and add `Preserve identity exactly as shown in the reference image`. Expect the face to age.

**Age progressions are free.** Running the same SUBJECT block with a changed age line produces a coherent progression — the neck thickens, the jaw sets, the cheek hollows, weathering deepens. Label the files by age (`kael-15`, `kael-20`) rather than treating one as canonical and the other as a variant.

---

## Known behaviours

- **Run-to-run variance is real.** One Valeria run came back watery — flat washes, sparse linework — and the identical prompt on the next run was correct. Rerun before changing anything. If it persists, add `dense scratchy ink hatching throughout, ink dominant over wash in the clothing and hair`.
- **"Plain" and "not handsome" don't work.** The attractiveness prior overrides them. Dirt, weathering, hacked hair and frayed clothing do the job instead. Off-centre features described as present things (*a nose broken once and set slightly crooked*) survive where absences of beauty don't.
- **Negations fix gaze drift.** The default pull is toward a wistful upward gaze. `Not vulnerable, not wistful, not searching` corrected it in one pass where positive description alone kept failing.
- ~~**Ears run hot.**~~ **SUPERSEDED s34 — the whole clause is cut.** `Most colour in the cheeks, nose and ears` was taken literally and the ears came out pink, which was a nuisance; the real fault was the *cheeks*. High cheek colour competes with the eye for the one saturated point the picture is allowed — fatal to a warm eye, expensive for a dark one. Cut from the fixed block. Ears still warm slightly without it, and that is fine.
- **Edit passes cost texture.** Two maximum. Granulation softens and the palette warms with each one. If a third is needed, regenerate with the change written into the SUBJECT block instead.
- **Traits propagate silently.** Freckles once ended up on all three characters because the line got copied between prompts. Same risk with expression — identical affect across a cast flattens them. Decide per character.
- **A LONE NEGATION CANNOT HOLD A LINE AGAINST A STACK OF POSITIVES (s34, and this one cost three runs).** Severin came back frail against *not frail*, because six separate instructions around it said *reduced, thinned, slackened, hollowed, thinning*. **The fix is never a stronger negation — it is to separate the quality you want from the adjacent quality that reads as decline, name BOTH, and add a positive body.** *Weather, not age* (Vask). *Lean, not wasted* (Severin). *Fully grown, and nothing has been taken out of her* (Neris). Then list the specific forbidden markers by name. **This and the entry below are the same defect seen from two sides: a negation is only ever as strong as what surrounds it.**
- **NEGATION STACKS OVERSHOOT — THE GENERAL FORM (s34, two independent cases).** Point several negations at one feature and the tool removes the feature rather than its bad form. `no freckles` did not suppress freckles; **five bans on white-in-the-hair suppressed Vask's grey entirely**, which is the opposite of what they were for. **The reliable shape is ONE ban on the bad form plus a POSITIVE quantity of the good one** — *one strand in six, scattered evenly, plainly visible at a glance; scattered, never gathered.* Ban the shape, count the thing.
- **`no freckles` DOES NOT SUPPRESS FRECKLES — AND IT DOES NOT MATTER (author ruling, s34).** Elarine's prompt said `clear and unmarked, no freckles` and she came back freckled across the nose and cheek. **This is not trait contamination, it is the medium:** the fixed block asks for `pigment granulation`, the tool renders granulation on skin as speckling, and negating a trait cannot beat an instruction to granulate. **The ruling is to stop fighting it.** Granulation freckles are TEXTURE, not a mark — so **freckles do not distinguish anybody in this system**, and the `no freckles` lines in the blocks are advisory rather than load-bearing. Kael's and Aeliana's freckles are now sheet canon and stay in their blocks; they simply stop being a thing an image separates people by. *(Corrected s35: this line read* their sheet canon and their prose detail *and neither was true — freckles were in these two SUBJECT blocks and nowhere else in the doc system or the manuscript, so a block's invention had been cited back as the sheet's, which is the one thing this file's own binding rule forbids. Resolved in the sheets' favour at the author's word: `03/kael` and `03/aeliana` now carry them, unspent on any page.)* *(The lever exists if a future image ever truly needs bare skin — attack the rendering, not the trait: `skin rendered as a single flat unbroken wash — no speckling, no stippling, no granulation anywhere on the face`. Untested.)*

---

## Open question

**Valeria's costume doesn't signal her station.** She's a royal guard of noble lineage, currently dressed in plain heavy wrapped cloth with no ornament — the plainest garment in the set. Kael's rags say village, Aeliana's filigree says noble, Valeria's cloth says neither. Either design her something (uniform, house mark, proper scabbard) or decide the plainness is deliberate — off-duty, disguised, estranged. Her garment line appears in every prompt for her, so it's worth settling before generating more.

---

# Full-figure system

Same method, different BASE. Full figures are generated **anchored** to the character's face portrait — the one case the doc's own rule allows, since the point is to extend an existing face rather than mint a new one.

## BASE block — full figure

Paste verbatim, every time.

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

Close every SUBJECT with:

```
Preserve his/her face, hair, colouring and apparent age exactly as
shown in the reference image. Extend to a full standing figure; the
reference shows head and shoulders only.
```

## Kael — full figure

**ADOPTED:** `images/full-figures/kael-14-full.png` — generated in the VILLAGE register (frayed grey tunic, belt, wrapped calves, worn boots), which resolves audit item 2 below in favour of the page. **Audit item 1 STANDS AND NOW COMPOUNDS: he carries no weapons**, and the scene system attaches the full-body sheet to every scene, so every scene inherits a weaponless Kael.

```
Image 1: reference portrait of Kael — pale grey eyes, dark uneven
hair, fifteen years old.

SUBJECT — cool pale parchment ground.
Age: still adolescent in frame — narrow through the shoulders
compared to a grown man, limbs long relative to the torso, but
densely built and visibly strong for his age.
A fifteen-year-old boy, lean and hard, wiry strength from a life of
hard physical training — cabled forearms, strong hands, deep chest,
no soft weight anywhere. Compact and athletic rather than bulky.
Eyes near-white neutral grey, cool and colourless, dark limbal ring
— the lightest point in the face, visible even at distance.
Dark hair, unstyled, cut short and uneven, falling over the
forehead.
Weathered and wind-chapped from conditioning outdoors at altitude,
skin clean, no dirt or grime.
Handsome, with faintly asymmetrical features — one brow set
slightly higher, nose a fraction off centre.
Posture: standing straight and perfectly balanced, weight evenly
settled, shoulders level and relaxed, hands loose and open at his
sides. Completely still. Economical and controlled — the stillness
of someone trained, not the slouch of a labourer. Not posed, not
braced, no swagger.
Expression still and level, mouth closed, gaze flat and direct.
Plain dark clothing, well-made and well-maintained, chosen to go
unnoticed: a close-fitting long-sleeved tunic in charcoal grey,
sleeves pushed to the forearm, belted at the waist with a plain
leather belt. Dark fitted trousers. Cloth wraps at the calves. Soft
dark leather boots, worn but sound, made for quiet movement.
```

**CANON AUDIT — OWED BEFORE THIS RUNS (author: for now it's fine, resume next session):**

1. **HE HAS NO WEAPONS, and a full figure exists to supply kit.** Page canon, Ch. 23: *the two short blades were across his back in their wrap*, and *the knife was where his father had put it, off the belt, inside the coat*. `02/dueling` protects his dual-blade silhouette as distinct from Valeria's — and as drawn she has two visible swords and he has nothing. Insert: *Carried across his back, bundled in a plain cloth wrap: two short blades, hilts covered, reading as an anonymous carried bundle rather than as weapons. A plain knife carried inside the clothing rather than on the belt, not visible.*
2. **THE TWO KAEL REFERENCES DISAGREE ON CLOTHING.** The face portrait is *threadbare open-collar linen, coarse weave, frayed at the collar, in dull umber and olive*; this is *well-made and well-maintained, chosen to go unnoticed*, charcoal, boots *made for quiet movement*. Those are two different boys. **And the second quietly literalises THE COAT** — the book's central metaphor for his concealment, which `08` rules must never be designed as a look. He is thirteen, houseless, and lives on a mountain with goats: what makes him unnoticeable is owning nothing worth looking at, not selecting kit for stealth. The village register should win; the training already shows in the body.
3. ~~Minor: the block still says *plain, ordinary bone structure* against `03`'s ratified **handsome**~~ — **DONE (s34)**, in both his blocks; by this doc's own findings the word did nothing anyway. **Items 1 and 2 STAND**, exactly as the author left them.

## Valeria — full figure

**ADOPTED:** `images/full-figures/valeria-14-full.png`

```
Image 1: reference portrait of Valeria — green eyes, long straight
dark hair, sixteen years old.

SUBJECT — cool pale parchment ground.
Age: still adolescent in frame — narrow through the shoulders
compared to a grown woman, limbs long relative to the torso, but
solidly built and visibly trained.
A sixteen-year-old girl, lean and hard, trained — strong shoulders,
strong hands, no soft weight. Athletic rather than heavy.
Eyes vivid green, luminous, the brightest point in the face.
Long straight dark hair, blue-black, tied back off the face for
duty, loose strands escaping at the temples.
Clear unmarked skin, no freckles.
Posture: standing at ease but alert, weight settled evenly, chin
level, shoulders square. Both hands resting lightly on the pommels
of the two swords at her hips, elbows relaxed. Still and watchful.
Not braced, no swagger.
Expression: chin level, gaze flat and direct into the viewer,
mouth closed and still. Unimpressed and faintly tired. Not
vulnerable, not wistful, not searching.
Royal guard uniform: a fitted knee-length sleeveless coat in deep
charcoal over cool grey-blue, high collar, buttoned front, cut for
movement, worn over a close-fitting long-sleeved underlayer. Simple
bronze house insignia at the collar. Light armour only — plain
unornamented steel vambraces on both forearms, a fitted gorget at
the throat. Broad leather belt carrying a matched pair of plain
longswords, one sheathed at each hip, scabbards identical, hilts
unornamented, both blades sheathed.
Dark fitted trousers. Black leather boots to the knee, well-worn
and well-kept.
```

**CANON NOTES.** The matched pair is right and load-bearing: `02/dueling` makes the longsword the empire's ONE-handed honourable arm, so a pair is her heresy stated in her kit — *twin blades, both hands full* — and it sharpens the protected silhouette split rather than blurring it, **hers long, his short.** Page canon at Ch. 27: *both blades in her hands.* The grey does station without ornament, which suits a house whose care arrives as correction by post. **The collar insignia is CANON-BY-PRECEDENT, adopted with a known cost:** `07/planted-clues` reserves *Insignia the father recognizes with horror* for the Part IV fire, and the word appears on no page yet — so a friendly character wearing one spends the novelty early. Author kept it; recorded, not re-raised.

## Aeliana — full figure

**ADOPTED:** `images/full-figures/aeliana-15-full.png`

```
Image 1: reference portrait of Aeliana — pale blue eyes, silver-white
hair, sixteen years old.

SUBJECT — warm aged parchment ground.
Age: still adolescent in frame — narrow shoulders, slight build,
limbs long relative to the torso, not yet filled out.
A sixteen-year-old noble girl, slight and sheltered, soft — no
muscle, no weathering, a body that has never worked.
Eyes pale blue, luminous, the brightest point in the face.
Long wavy silver-white hair falling past the shoulders, partly
pinned at the crown, almost colourless, rendered mostly as bare
paper and the palest cool greys with fine ink strands defining the
locks. Colourless silver-white, not blonde — no yellow or gold in
the hair. The hair is the lightest mass in the picture.
Pale untouched skin, freckles across the nose and cheeks.
Posture: standing straight, weight even, chin level, shoulders
back, hands folded loosely in front of her. Formal and composed —
the bearing of someone raised to be looked at, taught to stand
still. Not braced, no swagger, nothing athletic in the stance.
Expression quiet and slightly unguarded, lips closed and soft.
Court dress: a full-length gown in a blue so dark it reads black
until the light moves on it, fitted through the bodice with a high
collar, long fitted sleeves, the skirt falling to the floor. Gold
embroidery massed at the shoulders and heavily worked around the
hem — dense, elaborate scrollwork in far greater quantity than any
garment needs, the excess itself the point. Bare dark fabric
between shoulder and hem. No armour, no pauldron, no belt, no
visible weapon. Soft indoor slippers, barely visible beneath the
hem.
```

**CANON NOTES.** Clean against the page. Ch. 22: *a blue so dark it read black until the light moved on it, with gold at the shoulder and the hem in a quantity that had no function except to be a quantity.* A first pass ran the gold down the front and left the hem bare; this one is right, and the quantity reads as quantity. *A body that has never worked* and the hands unoccupied are her sheet exactly — Kael looks for *where the hands go unoccupied* and gets nothing. **Her hair is loose here by the author's default; a Ch. 22 plate must put it UP off the neck**, per the page.

## Canon that binds every block

`00`, `02` and `03` are canon; a SUBJECT block is not. A block that disagrees with a sheet is a bug in the block. Live items: Aeliana's silver is a **Vessantine house trait, never the drain-mark** (the mark is pure quartz white); **Kael is handsome and filthy, not plain**, and his grey is **unspent on the page** — anchors may show it, plates may not until a chapter spends it; **never design the coat**; **Aeliana wears NO ARMOUR in Book One** — court dress only, and the pauldron that reached the adopted `aeliana-15.png` is the error this rule exists to stop; **no insignia, badge or house colour on Aurelian or Elarine**, because `07/planted-clues` reserves *Insignia the father recognizes with horror* for the Part IV fire and Valeria's collar already spends it once.

**AURELIAN'S AMBER IS NEW CANON (author ruling, s34)** — his eye colour was unruled in 00, 02, 03 and on every page, and the portrait system cannot write a block without one. Fed to `03/aurelian` and the canon brief. **Elarine's dark eyes are sheet canon and deliberately unspent on the page** — Ch. 14 and Ch. 15 both decline to say what colour they are (*her eyes did what her eyes did*), which is the better version and must survive: a portrait may show them, a plate may not name them.

**KNOWN AND UNFIXED:** the adopted `aeliana-15.png` carries the forbidden pauldron. The block is corrected; the image is adopted-but-flagged pending a regeneration run the author has not yet chosen to spend.
