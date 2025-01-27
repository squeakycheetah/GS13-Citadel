GLOBAL_LIST_EMPTY(enabled_smallsprite)
GLOBAL_LIST_EMPTY(see_toggle_smallsprite)

/mob/
	var/see_resized_others = FALSE

/datum/atom_hud/alternate_appearance/basic/showSmall

/datum/atom_hud/alternate_appearance/basic/showSmall/New()
	..()
	for(var/mob in GLOB.player_list)
		if(mobShouldSee(mob))
			add_hud_to(mob)

/datum/atom_hud/alternate_appearance/basic/showSmall/mobShouldSee(mob/M)
	return FALSE

/client/verb/toggle_others_giant()
	set name = "Toggle Others' Giant Sprite"
	set category = "Preferences"
	set desc = "Change display settings to and from displaying others' giant sprites."
	if(!mob.see_resized_others)
		mob.see_resized_others = !mob.see_resized_others
		GLOB.see_toggle_smallsprite += mob
		for(var/mob/living/L in GLOB.enabled_smallsprite)
			if(L && L != mob && L.alternate_appearances && L.alternate_appearances["gscode_smallsprite"])
				var/datum/atom_hud/alternate_appearance/AA = L.alternate_appearances["gscode_smallsprite"]
				AA.add_to_single_hud(mob, L)
	else
		mob.see_resized_others = !mob.see_resized_others
		GLOB.see_toggle_smallsprite -= mob
		for(var/mob/living/L in GLOB.enabled_smallsprite)
			if(L && L.alternate_appearances && L.alternate_appearances["gscode_smallsprite"])
				var/datum/atom_hud/alternate_appearance/AA = L.alternate_appearances["gscode_smallsprite"]
				AA.remove_from_single_hud(mob, L)

/mob/living/proc/regenerate_smallsprite()
	if(alternate_appearances && alternate_appearances["gscode_smallsprite"])
		for(var/mob/M in GLOB.see_toggle_smallsprite)
			var/datum/atom_hud/alternate_appearance/AA = alternate_appearances["gscode_smallsprite"]
			AA.remove_from_single_hud(M, src)
		remove_alt_appearance("gscode_smallsprite")
	if(size_multiplier > 1)
		if(!GLOB.enabled_smallsprite[src])
			GLOB.enabled_smallsprite += src
		add_alt_appearance(/datum/atom_hud/alternate_appearance/basic/showSmall, "gscode_smallsprite", generate_smallsprite(), FALSE)
		for(var/mob/M in GLOB.see_toggle_smallsprite)
			if(M != src)
				var/datum/atom_hud/alternate_appearance/AA = alternate_appearances["gscode_smallsprite"]
				AA.add_to_single_hud(M, src)
		return TRUE
	else
		if(GLOB.enabled_smallsprite[src])
			GLOB.enabled_smallsprite -= src
		return FALSE

/mob/living/proc/generate_smallsprite()
	var/image/I = image(icon=icon, icon_state=icon_state, loc=src, layer=layer, pixel_x=pixel_x, pixel_y=pixel_y)
	I.overlays += overlays
	I.override = TRUE
	var/matrix/ntransform = matrix(lying, MATRIX_ROTATE)
	if(lying != 0)
		ntransform.Translate(0, -get_standard_pixel_y_offset(lying))
	I.transform = ntransform
	return I

/mob/living/BiologicalLife(delta_time, times_fired)
	. = ..()
	regenerate_smallsprite()
