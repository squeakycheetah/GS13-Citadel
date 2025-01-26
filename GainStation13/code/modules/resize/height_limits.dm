/mob/
	var/datum/action/resize_others/resize_others
	var/see_resized_others = FALSE

/datum/action/resize_others
	name = "Toggle Others' Giant Sprites"
	desc = "Others will now look small to you."
	icon_icon = 'icons/mob/screen_gen_old.dmi'
	button_icon_state = "health1"		//You can change this if you want
	background_icon_state = "bg_alien"	//But keep this as a distinct background

/datum/action/resize_others/Trigger()
	..()
	owner.see_resized_others = !owner.see_resized_others
	if(owner.see_resized_others)
		for(var/mob/living/L in GLOB.mob_living_list)
			if(L.size_multiplier > 1)
				L.add_alt_appearance(/datum/atom_hud/alternate_appearance/basic/showSmall, "gscode_smallsprite", GenerateSprite(L), FALSE)
				var/datum/atom_hud/alternate_appearance/AA = L.alternate_appearances["gscode_smallsprite"]
				if(L != owner)
					AA.add_to_single_hud(owner, L)
	else
		for(var/mob/living/L in GLOB.mob_living_list)
			if(L.size_multiplier > 1)
				var/datum/atom_hud/alternate_appearance/AA = L.alternate_appearances["gscode_smallsprite"]
				if(AA)
					AA.remove_from_single_hud(owner, L)
	return TRUE

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
