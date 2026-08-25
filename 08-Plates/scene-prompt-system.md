# Scene Prompt System

Companion to the portrait system. Covers multi-figure scenes, action, physical contact, and aftermath states.

Scenes are always generated **with reference images attached** — the full-body sheets, not the portraits. Sheets carry proportions, costume and how the clothing sits; portraits carry only the face.

---

## Scene skeleton

```
Image 1: full-body reference of [name].
Image 2: full-body reference of [name].

Same medium and style as the reference images: loose watercolour and
ink on rough cold-press paper, scratchy ink linework, wash blooms,
bare paper in the lights.
[+ for action: dry-brush drag and flicked spatter for the movement]

Setting: [place] as loose wash suggestion — walls implied behind
them, background falling into shadow. [light direction]

Composition: [crop]. [Who is where, facing which way.]

[WHAT IS IN EACH HAND — only if objects are involved]

[THE ACTION or THE MOMENT]

[Per-character block: pose, expression, costume]

Preserve both characters exactly as shown in the reference images —
faces, hair, colouring, apparent age, clothing. [Eye colours
restated.] Do not blend their features. Do not mix their clothing.
```

---

## The crop rule

**Chest-up or waist-up is the default for any scene with more than one figure.** It removes legs, feet, and most hands — which is where nearly every failure comes from.

Full-body only when the spatial relationship *is* the subject: the kneeling scene needed the height difference to work at all.

Evidence from testing: quiet scenes at chest-up came out right on the first attempt. The same fight at full body took six attempts and never fully resolved.

---

## Hand and object inventory

Objects are the single biggest failure source. Blades sprout from heads, hilts float unattached, extra weapons appear.

**Attach the count to each hand, not to the image.** "Three blades total" failed repeatedly. This worked:

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

Also: state hands that are deliberately **out of frame**, or the model may include them anyway.

**Weapon size by comparison to the body, never by name.** "Dagger" rendered as a near-longsword. This worked: *roughly the length of his forearm, noticeably shorter than her longswords.*

**AND THE SAME FOR GARMENTS — NAME A GARMENT BY CONSTRUCTION, NEVER BY ITS NAME (s41).** *A plain dark coat, well cut and well kept* produced a nineteenth-century frock coat over a waistcoat over a winged collar (`plates/ch04.md`, the master arrives) — Dickensian, and neither of `02/geography`'s two registers. **Every garment word in English carries a costume-history default**, and the renderer reaches for it exactly as it reached for a longsword when told *dagger*. *Coat* was page canon and was still the wrong instruction.

Describe what the garment DOES instead: how long it falls, how it closes, what the collar does, how the sleeve ends, what it is made of. *A long straight undyed overgarment falling to mid-calf, closed edge to edge at the front with no lapel and no button placket, standing collar to the base of the throat, plain full sleeves ending at the wrist* has no century in it. **The test: could a costumier from three different centuries all draw this from the words? Then it is construction. Could only one? Then it is a name.**

**Contact points, not trajectories.** "Sweeping toward his ribs" produced a blade aimed at empty floor twice. *The edge inches from his ribs, the blade in front of his body and clearly aimed at him* worked.

---

## Costume contamination

With two characters in similar-toned clothing, costume will bleed — Aeliana's gold hem appeared on Valeria's uniform when Valeria's clothing wasn't described.

Identity lines *are* redundant when a reference is attached. **Costume lines are not.** Always describe clothing per character, and when two are similar, state ownership explicitly:

```
Do not mix their clothing — the gold embroidery belongs only to
Aeliana, the armour only to Valeria, and Kael wears neither.
```

---

## Getting expression and emotional beats

- **"Nothing is happening"** stops the model importing drama into a quiet scene. Without it, two armed characters default to confrontation. **SCOPE IT (s40): that evidence came from two armed characters, and it does not generalise.** The author stripped this paragraph from essentially every plate run this session — a woman in a doorway, a boy at a fence post, a family on a hillside — and no drama arrived. **Keep it where the subject carries an implication of violence or event; drop it everywhere else.** It is two lines of dilution in a picture of somebody standing still.
- **Point at the mouth, not the abstraction.** *Mouth open mid-word* reads as talking; "conversing" doesn't.
- **Warmth without breaking character.** Valeria's canon expression is unimpressed and tired; *not smiling — just not braced* got friendliness without turning her into someone else.
- **State contradictions as contradictions.** For the kneel: *the body is deferential and the attention is not.* Without that line the model resolves it into an ordinary bow.
- **Eye contact must be named as the subject.** Gaze alignment between two figures is unreliable. Putting it in caps as its own final paragraph worked:

```
THE TWO ARE LOOKING DIRECTLY AT EACH OTHER. His eyes up, hers down,
the lines of sight meeting. This eye contact is the subject of the
image.
```

- **One-sided gaze is easier** than mutual, and often more interesting — one looking away while the other watches.

---

## Settings

Architecture as **loose wash and dry-brush suggestion**, never detailed. It resolves as implied structure without fighting the linework.

```
Setting: a stone hall as loose wash suggestion — a broad flagstone
floor receding behind them, tall walls implied in cool grey washes,
the upper reaches lost in shadow. Both figures grounded on the same
floor plane.
```

`Both figures grounded on the same floor plane` matters — without it, one stands on a ground line and the other floats on bare paper.

Bare parchment ground (no setting) is the character-sheet convention. Using it for a scene produces two sheets sharing a frame, not a scene.

---

## Working scene types, in order of reliability

1. **Two-figure conversation, chest-up** — first try, cleanest result of the session.
2. **Three-figure conversation, waist-up, shallow arc** — worked; needs explicit costume ownership.
3. **Single figure aftermath** — worked; see injury notes below.
4. **Physical contact (embrace)** — worked; costume detail drifts out of position when arms are in unusual places.
5. **Kneeling with eye contact, full body** — worked, needed the contradiction line.
6. **Two-figure fight** — hardest. Six attempts, never fully clean at full body; acceptable at chest-up.
7. **Three figures and an animal, FULL BODY, feet included (s40)** — worked first try, and it is the first full-body group in the library that came out clean. What made it work was **scale stated as measurement** (below), not the crop rule, which it breaks.
8. **Four-figure conversation, waist-up (s34)** — worked, and it raises the tested ceiling from three. Four figures all in dark clothing and **not one garment bled**, which is the costume-ownership rule holding under the most pressure it has had.

### Name the winner AND demote the rival (s40)

**Whatever you want to win the picture, say what loses to it in the same breath.** Stating that a thing is the brightest, palest or most finished element does not make it so — the renderer will honour the description and still finish the face better, because faces are what it finishes.

Proven twice, in two different domains:

- **Eyes against hair** (`../portrait-prompt-system.md` §Neris): the eyes only won once the hair was demoted to *fine ink strands and open transparent washes with bare paper left through the mass, no hard-edged black anywhere in it*, followed by *the sharpest step from light to dark in the whole picture happens inside the eye itself.*
- **A hand against a face** (`plates/ch02.md`, the doorframe): the knuckles were named as the palest and most finished thing and lost to an undemoted face.

**The reusable shape is two clauses: hold the rival at quiet middle values with no hard edges, then site the sharpest step from light to dark on the winner.** It was recorded as an eye technique. It is a picture technique.

**AND ITS LIMIT: THE WINNER MUST BE BIG ENOUGH IN THE FRAME TO WIN (s41).** Priority is not magnification. Twice now a small anatomical tell has been named as the most finished thing in a picture and lost anyway, not to a rival but to its own size:

- `plates/ch04.md`, the knot — hand size by comparison *moved it and did not solve it.*
- `plates/ch04.md`, the master arrives — *the wrists are the most precisely drawn thing in the picture*, at full length, came back as ordinary wrists in cuffs. The wrists are the whole point of his body.

**Below roughly the size of a hand in frame, a detail cannot carry finish, and no amount of emphasis changes that. The fix is the crop.** Pick the framing that makes the tell large, or accept the tell is decoration in this picture and let something else win. This is the production argument for close work: a close-up is not a stylistic preference, it is the only way some facts render at all.

### Write for an image generator, not for a reader (s40)

