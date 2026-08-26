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

**AND THE SAME FOR GARMENTS — NAME A GARMENT BY CONSTRUCTION, NEVER BY ITS NAME (s42).** *(Generalised below: it is not about garments.)* *A plain dark coat, well cut and well kept* produced a nineteenth-century frock coat over a waistcoat over a winged collar (`plates/ch04.md`, the master arrives) — Dickensian, and neither of `02/geography`'s two registers. **Every garment word in English carries a costume-history default**, and the renderer reaches for it exactly as it reached for a longsword when told *dagger*. *Coat* was page canon and was still the wrong instruction.

Describe what the garment DOES instead: how long it falls, how it closes, what the collar does, how the sleeve ends, what it is made of. *A long straight undyed overgarment falling to mid-calf, closed edge to edge at the front with no lapel and no button placket, standing collar to the base of the throat, plain full sleeves ending at the wrist* has no century in it. **The test: could a costumier from three different centuries all draw this from the words? Then it is construction. Could only one? Then it is a name.**

### Name a thing by construction — the general rule (s42)

**It is not about weapons and it is not about garments. It is about NOUNS.** Three instances now, in three unrelated domains, all identical in shape:

| written | arrived |
|---|---|
| *dagger*, with a length given | a near-longsword |
| *a plain dark coat, well cut* | a Victorian frock coat and waistcoat |
| *a soft sheet of orange flame standing off the top of a tallow candle* | an ordinary candle burning at the wick |
| *one upright standing stone... split by a single clean cleft* | a menhir: regular sides, flat top, a cleft like a cut |

**A concrete noun arrives with a default picture attached, and the default beats every adjective you hang on it.** The third case is the clearest, because the page's whole beat is that this is *not* the default — *Not the wick — the wax* — and the prompt still lost to the word `candle`.

**So when the thing you want is NOT the standard instance of its noun, the noun is working against you.** Two moves, and use both:

1. **Describe the construction** — what surface, what extent, what shape, what it is made of. *The whole top surface of the candle is alight, edge to edge, a pool of burning fat the full width of the candle.*
2. **Kill the default by name** — the negative has a real pull behind it, which is exactly when §Negative inventory says it earns its place. *There is no wick-flame, no single point of flame, no teardrop shape, no wick visible anywhere.*

Then pin it with §Scale between figures, as always: *as wide as the candle is wide, standing as tall as the distance from his chin to his eyebrows.*

**AND THE TRAP ON THE OTHER SIDE OF IT: A CORRECTION CAN BURY THE THING IT WAS CORRECTING FOR (s42).** Killing a default takes several clauses, and those clauses crowd out the feature the object is actually named for.

`plates/ch06.md` fixed a rock that rendered as a menhir by writing five clauses of *irregular, weathered, broader at the base, no straight edges, nothing shaped by hands* — and put the fracture sixth. `plates/ch07.md` ran it: **the menhir was gone and so was the split**, on a rock whose name is the split rock.

**Say the defining feature FIRST, with a measurement, then correct the shape.** The order is the instruction. A renderer builds what it reads first and spends what is left on the qualifiers.

**AND THE THIRD FACE OF THE SAME PROBLEM: NEGATING A NOUN'S FEATURES LEAVES YOU WITH NONE OF THEM (s42).** `plates/ch07.md`, the wasters: *one wooden sword, plain and unfinished, no guard and no ornament* returned a flat batten with a taper — no grip, no section, nothing a hand would hold. The guard and the ornament were the only things marking it as a sword, and banning them took the sword with them.

**So the noun rule has two failure directions and one answer.** Name the thing and you get its default. Ban the default's features and you get nothing at all. **Describe the construction either way** — *a round grip long enough for a hand and a half, then a blade section lens-shaped in cross-section, thicker down its centre than at its edges, tapering to a blunt squared tip* — and let the negations trim what is left over, not what the object is made of.

### A close-up plate and the age line — PART-ANSWERED (s44): THE RATIO MUST BE STAGEABLE

**One controlled pair settles what three soft readings could not.** `plates/ch11.md` ran two close-up plates in one session, both under the fourteen-year-old anchor ruling, **both carrying the same eye-line rung in the same words**, both in the same treatment. The white stitch came back eleven or twelve. The fan in the rain came back a young woman — **past her own anchor, not short of it.**

