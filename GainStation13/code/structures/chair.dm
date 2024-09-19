/obj/structure/chair/foldingchair
	name = "folding chair"
	desc = "A collapsible folding chair."
	icon = 'GainStation13/icons/obj/chairs.dmi'
	icon_state = "chair_fold"
	color = "#ffffff"
	item_chair = ""

/obj/structure/chair/mountchair
	name = "mounted chair"
	desc = "A chair mounted to the floor, this aint going anywhere!"
	icon = 'GainStation13/icons/obj/chairs.dmi'
	icon_state = "mounted_chair"
	color = "#ffffff"
	item_chair = ""

/obj/structure/chair/sofachair
	name = "sofa chair"
	desc = "A leather sofa chair."
	icon = 'GainStation13/icons/obj/chairs.dmi'
	icon_state = "sofachair"
	color = "#ffffff"
	item_chair = ""
	var/mutable_appearance/armrest

/obj/structure/chair/sofachair/proc/GetArmrest()
	return mutable_appearance('GainStation13/icons/obj/chairs.dmi', "sofachair_armrest")

/obj/structure/chair/sofachair/Destroy()
	QDEL_NULL(armrest)
	return ..()

/obj/structure/chair/sofachair/post_buckle_mob(mob/living/M)
	. = ..()
	update_armrest()

/obj/structure/chair/sofachair/proc/update_armrest()
	if(has_buckled_mobs())
		add_overlay(armrest)
	else
		cut_overlay(armrest)

/obj/structure/chair/sofachair/post_unbuckle_mob()
	. = ..()
	update_armrest()

/obj/structure/chair/sofachair/Initialize()

	armrest = GetArmrest()
	armrest.layer = ABOVE_MOB_LAYER
	return ..()

/obj/structure/rack/shelf
	name = "shelving"
	desc = "Some nice metal shelves."
	icon = 'hyperstation/icons/obj/objects.dmi'
	icon_state = "shelf"

/obj/structure/chair/comfy/blue
	color = rgb(50, 64, 255)
