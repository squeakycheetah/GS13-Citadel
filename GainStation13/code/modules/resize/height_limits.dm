/mob/
	var/datum/action/resize_others/resize_others
	var/see_resized_others = FALSE

/datum/action/resize_others/proc/GenerateSprite(mob/living/L)
	var/image/I = image(icon=L.icon,icon_state=L.icon_state,loc=L,layer=L.layer,pixel_x=L.pixel_x,pixel_y=L.pixel_y)
	I.overlays += L.overlays
	I.override = TRUE
	return I

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
	message_admins("Working")
	mob.see_resized_others = !mob.see_resized_others
	if(mob.see_resized_others)
		for(var/mob/living/L in GLOB.mob_living_list)
			if(L && L.size_multiplier > 1)
				L.add_alt_appearance(/datum/atom_hud/alternate_appearance/basic/showSmall, "gscode_smallsprite", GenerateSprite(L), FALSE)
				var/datum/atom_hud/alternate_appearance/AA = L.alternate_appearances["gscode_smallsprite"]
				if(L != mob)
					message_admins(mob.name)
					AA.add_to_single_hud(mob, L)
					message_admins("Done")
	else
		for(var/mob/living/L in GLOB.mob_living_list)
			if(L && L.size_multiplier > 1 && L.alternate_appearances)
				message_admins(L.name)
				var/datum/atom_hud/alternate_appearance/AA = L.alternate_appearances["gscode_smallsprite"]
				if(AA)
					AA.remove_from_single_hud(mob, L)
					message_admins("Removed")

/client/proc/GenerateSprite(mob/living/L)
	if(!L)
		return
	var/image/I = image(icon=L.icon,icon_state=L.icon_state,loc=L,layer=L.layer,pixel_x=L.pixel_x,pixel_y=L.pixel_y)
	I.overlays += L.overlays
	I.override = TRUE
	return I