**The single difference was what sat beside the rung.** The stitch block gave a ratio against an object in the frame — *his hand is a child's, small and short-fingered, and the copper bar is longer than his forearm.* The fan block gave adjectives — *the jaw has not come in, the cheeks still full, the neck slender* — with nothing in the picture to measure against.

**Which is §Scale between figures, arriving in a close crop:** adjectives lose, ratios win, and the eye-line rung is a ratio *inside the head* that apparently cannot carry a face on its own once a plate is anchored three years above its chapter. **Write the rung AND one measurable relationship to something else in the frame.** A hand against an object, a head against a doorway, a fist against a grip — anything a renderer can compare.

**AND A THIRD RUN THE SAME SESSION WALKED IT BACK TO THIS SHAPE.** `plates/ch12.md`'s furniture carried the rung **and** a ratio and still came back fourteen or fifteen. The ratio it carried was a hand in the foreground against a hand in the far middle distance — **a comparison the picture cannot perform.** The stitch's worked because the hand and the copper bar were side by side, same depth, same crop.

**So the rule is not "add a ratio". It is: stage a comparison the frame can actually make.** Both terms in the crop, at comparable depth and comparable size, near enough to read against each other. A ratio written across a room is the same failure as a tell written under a sleeve (§Name the winner, occlusion) — the fact is in the block and out of the picture.

**AND A FOURTH RUN NARROWS IT AGAIN (s45): THE SECOND TERM MAY HAVE TO BE AN OBJECT.** `plates/ch13.md`'s receipts staged a ratio the frame could perform perfectly — a hand held up under the subject's own chin, same depth, same crop, nothing occluded — and **came back at the adult proportion the block wrote against.** So the s44 staging fix was satisfied and the number still did not land.

**The pattern across all four runs is what the term was measured against.** The one success measured a hand against **a copper bar**. All three failures measured a piece of the subject against another piece of the same subject: a hand against a hand across a hall, a flat hand against another person's flat hand, a hand against its own face. **An object has a size a renderer cannot argue with. A body can be scaled entire and satisfy any internal ratio at any age.**

**So the working form of the instruction is: the rung, plus a ratio against an object of known size, staged where the frame can perform it.** One clean instance and three suggestive ones — logged here rather than promoted, per `../08-Plates/README.md` on findings that are not yet rules.

**AND THE VERY NEXT RUN BRUISED THAT, WHICH IS WHY IT WAS LOGGED RATHER THAN PROMOTED (s45).** `plates/ch13.md`'s spots of colour gave a ratio against **an object** — a hand against a cup, both in the crop, same depth, nothing occluded — and the face still came back years above its chapter. **So *the second term must be an object* is not supported as stated.**

**THE CORRELATION THAT SURVIVES ALL SIX RUNS IS HOW MUCH OF THE FRAME THE FACE OCCUPIES.** The one success — `plates/ch11.md`'s white stitch, eleven or twelve — is also the only one where **the face is not the dominant mass in the picture**: it is a hand plate with a head beside it. Every failure is a face filling the frame. **Under an anchor three years above its chapter, a close plate whose face dominates has never yet been pulled back down by any in-frame ratio, staged or not, object or body.**

**The consequence, said plainly rather than as a rule:** the rung is cheap and can stay; a ratio clause on a portrait-scale crop has six runs of evidence that it buys nothing. **The real lever is the anchor, and the anchor is an author ruling** (`../08-Plates/README.md`, s44), which is where this belongs rather than in a block.

**And one confound on the s45 pair is a fact on disk rather than a theory.** `../08-Plates/portrait-prompt-system.md`'s Elarine AGE block, which cut `elarine-14.png`, reads *Fifteen, and small for it* and sets the eyes **at** the vertical midpoint instead of below it. Both plates of her have drifted the same way. **Check what a reference's own age block says before diagnosing a plate that inherits it.**

**The confound, stated so nobody over-reads any of this:** six runs, three characters, six crops. Directional evidence, not a proof.

**The history, kept because it is why this took three sessions.** `../portrait-prompt-system.md` §AGE block states that age words in the SUBJECT block alone get ignored, and §Plates has a plate inherit only the Medium and Colour paragraphs, so a plate never gets the rung. The first datum was overturned by the author (`plates/ch09.md` read years too old to this folder and correct to the author); the second was `plates/ch08.md`'s Elarine reading adolescent among eleven-year-olds with her age in the reference line only.

**Logged as an open question, not a finding, because the evidence was overturned.**