**A prompt is a specification.** It is read by something that turns clauses into pixels and has no use for meaning, intent, rhetoric or good prose. The habit this folder keeps falling into is writing prompts the way it writes documentation — each idea in its own paragraph, with the reasoning attached, in flowing natural language — and the reasoning is addressed to a person who is not there.

**LENGTH IS NOT THE METRIC.** The pasture prompt runs to 959 words and every one of them is doing work. A 300-word prompt that states one fact three ways is the worse document. What gets cut is **redundancy and rhetoric**, never detail.

**1. Each fact once, in the place it belongs.** The Ch. 3 back draft said the face was not visible three times — in the reference line, in the composition, and again after it. Restatement does not reinforce; it competes.

**2. Every clause must be able to change a pixel.** *Could a renderer draw something different because of this line?* If not, it belongs in the plate sheet's prose. This is the whole test.

**3. Specify, do not narrate.** Say where the subject is, what it is doing, what is in each hand, which values are where. Do not explain what the picture means or why a choice was made — *this low viewpoint is what tells you who is watching*, *and they are the reason for the picture*, *the absence is deliberate* are all notes to a colleague. **A priority instruction is not rhetoric:** *X is the subject of the image* is documented as working and stays.

**4. Concrete relationships beat adjectives.** *Very small* and *a toddler, not a boy of seven* both failed; *the top of his head reaches roughly the man's hip* worked. See §Scale between figures. The same applies to value, position and size throughout — name the landmark, the fraction, the comparison.

**5. Emphasis is scarce and spends itself.** One capitalised paragraph per idea leaves nothing prioritised. Merge related instructions into dense blocks and shout only at the two or three things that will actually fail.

**6. A negative needs something pulling toward it.** See §Negative inventory. *No wound, nothing fresh, nothing red* on a body already described as long healed is banning what nothing suggested.

**7. Say it in the register the tool answers in.** Short declaratives, concrete nouns, no subordinate clauses carrying conditions, no asides. Where two instructions describe one object, join them (§Describe a limb as a chain).

**The worked example is the Ch. 3 back** (`plates/ch03.md`): the author's compression cut roughly a third of a drafted prompt without losing a single instruction, and the result was better. That diff is what this section is written from.

### Over-writing contradicts — it does not merely dilute (s41)

The rule above says redundancy competes. **The stronger claim, and it is now evidenced: a prompt long enough to restate itself is long enough to disagree with itself, and the renderer splits the difference.**

`plates/ch05.md`, past the split rock. The block stated the altitude seven times where §Altitude prescribes three instruments, and the hidden face four times where the plate rule asks for two. Buried in that volume were two clauses that fought the picture:

- `not reaching` — in a block whose subject was *an arm stretched back behind him at full reach.* The arm came back out to the side.
- `standing still on level ground` — in a block that also said *the ground falling away steeply* and *downhill of it.* He came back on a broad level shelf with the drop displaced to one side.

**Neither was a canon error or a bad instruction. Both were padding that happened to land on the subject.** The picture was adopted and the beat still moved one paragraph back on the page, from the crossing to the pause before it.

**So the audit is cheap and it is worth doing before the run, not after:** read the block for the fact stated more than twice, then read what is sitting next to it. That is where the contradiction will be, because a padded block is written fast and pattern-filled rather than specified.

**AND THE LIMIT ON IT, learned the same session by running the compression: COUNT THE CHANNEL, NOT THE SENTENCE.** A second statement that forbids a *different* thing is not a restatement, however much it looks like one. The re-cut of that same block cut two clauses as redundant and lost both jobs:

- The face was forbidden four ways — a positive list of what the viewer sees, then *no feature of his face is drawn*, then *no eye appears anywhere in the picture*, then *do not turn his head toward the viewer*. Dropping the second **turned the head**, putting cheek and jaw in frame. Banning features and banning the eye are different bans.
- The rivals were held down by *no hard edges anywhere in them* AND *nothing competing for finish*. Dropping the second brought the foreground back lighter, harder-edged and more rendered. **§Name the winner AND demote the rival is two clauses because edge and finish are two channels**; one does not imply the other.

**The test before cutting a repetition: name what the clause forbids, then find where else that thing is forbidden.** If nowhere, it is not a repetition and it stays. Compression is measured in channels covered, never in words.

### A colour ban is read as a saturation ban (s41)

