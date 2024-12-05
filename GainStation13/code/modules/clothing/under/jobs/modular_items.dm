/mob/living/carbon
	var/modular_items = list()

/mob/living/carbon/adjust_fatness(adjustment_amount, type_of_fattening = FATTENING_TYPE_ITEM)
	..()
	for(var/obj/item/item in modular_items)
		item.update_modular_overlays(src)

/obj/item
	var/modular_icon_location = null
	var/mod_overlays = list()

/obj/item/equipped(mob/user, slot)
	if(modular_icon_location != null && slot == slot_flags) //if(slot == ITEM_SLOT_ICLOTHING)
		update_modular_overlays(user)
	..()

/obj/item/dropped(mob/user)
	remove_modular_overlays(user)
	..()

/obj/item/proc/add_modular_overlay(mob/living/carbon/U, modular_icon, modular_layer, sprite_color)
	var/mutable_appearance/mod_overlay = mutable_appearance(modular_icon_location, modular_icon, -(modular_layer), color = sprite_color)
	mod_overlays += mod_overlay
	U.overlays_standing[modular_layer] =  mod_overlay
	U.apply_overlay(modular_layer)

/obj/item/proc/get_modular_belly(obj/item/organ/genital/G)
	return "belly_[get_belly_size(G)][get_belly_alt()]"

/obj/item/proc/get_belly_size(obj/item/organ/genital/G)
	var/size = G.size
	if(G.size > 9)
		size = 9
	var/shape
	if(G.owner.fullness <= FULLNESS_LEVEL_BLOATED)
		switch(G.shape)
			if("Soft Belly")
				shape = "soft"
			if("Round Belly")
				shape = "round"
	else
		shape = "stuffed"
		var/stuffed_modifier
		switch(G.owner.fullness)
			if(FULLNESS_LEVEL_BLOATED to FULLNESS_LEVEL_BEEG) // Take the stuffed sprite of the same size
				stuffed_modifier = 0
			if(FULLNESS_LEVEL_BEEG to FULLNESS_LEVEL_NOMOREPLZ) // Take the stuffed sprite of size + 1
				stuffed_modifier = 1
			if(FULLNESS_LEVEL_NOMOREPLZ to INFINITY)// Take the stuffed sprite of size + 2
				stuffed_modifier = 2
		size = size + stuffed_modifier

	return "[shape]_[size]"

/obj/item/proc/get_belly_alt()
	return ""

/obj/item/clothing/under/get_belly_alt()
	return "[(adjusted) ? "_d" : ""]"

/obj/item/proc/get_modular_butt(obj/item/organ/genital/G)
	return "butt_[(G.size <= 10 ) ? "[G.size]" : "10"][get_butt_alt()]"

/obj/item/proc/get_butt_alt()
	return "[(mutantrace_variation == STYLE_DIGITIGRADE) ? "_l" : ""]"

/obj/item/proc/get_modular_breasts(obj/item/organ/genital/G)
	var/size
	if(G.size <= "o")
		size = G.size
	else
		switch(G.size)
			if("huge")
				size = "huge"
			if("massive")
				size = "massive"
			if("giga")
				size = "giga"
			if("impossible")
				size = "impossible"
	return "breasts_[size][get_breasts_alt()]"

/obj/item/proc/get_breasts_alt()
	return ""

/obj/item/proc/update_modular_overlays(mob/user)
	if(!iscarbon(user))
		return
	var/mob/living/carbon/U = user
	delete_modular_overlays(U)

	if(!(src in U.modular_items))
		U.modular_items += src
	var/obj/item/organ/O
	var/obj/item/organ/genital/G
	for(O in U.internal_organs) //check the user for the organs they have
		if(istype(O, /obj/item/organ/genital/belly)) //if that organ is a belly
			G = O //treat that organ as a genital
			var/modular_sprite = get_modular_belly(G)
			add_modular_overlay(U, modular_sprite, MODULAR_BELLY_LAYER, color)
			add_modular_overlay(U, "[modular_sprite]_SOUTH", BELLY_FRONT_LAYER, color)
		if(istype(O, /obj/item/organ/genital/butt)) //if that organ is the butt
			G = O
			var/modular_sprite = get_modular_butt(G)
			add_modular_overlay(U, modular_sprite, MODULAR_BUTT_LAYER, color)
			add_modular_overlay(U, "[modular_sprite]_NORTH", BUTT_BEHIND_LAYER, color)
		if(istype(O, /obj/item/organ/genital/breasts)) //if the organ is the breasts
			G = O
			var/modular_sprite = get_modular_breasts(G)
			add_modular_overlay(U, modular_sprite, MODULAR_BREASTS_LAYER, color)
			add_modular_overlay(U, "[modular_sprite]_NORTH", BREASTS_BEHIND_LAYER, color)
			add_modular_overlay(U, "[modular_sprite]_SOUTH", BREASTS_FRONT_LAYER, color)

/obj/item/proc/delete_modular_overlays(mob/user)
	if(!iscarbon(user))
		return
	var/mob/living/carbon/U = user
	if(!(src in U.modular_items))
		return
	for(var/mutable_appearance/overlay in mod_overlays)
		U.cut_overlay(overlay)
	mod_overlays -= mod_overlays

/obj/item/proc/remove_modular_overlays(mob/user)
	if(!iscarbon(user))
		return
	delete_modular_overlays(user)
	var/mob/living/carbon/U = user
	if(src in U.modular_items)
		U.modular_items -= src

/obj/item/clothing/under/color/grey
	modular_icon_location = 'GainStation13/icons/mob/modclothes/graymodular_new.dmi'