`../portrait-prompt-system.md` §AGE block states that **age words in the SUBJECT block alone get ignored, and always have** — the instrument that works is the eye-line rung, and it lives in the AGE block. **§Plates has a plate inherit only the Medium and Colour paragraphs, so a plate never gets that rung.** The reasoning says a plate cropped close enough to be a portrait ought to need it.

**The one time it was tested, this system was wrong.** `plates/ch09.md` carried the age as words in the block body, this file read the resulting face as several years too old, and **the author read it as correct and adopted the image.** So the mechanism is real in the portrait system and its relevance to a close-up plate is untested. **Write the rung into a close-up plate block if a face actually comes back the wrong age — do not add it pre-emptively on the strength of this section.**

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

**AND ITS LIMIT: THE WINNER MUST BE BIG ENOUGH IN THE FRAME TO WIN (s42).** Priority is not magnification. Twice now a small anatomical tell has been named as the most finished thing in a picture and lost anyway, not to a rival but to its own size:

- `plates/ch04.md`, the knot — hand size by comparison *moved it and did not solve it.*
- `plates/ch04.md`, the master arrives — *the wrists are the most precisely drawn thing in the picture*, at full length, came back as ordinary wrists in cuffs. The wrists are the whole point of his body.

**AND A DEMOTION NEEDS SOMEWHERE TO DEMOTE INTO (s44, two runs).** The two-clause mechanism assumes the rival can recede, and a value structure is what it recedes into. `plates/ch10.md`'s waterer stated the clause in flat open midday daylight and the drystone wall came back drawn stone by stone, competing with the hand it was written to lose to; `plates/ch11.md`'s fan stated the same clause in a dark wet yard lit by one small flame and it held completely — brightest and most-finished landing on two different objects exactly as written. **Opposite conditions, one cause. Where the picture has no dark for a background to sit in, the instrument is the crop, not the clause.**

**AND THE SECOND FAILURE MODE IS OCCLUSION, NOT SIZE (s43).** Twice in one session a tell was named as the subject and then staged out of its own picture by a later clause in the same block: `plates/ch10.md`'s honey plate put the wrists under sleeves that the garment paragraph had ended at the wrist, and its waterer put the temple-grey behind hair in a profile crop. **Neither is a priority problem and neither would have been fixed by more emphasis.** Before shouting at a tell, read the framing, the pose and the costume back and check that the thing is actually visible in the picture you have described.

**Below roughly the size of a hand in frame, a detail cannot carry finish, and no amount of emphasis changes that. The fix is the crop.** Pick the framing that makes the tell large, or accept the tell is decoration in this picture and let something else win. This is the production argument for close work: a close-up is not a stylistic preference, it is the only way some facts render at all.

### The pre-flight is a script now (s42)

**`scripts/check-prompt-bloat.sh`. Run it on a built prompt before handing the prompt over.**

**AND THE AUTHOR'S RULING ON IT (s42), which matters more than the script: THE SCRIPT IS A BACKSTOP, NOT THE METHOD.** *Not sure a script is the way to do it — I'd like you to just be better at knowing what a good prompt is.* **Do not write a bloated block and then lint it down.** Know what the block should be while writing it; run the check afterwards to catch what slipped, never to do the thinking. A session that treats a clean lint as proof the prompt is good has already lost the point — the tool cannot see the judgement that matters, which is why its negation checks had to be removed.

Every rule in this file was written the same way: a run came back wrong, the cause was found, the finding was written down. **All of it is retrospective, and nothing applied any of it to the next block before that block shipped** — so the same bloat kept arriving, session after session, from someone who had just finished writing the rule against it. The rules were not the gap. The procedure was.

**What it checks, because these are mechanically decidable:** exact restatement (repeated five-grams, with the shared style header and the `Image N:` lines stripped so boilerplate is not counted), capitalised-block count against a threshold calibrated on the adopted prompts, and a short list of words that narrate rather than specify.

**WHAT IT REFUSES TO CHECK IS THE MORE USEFUL HALF.** Two mechanical tests for over-negation were built and both were thrown out for flagging this folder's best work — negation *density* condemned `plates/ch01.md`'s fallen stars and `plates/ch04.md`'s blade, both adopted on the first run, and rated the author's own `vask-kael-goat` the worst file in the library; negation *runs inside a sentence* condemned `severin.txt`, whose eleven-term NOT list is the documented reason that portrait works at all. **The difference between *no lamp, no fire, no torch* and *not warm, not kindly, not stern* is semantic and no counter can see it.** That judgement stays human, and §Over-writing contradicts is how it is made: count the channel, not the sentence.

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