**Never ban a hue. Ban the source that would produce it, and require the hue you want by name.**

`plates/ch05.md`, the two pails — a grey-dawn picture with no fire, no lamp and no skin in it. A dawn pulls hard toward gold, so the block banned it four ways: *no warm colour anywhere in the picture — not in the sky, not on the frost, not in the water, not in the timber.* It then named the palette positively, in the same paragraph: *cold greys, dull green-greys and bare paper.*

**The run came back effectively greyscale.** The positive naming lost outright to the ban standing in front of it, and *warm* was read as *saturated*. The house style is muted and desaturated, never colourless, so the picture missed the look while obeying every clause in it.

- **Ban the source, not the hue:** *no sun disc and no glow anywhere in the sky* is drawable and costs nothing.
- **Then require the colour as a positive with a landmark**, the way §Name the winner does: name the two or three hues that must be present and site them on objects — *the timber a dull green-grey, the water a cold blue-black, the frost bare paper.*

**The general shape: a negation and a positive competing for the same channel is a contradiction, and the negation wins.** Same failure family as §Over-writing contradicts, arriving from the other direction.

### Scale between figures — STATE IT AS MEASUREMENT (s40)

**This is the most useful thing the scene system has learned, and it overturns an earlier finding.** A child rendered several years too old was blamed on the attached face reference outvoting the words. That was wrong. **Adjectives lose; ratios win**, and the reference is not the problem:

```
SCALE — the child is FOUR YEARS OLD and must read four:
The top of his head reaches roughly the man's hip.
His head is large for his body, roughly a fifth of his total height.
Short limbs, a round torso, no waist, no length in him anywhere.
The goat's shoulder is at about the child's chest.
```

*Very small · the head large in proportion · a toddler, not a boy of seven* had failed. **Every one of those is a comparison to nothing.** Naming the fraction of the frame, the fraction of the body, and one landmark on a third subject fixed it in a single run with the face reference still attached. **Do this for any figure whose age or size is load-bearing** — and note it also anchors the animal, which is why the goat came out the right size.

The portrait system's eye-line ladder does the same job for a face; this is its body equivalent, and the two are independent.

### Altitude is a camera position, not a setting (s40)

A picture meant to look down a mountain at the sea came back as a shoreline at sea level, with the boat close inshore. The prompt had the altitude — *a high mountain smallholding, the ground falling away to a wide flat sea far below* — and then staged the frame as *read the picture left to right: the boy, the man, the boat.* **Staging beats intent, and left-to-right is a flat stage.**

Two fixes, and they generalise to any picture with real depth:

- **Say where the viewer is standing, first, before the setting.** *The viewer is high on a mountain, looking out and steeply down* — and say what must therefore be absent: *there is no beach, no shoreline and no water's edge anywhere near the figures.*
- **Stack the frame explicitly.** Name what occupies the bottom, middle and top third. A vertical stack is a staging instruction, so it competes on the terms the renderer actually obeys.

Then pin the depth with **scale-by-measurement**, which is what proves it worked: *the entire boat is smaller than the boy's head in this frame; if the boat is bigger than that, the viewpoint is wrong.*

### Contact hands render, including under a crossing arm (s40)

Worth stating because the opposite was briefly written here and was wrong. In the pasture scene **both contact hands came through**: a hand flat on a child's upper back with the arm crossing behind him, and a hand buried in a goat's coat. **Author ruling: the hands are fine in that image.**

The retracted claim generalised from a single unconfirmed reading of `ch01-fallen-stars`, where the hand at the jaw looked to me half-lost. One picture, judged by eye, is not a failure mode. **Do not prompt around contact hands as though they were fragile** — nothing here has shown they are.

### Describe a limb as a chain, not as separate facts (s40)

The hand inventory's own format caused this one. A prompt listed *the boy's right hand holds one short knife* and, four lines later, *the man's hand is closed around the boy's right wrist* — the same arm, split into two entries. **The renderer resolved them independently and laid the knife on the ground**, keeping the grip and losing the causality the picture existed for.

**When two instructions describe one limb, say so and give the order along it:** *knife, hand, wrist, grip — one continuous limb, in that order*, plus the explicit negative with a pull behind it: *the knife is never lying on the stone.*

