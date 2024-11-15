/mob/living/proc/get_tf_component()
	var/obj/item/item_loc = loc
	if(!istype(item_loc))
		return FALSE

	var/datum/component/transformation_item/transformation_component = item_loc.GetComponent(/datum/component/transformation_item)
	if(!istype(transformation_component) || (transformation_component.transformed_mob != src))
		return FALSE

	return transformation_component

/mob/living/proc/handle_transformation_ooc_escape()
	var/datum/component/transformation_item/transformation_component = get_tf_component()
	if(!transformation_component)
		return FALSE

	qdel(transformation_component)
	return TRUE

/mob/living/proc/attempt_to_escape_tf()
	var/datum/component/transformation_item/transformation_component = get_tf_component()
	if(!transformation_component)
		return FALSE