### Over-writing contradicts — it does not merely dilute (s42)

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

### Colour is adjusted per picture, NOT by rule (author ruling, s42)

**This file had two colour rules and the author removed them: *no need to be a rule — case by case we do adjust.*** What follows is the evidence, kept because it is what happened, and explicitly not a procedure to apply in advance.

- `plates/ch05.md`, the two pails — banned warm colour, named no hues positively, **came back greyscale.**
- `plates/ch08.md`, the hand over the face — named a warm lamp and left the dark uncoloured, **came back one uniform brown**; naming the dark as cool grey-blue, reserving two objects as bare paper and protecting the ink fixed it with no change to the staging.
- `plates/ch08.md`, the one who did not laugh — said *no warm colour anywhere*, came back warm brown-grey, **and the author judged it the best of the set anyway and kept it.** The same corrections that rescued the supper plate were applied to it and were not wanted.

**Which is the whole reason this is not a rule.** The third case had the same symptom as the second and the right answer was to leave it alone. **Look at the picture.**

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

**AND THE SAME FOR LOW ANGLES — NAME WHAT THE VIEWER CAN SEE, NOT WHERE THE VIEWER IS (s42).** *THE VIEWER IS LOW, at the eye height of a boy of nine, so the man is seen slightly from below* failed twice on the same picture (`plates/ch04.md`, the master arrives), returning a level adult viewpoint both times. **A camera height is an abstraction; a renderer draws surfaces.** State the surfaces the angle exposes and the landmark it moves:

- *The underside of his jaw and the underside of the chin are visible.*
- *The bundle is seen from below and its underside shows.*
- *The horizon line behind him sits level with his knees, not his shoulders.*
- *The soles of his boots are hidden and the ground plane is not visible past his feet.*

Same shape as §Scale between figures: the abstraction loses, the landmark wins. **Any instruction phrased as where the camera is should be rewritten as what is therefore in frame.**

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

## Lettering renders, under conditions (s42)

The folder had assumed text was not worth attempting. **One clean instance now says otherwise:** `plates/ch08.md` put `MINIMA` on a lecture-room slate and it came back correctly spelled in even chalk capitals at the stated size.

**The conditions it was given, all of which are cheap to repeat:**

- **One short word.** Not a phrase, not a sentence.
- **All capitals**, which have no ambiguous letterforms to invent.
- **Named exactly**, in the prompt, as the string to write.
- **Declared the only thing written on the surface** — *nothing else is written on it* — so there is no second inscription for the renderer to improvise.
- **A size relative to something in the frame** (*letters a hand high*), not a point size.

**Do not extrapolate past this.** One word on a slate is not a page of a ledger, and `plates/ch08.md`'s own ★ — the roll, a book the size of a door with a column of names in it — is a different and much harder ask.

## Damage, injury and aftermath

**What renders without difficulty:** healed scars, bruising, grime and soot, torn clothing, exhaustion, dirt worked into skin.

**Torn clothing beats absent clothing.** For a visible torso, describe the garment as *destroyed* — hanging open, one sleeve gone, shredded but still on him — rather than removed. Reads as aftermath and renders reliably.

**For fresh cuts: name the cut and where it is. Do not describe the tissue.** This worked:

```
A fresh cut across his cheekbone. Several on his forearm and torso.
```

Wound-detail vocabulary — raw, split, edges open — appears to be what causes refusals, not the injury itself. Two data points only, so hold this loosely; location may also matter.

### A negation puts the word in the prompt (s42)

**Banning a thing requires naming it, and the name is what a filter reads.** This is a cost of negation that has nothing to do with dilution, and it was invisible until a six-word exclusion killed a run.

`plates/ch06.md`, the wheel: `no blood or marks on either child` was **refused**. The clause existed only to keep blood out of the picture. The same session's `carried-past-the-rock` says *Dried blood on his cheek and in his hair* about the same boy and ran without difficulty — **so it is not the word blood and it is not children. It is blood in a frame that also contains a bound child**, and the exclusion buys nothing, because a classifier reads nouns and not logic.

**Two consequences:**

- **Before banning something, check that naming it is safe.** A negation is not free even when it is correct.
- **Where a loaded word can be replaced by construction, replace it.** *Her bound hands* became *her hands*; the rope's path — *goes twice around the rim and her wrists together and finishes in a knot set low behind her* — already says everything the adjective did. Same move as §Name a thing by construction, arriving from the safety side rather than the accuracy side.