The hand inventory remains right for independent objects in independent hands. It is wrong for a sequence down a single arm, which is what most contact moments actually are.

### Size contrast must be stated per hand (s40)

Same image: the man's hand against the boy's wrist read perfectly as grown-against-child, while the boy's *other* hand, described only inside a general *the boy's hands are a CHILD'S* line, came back adult-sized. **A scale instruction attaches to the pair it is written next to.** State it again wherever the contrast has to hold.

### Negative inventory works on animals too (s40)

*ONE GOAT, and only one — no second goat, no herd on the slope behind, no dog, no bird, no other animal anywhere in the picture* held completely. Same shape as the hand inventory and the costume ownership rule: **name the absences, not just the presence.**

**AND THE LIMIT ON IT, learned the same session: ban what could plausibly arrive, not everything that could theoretically arrive.** *ONE GOAT and only one — no herd on the slope behind* worked because **a goat implies a herd**: the thing was already in the picture and could multiply. *No child, no man, no animals* in a portrait of a woman in a doorway bans things nothing in the prompt suggests, and the author cut those lines from every run with no strays appearing. **A negative earns its place when something in the picture pulls toward the thing being banned** — a herd behind a goat, a figure in a lit doorway, a second blade near a swordsman, a face where the framing has hidden one. Otherwise it is padding, and padding costs the instructions that matter.

### Four figures

**Depth is what makes four work.** Three sit in a shallow arc; four in an arc becomes a lineup. The instruction that worked was *two loose pairs at slightly different depths, all turned in toward each other* — the stagger gives the group a front and a back without turning anyone away.

**But the physical arrangement beats the social one, every time.** The same prompt asked for `two loose pairs` and, in caps, for `ALL FOUR ARE ENGAGED IN THE SAME CONVERSATION`. It got two pairs having two conversations. **When a grouping instruction and a staging instruction contradict each other, the staging wins** — it is the one a renderer can draw. To bind four figures into one conversation, name a **single speaker the other three are attending to**, and stagger the depth for the rest.

**Two people talking at once is worth having and it renders.** *Aurelian mid-sentence, mouth open* plus *Kael mouth open mid-word — answering him, overlapping, cutting in* both came through, and the overlap is what stops four standing figures reading as a portrait group.

**Negative ownership per character works as well as positive.** *Elarine and Kael wear no ornament, no metal and no white at all* held across the whole frame — no stray collar, no borrowed steel. State the absences by name, not just the possessions.

### Four figures — the quartet prompt, as run

