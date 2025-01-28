
//Lists to keep track of:
// - Mobs with a sprite size over 100%
// - Mobs with the toggle activated
// Done to reduce the amount of mobs that need to be taken into account when the toggle is switched and for updating the seen sprite
GLOBAL_LIST_EMPTY(enabled_smallsprite)
GLOBAL_LIST_EMPTY(see_toggle_smallsprite)

//var to know if one has the toggle activated or not
/mob/
	var/see_resized_others = FALSE

/datum/atom_hud/alternate_appearance/basic/showSmall

//Verb for the associated toggle.
//When switched on, add the current mob to the list of mobs that need to see smallsprites and apply the ones already present immediately to the mob's hud.
//When switched off, remove from the list and remove smallsprites for the user's hud.
/client/verb/toggle_others_giant()
	set name = "Toggle Others' Giant Sprite"
	set category = "Preferences.GS13"
	set desc = "Change display settings to and from displaying others' giant sprites."
	if(!mob.see_resized_others)
		mob.see_resized_others = !mob.see_resized_others
		GLOB.see_toggle_smallsprite += mob
		for(var/mob/living/L in GLOB.enabled_smallsprite)
			if(L && L != mob && L.alternate_appearances && L.alternate_appearances["gscode_smallsprite"])
				var/datum/atom_hud/alternate_appearance/AA = L.alternate_appearances["gscode_smallsprite"]
				AA.add_to_single_hud(mob, L)
		to_chat(src, "Resize others view toggled ON.")
	else
		mob.see_resized_others = !mob.see_resized_others
		GLOB.see_toggle_smallsprite -= mob
		for(var/mob/living/L in GLOB.enabled_smallsprite)
			if(L && L.alternate_appearances && L.alternate_appearances["gscode_smallsprite"])
				var/datum/atom_hud/alternate_appearance/AA = L.alternate_appearances["gscode_smallsprite"]
				AA.remove_from_single_hud(mob, L)
		to_chat(src, "Resize others view toggled OFF.")

//Call to regenerate the sprites and update huds.
//If present, remove the old sprite from the huds and from the mob
//If the size_multiplier is still higher than 1, check if the mob is in the list of smallsprite mobs and add it if not
// add a new sprite by generating it, then go through the list of mobs with smallsprites toggled on and it to their hud
//If the size_multiplier was not higher than one then remove the mob from the list of smallsprite mobs
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

//Generate the image based on the mob's current icon and apply matrix transformations
// to adjust its position and angle
/mob/living/proc/generate_smallsprite()
	var/image/I = image(icon=icon, icon_state=icon_state, loc=src, layer=layer, pixel_x=pixel_x, pixel_y=pixel_y)
	I.overlays += overlays
	I.override = TRUE
	var/matrix/ntransform = matrix(lying, MATRIX_ROTATE)
	if(lying != 0)
		ntransform.Translate(0, -get_standard_pixel_y_offset(lying))
	I.transform = ntransform
	return I

//Called periodically to regenerate the mob's smallsprite
/mob/living/BiologicalLife(delta_time, times_fired)
	. = ..()
	regenerate_smallsprite()
