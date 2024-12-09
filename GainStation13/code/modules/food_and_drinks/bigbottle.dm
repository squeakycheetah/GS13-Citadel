////////////////////////////////////////////////////////////////////////////////
/// GS13 - big bottles
////////////////////////////////////////////////////////////////////////////////

//unfortunately I wasn't able to code in a fancy overlay that changes depending on bottle's contents volume
//however if anyone would like to give it a go, the sprites for it are already there, in the .dmi

/obj/item/reagent_containers/food/drinks/bigbottle
	name = "Bottle"
	desc = "You shouldn't see this."
	icon = 'GainStation13/icons/obj/food/bigbottle.dmi'
	icon_state = "bigbottle"
	list_reagents = list(/datum/reagent/consumable/space_cola = 25)
	foodtype = SUGAR

/obj/item/reagent_containers/food/drinks/bigbottle/starkist
	name = "StarKist Bottle"
	desc = "A big bottle of Sunkist - for all your chuggin' needs."
	icon_state = "bigbottle_fan"
	list_reagents = list(/datum/reagent/consumable/space_cola = 40, /datum/reagent/consumable/orangejuice = 40)
	foodtype = SUGAR

/obj/item/reagent_containers/food/drinks/bigbottle/cola
	name = "GT-Cola Bottle"
	desc = "A big bottle of GT-Cola - for all your chuggin' needs."
	icon_state = "bigbottle_cola"
	list_reagents = list(/datum/reagent/consumable/space_cola = 80)
	foodtype = SUGAR

/obj/item/reagent_containers/food/drinks/bigbottle/spaceup
	name = "Space-Up! Bottle"
	desc = "A big bottle of Space-Up! - for all your chuggin' needs."
	icon_state = "bigbottle_spr"
	list_reagents = list(/datum/reagent/consumable/space_up = 80)
	foodtype = SUGAR