```
Image 1: full-body reference of Kael.
Image 2: full-body reference of Valeria.
Image 3: portrait reference of Aurelian.
Image 4: portrait reference of Elarine.

Same medium and style as the reference images: loose watercolour and
ink on rough cold-press paper, scratchy ink linework, wash blooms,
bare paper in the lights.

Setting: a stone hall as loose wash suggestion — walls implied
behind them, background falling into shadow. Soft daylight from one
side.

Composition: waist-up, four figures standing in two loose pairs at
slightly different depths — AURELIAN and ELARINE half a step
forward on the left, KAEL and VALERIA slightly further back on the
right, all turned in toward each other. Every face clearly visible,
none turned away. Standing close, relaxed distance. No weapons
drawn, all hands empty and relaxed. Nothing is happening — this is
a quiet conversation between friends.

ALL FOUR ARE ENGAGED IN THE SAME CONVERSATION AND LOOKING AT EACH
OTHER, NOT AT THE VIEWER. Two of them are talking at once.

AURELIAN mid-sentence, mouth open, one hand lifted in an easy
gesture, turned toward Kael and Valeria. Chin carried high, gaze
direct and unguarded, open and pleasant. Dark-gold hair pushed back
off the forehead. Warm amber eyes, gold-brown, the skin around the
eye staying cool so the amber holds. Well-fed unweathered skin.
Broad through the shoulders for his age but the face still soft and
unfinished. HIS CLOTHING: good dark wool in deep umber and warm
charcoal, well fitted, an open collar over a clean white
undershirt. No armour, no ornament.

ELARINE turned to Aurelian, attention fully on him. Mouth closed
and still, brows unmoved, giving nothing back but entirely present.
Small and finely built, narrow shoulders. Ink-black hair drawn back
severely and bound tight at the nape, nothing loose. Pale indoor
skin. Eyes very dark brown, near black — the only solid black in any
face in the picture, small and precisely drawn. HER CLOTHING: plain
close-fitting dark clothing of very good quality, high buttoned
collar to the throat, ink-black and dark olive. No armour, no white
collar, no ornament of any kind.

KAEL turned toward Aurelian, mouth open mid-word — answering him,
overlapping, cutting in. Head slightly tilted, eyebrows a little
raised, loose and unguarded, none of the stillness he holds around
strangers. Pale near-white grey eyes, the lightest point in his
face. Dark uneven hair. HIS CLOTHING: plain charcoal tunic, no
collar showing, no ornament, no metal, no white.

VALERIA turned toward Kael, listening to his answer, half a smile
starting. Weight settled on one hip, one shoulder dropped, mouth
closed but the corner gone soft — amused, at ease, not braced.
Green eyes. Dark hair tied back. HER CLOTHING: charcoal sleeveless
coat over grey-blue underlayer, high collar with small bronze
insignia, steel vambraces on both forearms, fitted gorget at the
throat.

Four faces, four distinct characters. Kael's eyes pale grey,
Valeria's green, Aurelian's amber, Elarine's near-black. Preserve
each exactly as shown in their own reference image. Do not blend
any of their features.

DO NOT MIX THEIR CLOTHING. The steel armour, gorget and vambraces
belong only to Valeria — no one else wears metal. The white collar
and umber wool belong only to Aurelian. Elarine and Kael wear no
ornament, no metal and no white at all.
```

**THE COST, AND IT IS THE REAL FINDING: two of the four had no full-figure sheet.** Aurelian and Elarine were anchored on their **portraits**, which carry a face and nothing below the collar — so everything they are wearing in that image was authored in the prompt and is anchored to nothing. **It will not repeat in the next scene.** The rule at the top of this file says scenes take the full-body sheets for exactly this reason. Their sheets are owed.

### Three-figure arrangement

A shallow arc — all three angled toward each other but every face visible — is easier than a natural triangle, which puts someone's back to the viewer. Give the scene a **speaker and listeners**; the asymmetry is what makes it read as conversation rather than a lineup.

---

## Damage, injury and aftermath

**What renders without difficulty:** healed scars, bruising, grime and soot, torn clothing, exhaustion, dirt worked into skin.

**Torn clothing beats absent clothing.** For a visible torso, describe the garment as *destroyed* — hanging open, one sleeve gone, shredded but still on him — rather than removed. Reads as aftermath and renders reliably.

**For fresh cuts: name the cut and where it is. Do not describe the tissue.** This worked:

```
A fresh cut across his cheekbone. Several on his forearm and torso.
```

Wound-detail vocabulary — raw, split, edges open — appears to be what causes refusals, not the injury itself. Two data points only, so hold this loosely; location may also matter.

**Stated ages plus injury causes refusals.** Removing explicit ages from the prompt resolved it — the reference images carry age anyway, and `apparent age` stays in the preserve line. Do not try to engineer around a refusal; if honest description doesn't render, that's the tool's limit.

---

## What the reference carries vs what you must write

**Carried by the reference (can be cut):** face, bone structure, eye colour, hair colour, skin tone, apparent age, style, palette, paper.

**AND CARRIED WHETHER YOU WANT IT OR NOT: THE EXPRESSION (s41).** A reference does not only supply a face, it supplies that face's **mood**, and in a close crop it wins against the prompt. Twice now:

- `plates/ch01.md`, fallen stars — *neither face is visible* lost to a reference that knew what a carried child does.
- `plates/ch05.md`, the fact lands — the block opened with `THE REFERENCE SHOWS HIM ALERT AND ASKING. THIS PICTURE IS THE OPPOSITE, AND THE EXPRESSION DESCRIBED BELOW OVERRIDES THE REFERENCE COMPLETELY`, in priority position, and the run returned the reference's own wide-eyed asking face anyway.