**And it sharpens an older finding.** `plates/ch04.md`'s blade recorded that *a positive physical description beat the scene's own pull* where the doorframe had needed the wrong reading named and banned. **Prefer describing what you do want.** It is usually the better instruction and it is always the safer one.

**Stated ages plus injury causes refusals.** Removing explicit ages from the prompt resolved it — the reference images carry age anyway, and `apparent age` stays in the preserve line. Do not try to engineer around a refusal; if honest description doesn't render, that's the tool's limit.

---

## What the reference carries vs what you must write

**Carried by the reference (can be cut):** face, bone structure, eye colour, hair colour, skin tone, apparent age, style, palette, paper.

**AND CARRIED WHETHER YOU WANT IT OR NOT: THE EXPRESSION (s42).** A reference does not only supply a face, it supplies that face's **mood**, and in a close crop it wins against the prompt. Twice now:

- `plates/ch01.md`, fallen stars — *neither face is visible* lost to a reference that knew what a carried child does.
- `plates/ch05.md`, the fact lands — the block opened with `THE REFERENCE SHOWS HIM ALERT AND ASKING. THIS PICTURE IS THE OPPOSITE, AND THE EXPRESSION DESCRIBED BELOW OVERRIDES THE REFERENCE COMPLETELY`, in priority position, and the run returned the reference's own wide-eyed asking face anyway.

**So: when a plate needs a face in a state its reference does not hold, cut a second reference. Do not write a longer override.** Naming the conflict does not resolve it; it just puts two arguments in the frame and the picture is only ever one of them.

**AND TRY THE POSE BEFORE THE SECOND REFERENCE (s43, one instance).** Both failures above argued with the reference in words while leaving the head where the reference put it. `plates/ch10.md`, the honey and the bread, moved the boy's eyes down onto an object instead and wrote no override at all, and `kael-9`'s asking face did not arrive — **a reference has no downcast version of itself to supply.** Changing what the body is doing costs one clause where a new reference costs a run, so it is worth trying first. One run; the sheet carries it.

**Must be written every time:** body proportions in unusual poses, posture, what each hand is doing, everything below the collar, framing, lighting across a whole body, and **all clothing** when more than one character is present.

---

## Canon the scene system keeps breaking

Two items recur because the system inherits them rather than inventing them, and both are in `../08-Plates/canon-brief.md`:

**KAEL'S GREY — NO LONGER AN IMAGE CONSTRAINT (author ruling, s42; `../08-Plates/README.md`).** Plates may show it, at full strength, exactly as the portraits and scene tests always could. The rule this section used to carry — *frame it out, answer with distance and occlusion* — is retired, and every Part I plate built under it stands as drawn. It remains unspent on the PAGE, which is a prose rule and binds no image.

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
- **Which faces are not visible, and that it is deliberate.** Where a plate hides a face for its own compositional reasons, say *no eyes are visible anywhere in the picture* and say *do not turn the head toward the viewer*, or the run will helpfully fix it — **and count the channels before trimming either** (§Over-writing contradicts). This is no longer forced by Kael's grey, which s42 freed for plates.

**AND THE `Image N:` LINES NAME THE FILE (author ruling, s43).** A plate block opens with the anchor's actual filename and then its descriptor — `Image 1: severin.png — portrait reference of the old man.` The built `.txt` is the thing that gets pasted, and whoever pastes it has to know which file to attach; a descriptor on its own sends them back to the sheet to find out. **The filenames live in the block**, so it stays the single source, and `scripts/build-prompts.sh` lifts the `Image N:` lines to the very top of the built file, above the house Medium and Colour paragraphs — which is the order the scene skeleton at the head of this file already documents.

**BLOCKS THAT HAVE ALREADY RUN ARE NOT RETROFITTED.** A prompt that produced an adopted image is the record of what ran, which is why `PLATE-VERBATIM` exists at all. The convention applies to blocks written from s43 on, and the older ones keep their anchors in the sheet prose above them.

**The inherited Colour paragraph is written for faces, and a plate must often override it.** It ends *the warmth belongs to the skin alone, not the paper or the cloth* — true of a portrait, where the face is the only warm thing in the frame. A plate lit by a fire, a lamp or a town has its warmth landing on cloth, timber, stone and water, and a plate with no people in it has no skin at all. **Say where the warmth actually lands, inside the plate block.** Do not edit the fixed STYLE block to suit one picture.

