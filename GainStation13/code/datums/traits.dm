/datum/quirk/fatness_liker //GS13
	name = "Fat Affinity"
	desc = "You like being fat, alot, maybe even a little bit too much. Being fat gives you a bigger mood boost."
	mob_trait = TRAIT_FAT_GOOD
	value = 0
	medical_record_text = "Patient seems overly content with gaining weight."

/datum/quirk/fatness_hater //GS13
	name = "Fat Aversion"
	desc = "You dislike being fat. Being fat brings your mood down, alot."
	mob_trait = TRAIT_FAT_BAD
	value = 0
	medical_record_text = "Patient seems distressed by gaining weight."

/datum/quirk/weak_legs //GS13
	name = "Weak Legs"
	desc = "Your legs can't handle the heaviest of charges. Being too fat will render you unable to move at all."
	mob_trait = TRAIT_WEAKLEGS
	value = -1
	medical_record_text = "Patient's legs seem to lack strength"

/datum/quirk/draconicspeaker
	name = "Draconic speaker"
	desc = "Due to your time spent around lizards, you can speak Draconic!"
	value = 1
	gain_text = "<span class='notice'>You feel sensitive to hissing noises and your tongue curls comfortably.</span>"
	lose_text = "<span class='notice'>You forget how to speak Draconic!</span>"

/datum/quirk/draconicspeaker/add()
	var/mob/living/M = quirk_holder
	M.grant_language(/datum/language/draconic)

/datum/quirk/draconicspeaker/remove()
	var/mob/living/M = quirk_holder
	M?.remove_language(/datum/language/draconic)

/datum/quirk/slimespeaker
	name = "Slime speaker"
	desc = "Due to your time spent around slimes, you can speak Slimespeak!"
	value = 1
	gain_text = "<span class='notice'>You feel sensitive to blorbling noises, and your throat produces melodic sounds.</span>"
	lose_text = "<span class='notice'>You forget how to speak Slimespeak!</span>"

/datum/quirk/slimespeaker/add()
	var/mob/living/M = quirk_holder
	M.grant_language(/datum/language/slime)

/datum/quirk/slimespeaker/remove()
	var/mob/living/M = quirk_holder
	M?.remove_language(/datum/language/slime)
