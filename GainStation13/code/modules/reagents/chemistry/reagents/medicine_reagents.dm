//Chem for regen extracts to use
/datum/reagent/medicine/pure_regen_jelly
	name = "Pure Regenerative Jelly"
	description = "Very pure form of regenerative jelly that regenerates all types of damage rapidly, without harming slime anatomy."
	reagent_state = LIQUID
	color = "#91D865"
	metabolization_rate = 0.25 * REAGENTS_METABOLISM
	taste_description = "jelly"
	can_synth = FALSE

/datum/reagent/medicine/pure_regen_jelly/on_mob_life(mob/living/carbon/M)
	M.adjustBruteLoss(-5*REM, 0)
	M.adjustFireLoss(-5*REM, 0)
	M.adjustOxyLoss(-5*REM, 0)
	M.adjustToxLoss(-5*REM, 0, TRUE) //heals TOXINLOVERs
	. = 1
	..()

/datum/reagent/medicine/pure_neo_jelly
	name = "Pure Neo Jelly"
	description = "Pure Neo-Jelly that rapidly heals all damage."
	reagent_state = LIQUID
	metabolization_rate = 0.25 * REAGENTS_METABOLISM
	color = "#91D865"
	taste_description = "jelly"
	can_synth = FALSE

/datum/reagent/medicine/pure_neo_jelly/on_mob_life(mob/living/carbon/M)
	M.adjustBruteLoss(-1*REM, 0)
	M.adjustFireLoss(-1*REM, 0)
	M.adjustOxyLoss(-1*REM, 0)
	M.adjustToxLoss(-1*REM, 0, TRUE) //heals TOXINLOVERs
	M.heal_bodypart_damage(3,3)
	. = 1
	..()
