# iatgen-stiat

Use `iatgen:writeSCIATfull()` to create single-target IAT that includes training block (a la Inquisit).

Initial code for develping ST-IAT obtained from [Dr. Tom Carpenter](http://spu.edu/academics/school-of-psychology-family-community/faculty-and-staff/thomas-carpenter-profile), one of the lead developers of [iatgen](https://iatgen.wordpress.com/), which enables researchers to implement IAT's on Qualtrics.

# General Steps
1. **Use iatgen:writeSCIATfull() to create 'skeleton' of ST-IAT**
    * Importantly, should include the target and attribute stimuli that you want to use!
  
2. **Use iatgen:writeIATfull() to create a dummy IAT**** then "steal" the training block(s) from this dummy IAT, for example, by importing questions from destination 'skeleton ST-IAT created in (1)
    * Importantly, you must "steal" two training blocks, one with positive category on right (RP/LN) and one with positive category on left (RN/LP)
  
3. **Modify survey flow in destination ST-IAT** 
    * Add randomizer so that participants will see only one of the two training blocks stolen from dummy IAT
    * Add logic tree/randomizer so that participants will only see one of the two ST-IAT's that correspond to the placement of "POSITIVE" and "NEGATIVE" (or whatever categories) that was present in the training block
    * For example, if participant was randomly placed in the training block in which POSITIVE was on the right side of the screen (RP/LN); then they should only be able to be placed into the two ST-IATs with the same placements (i.e., either [a] RP, compatible first or [b] LN, incompatible first--both of which have "POSITIVE" on the right side of the screen)

4. **Modify html for *ALL* questions to ensure that everything makes sense**
  * e.g., instructions on training blocks should read like they are the first block in the study, which they will not
  * e.g., on training blocks, there are trial/block numbers (e.g. "1 of 4") at the bottom of slides that need to be changed
  * e.g., on testing blocks, there are instructions that read like it is the VERY first block; unnecessary, perhaps move this instruction wording to before the training blocks
  * Use files e.g., "add-to-q1-html.txt" and replace matching part in html for corresponding block (e.g., Question 1 in ALL FOUR versions [blocks] of IAT)
  * **IMPORTANT**: The only part of the html for each question that is changed is from the line below until the END: `<div class="instruct" id="instructions">`

5. **Modify "pre-IAT" content in Qualtrics** (e.g., with instructions, etc.)

6. **Modify Block names**
  * Training Blocks
  * IAT 1 - Compatible First [Target A on RIGHT with POS]
  * IAT 2 - Incompatible First [Target A on LEFT with NEG]
  * IAT 3 - Compatible First [Target A on LEFT with POS]
  * IAT 4 - Incompatible First [Target A on RIGHT with NEG]

7. **Modify Question names**
  * e.g., for "IAT 1 - Compatible First [Target A on RIGHT with POS]": "Q1 RP1", "Q2 RP2",...