**WHICH reference a plate anchors on is settled: the fourteen-year-old set, for every chapter (author ruling, s44 — `../08-Plates/README.md`).** The cost of that, and the instruments for writing an age the anchor does not carry, are there.

**AND A PLATE MAY ATTACH BOTH, WHICH IS NEW (s45, one run).** `plates/ch14.md`'s both-hands-full attached `valeria-14.png` **and** `valeria-14-full.png` — the first time any plate has carried two references of one person — with one line saying they are the same girl and there is one figure in the picture. **No doubling, and the costume repeated**: the over-tunic, the vambraces, the buckled belt and the split skirt all came back off the sheet. **This is the first plate in the folder whose clothing will repeat in the next one.**

**The cost, and it is a trade rather than a fault: the crop came back wider than the block asked.** Waist-up was written and the knee arrived, and with the width went the subject's eye colour, which `../08-Plates/canon-brief.md` reserves for close framing. **So the sheet buys costume continuity and appears to spend crop.** Where a plate needs a tight face, either leave the sheet off or write the crop hard enough to survive it — one run, and the confound is that the same block described a wide setting.

**Anchoring cost, stated per plate.** Scenes want full-body sheets. Plates rarely get them: a plate of a child, of a parent, or of an empty room is anchored on a head-and-shoulders portrait or on nothing at all, and everything below the collar is then authored in the prompt and anchored to nothing — it will not repeat in the next plate. That is not a reason to skip the plate; it is a reason to write the cost on the sheet, so the next session knows which pictures share a body and which only share a face.

## What a warm source will and will not light (s42)

**A warm source lights a face only when it is CLOSE to it. Whether the source is in frame has nothing to do with it.** The folder carried this as an in-frame/out-of-frame rule for a whole session, from a single run, and it was the wrong axis. Four runs settle it:

| plate | warm source | result |
|---|---|---|
| `plates/ch01.md` fallen stars | in frame, far | threw nothing; figures lit by ambient sky |
| `plates/ch05.md` the fact lands | out of frame, near | lit the face from below, cleanly |
| `plates/ch09.md` Aurelian's candle | in frame, near | lit the face from below, cleanly |
| `plates/ch06.md` the treeline | in frame, far | threw nothing; the face was lit from above instead |

**So the question to ask of any plate is how far the light is from the skin**, and the answer is physical: a candle on the bench in front of a boy lights him, a town at the foot of a mountain does not. **Where the source is far, do not ask for a rim or an underlight — say the figure is lit by ambient sky and let the source be the only warm thing in the frame**, which is what `fallen-stars` does and why it works.

**And the general lesson, which is the more useful one: a renderer will refuse an instruction that is physically false, and it is right to.** Two runs were spent asking distant lights to behave like near ones. Check the physics before writing the lighting.

## Some moments are undrawable (s42)

**THE PLATE FOLLOWS THE PAGE assumes the only thing that can stop a plate is spend-state. It is not.** A moment can be page-legal, canon-clean, well-composed and still impossible, because the instrument refuses it.

`plates/ch06.md`, the wheel — a bound child in a yard at night, which is the chapter's own beat and its most human one. Refused twice; the second refusal named the reason: *acceptable depictions of adolescents and children.* **The trigger is the restraint on a child, which is the candidate itself**, so no rewording reaches it. Replacing *bound* with the rope's construction did not move it, and neither did removing the word blood.

**How to tell this apart from a prompt fault:** a prompt fault produces a wrong picture, a refusal produces no picture. **Do not iterate on a refusal.** §Damage already says it — *do not try to engineer around a refusal; if honest description doesn't render, that's the tool's limit* — and the addition here is that the limit can fall on a moment rather than on a phrasing.

**What to do instead:** ask whether the moment survives a crop that removes the person — `ch04.md`'s knot is four hands and an object and depicts nobody. If it does not survive that, take a different moment from the same chapter and **record the block on the sheet**, so the next session does not spend three runs rediscovering it.

## Standing limitation

These models pattern-match rather than model objects. Overlapping limbs, occlusion, and held objects at odd angles are where that breaks — which is exactly what an action scene is.

The techniques here get a usable image in two or three attempts instead of ten. They do not make it reliable. For a specific fight beat rendered exactly, this is reference material for a commission, not a substitute for one.
