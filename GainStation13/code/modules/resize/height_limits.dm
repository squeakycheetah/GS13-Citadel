/mob/
	var/datum/action/resize_others/resize_others
	var/see_resized_others = FALSE

/datum/action/resize_others
	name = "Toggle Others' Giant Sprites"
	desc = "Others will now look small to you."
	icon_icon = 'icons/mob/screen_gen_old.dmi'
	button_icon_state = "health1"		//You can change this if you want
	background_icon_state = "bg_alien"	//But keep this as a distinct background
	var/small = FALSE
	var/image/small_icon

/datum/action/resize_others/Trigger()
	..()
	owner.see_resized_others = !owner.see_resized_others
	return TRUE

/datum/atom_hud/alternate_appearance/basic/showSmall

/datum/atom_hud/alternate_appearance/basic/showSmall/New()
	..()
	for(var/mob in GLOB.player_list)
		if(mobShouldSee(mob))
			add_hud_to(mob)

/datum/atom_hud/alternate_appearance/basic/blessedAware/mobShouldSee(mob/M)
	if(M.mind)
		if(M.see_resized_others == TRUE)
			return TRUE
	return FALSE

/datum/action/sizecode_resize/Grant(mob/M, safety=FALSE)
	if(ishuman(M) && !safety)	//this probably gets called before a person gets overlays on roundstart, so try again
		if(!LAZYLEN(M.overlays))
			addtimer(CALLBACK(src,PROC_REF(Grant), M, TRUE), 5)	//https://www.youtube.com/watch?v=QQ-aYZzlDeo
			return

	..()
	if(!owner)
		return

	owner.add_alt_appearance(/datum/atom_hud/alternate_appearance/basic/showSmall, "gscode_smallsprite", small_icon, FALSE)
	message_admins("generated")