**So: when a plate needs a face in a state its reference does not hold, cut a second reference. Do not write a longer override.** Naming the conflict does not resolve it; it just puts two arguments in the frame and the picture is only ever one of them.

**Must be written every time:** body proportions in unusual poses, posture, what each hand is doing, everything below the collar, framing, lighting across a whole body, and **all clothing** when more than one character is present.

---

## Canon the scene system keeps breaking

Two items recur because the system inherits them rather than inventing them, and both are in `../08-Plates/canon-brief.md`:

**KAEL'S GREY — NO LONGER AN IMAGE CONSTRAINT (author ruling, s41; `../08-Plates/README.md`).** Plates may show it, at full strength, exactly as the portraits and scene tests always could. The rule this section used to carry — *frame it out, answer with distance and occlusion* — is retired, and every Part I plate built under it stands as drawn. It remains unspent on the PAGE, which is a prose rule and binds no image.

**KAEL IS UNARMED IN EVERY SCENE.** His full-body sheet carries no weapons, the scene system attaches that sheet, and so every scene inherits a weaponless boy. Predicted when the sheet was adopted; demonstrated every time since. Page canon puts *two short blades across his back in a cloth wrap* and a knife inside the clothing. Until the sheet is redone, write the wrap into the scene prompt by hand whenever the moment would carry it.

### Three figures and an animal — where the prompt lives

**Produced `images/plates/ch01-vask-kael-goat.png` (s40), first run, author-written.** Full body with feet in frame, which the crop rule advises against, and it came out clean — the scale block above is why.

The image was adopted as a **Ch. 1 plate**, so the prompt lives with it: `plates/ch01.md`, under `### PLATE-VERBATIM: vask-kael-goat`. It is not duplicated here.

## Plates — what changes

A plate is a moment, not a person, so it takes neither the portrait system's fixed head-and-shoulders `Composition` nor its `Eyes: the focal point` line. **The plate prompt writes its own composition, lighting and framing every time.**

What it inherits is the house look and nothing else: the **Medium** and **Colour** paragraphs of the portrait system's fixed STYLE block. `scripts/build-prompts.sh` slices those two paragraphs out of that block and prepends them — there is no second copy of that text to drift.

**Plate prompts live in the chapter's sheet in `plates/`, one fenced block under a `### PLATE: <slug>` heading**, and build to `prompts/plates/<sheet>-<slug>.txt`. The prompt systems are the rule and are amended in place; plate sheets accumulate.

**Three things a plate must state that a portrait never has to:**

- **Where the light is.** The portrait block's soft directional light is gone. Say the source, say it is the only one, and say what it leaves dark.
- **Who is NOT in the frame.** An unattended run puts a person in an empty room and a watcher in a solitary moment. Name the absence.
- **Which faces are not visible, and that it is deliberate.** Where a plate hides a face for its own compositional reasons, say *no eyes are visible anywhere in the picture* and say *do not turn the head toward the viewer*, or the run will helpfully fix it — **and count the channels before trimming either** (§Over-writing contradicts). This is no longer forced by Kael's grey, which s41 freed for plates.

**The inherited Colour paragraph is written for faces, and a plate must often override it.** It ends *the warmth belongs to the skin alone, not the paper or the cloth* — true of a portrait, where the face is the only warm thing in the frame. A plate lit by a fire, a lamp or a town has its warmth landing on cloth, timber, stone and water, and a plate with no people in it has no skin at all. **Say where the warmth actually lands, inside the plate block.** Do not edit the fixed STYLE block to suit one picture.

**Anchoring cost, stated per plate.** Scenes want full-body sheets. Plates rarely get them: a plate of a child, of a parent, or of an empty room is anchored on a head-and-shoulders portrait or on nothing at all, and everything below the collar is then authored in the prompt and anchored to nothing — it will not repeat in the next plate. That is not a reason to skip the plate; it is a reason to write the cost on the sheet, so the next session knows which pictures share a body and which only share a face.

## Standing limitation

These models pattern-match rather than model objects. Overlapping limbs, occlusion, and held objects at odd angles are where that breaks — which is exactly what an action scene is.

The techniques here get a usable image in two or three attempts instead of ten. They do not make it reliable. For a specific fight beat rendered exactly, this is reference material for a commission, not a substitute for one.
