//GS13: donator items and other ckey-locked junk

//commented out everything here, it's bugged

// /datum/gear/donator/gatobadge_employee //these are available only to admins with CC-related characters
// 	name = "GATO Badge - Employee"
// 	category = LOADOUT_CATEGORY_DONATOR
// 	path = /obj/item/clothing/accessory/medal/gato_badge/employee
// 	ckeywhitelist = list("sonoida", "yeeny")

// /datum/gear/donator/gatobadge_middleman //these are available to players who were granted permission to have their characters to CC
// 	name = "GATO Badge - Correspondent"
// 	category = LOADOUT_CATEGORY_DONATOR
// 	path = /obj/item/clothing/accessory/medal/gato_badge/middleman
// 	ckeywhitelist = list("johnjimjim", "sonoida", "yeeny", "Not Number", "Not_Number", "NotNumber",)

// /datum/gear/donator/halsey_overcoat
// 	name = "Halsey's Commander Overcoat"
// 	category = LOADOUT_CATEGORY_DONATOR
// 	path = /obj/item/clothing/suit/chloe/halsey
// 	ckeywhitelist = list("yeeny")

// /datum/gear/donator/haydee_suit
// 	name = "Haydee Suit"
// 	category = LOADOUT_CATEGORY_DONATOR
// 	path = /obj/item/clothing/suit/space/hardsuit/engine/haydee
// 	ckeywhitelist = list("lumu", "sonoida")

// /datum/gear/donator/haydee_pistol
// 	name = "Haydee Pistol"
// 	category = LOADOUT_CATEGORY_DONATOR
// 	path = /obj/item/gun/ballistic/automatic/toy/pistol/haydee
// 	ckeywhitelist = list("lumu", "sonoida")

// /datum/gear/donator/rose_plush
// 	name = "Dezir Rose Plush"
// 	category = LOADOUT_CATEGORY_DONATOR
// 	path = /obj/item/toy/plush/gs13/rose
// 	ckeywhitelist = list("eremitanovem", "sonoida")

// /datum/gear/donator/chloe_plush
// 	name = "Chloe Plush"
// 	category = LOADOUT_CATEGORY_DONATOR
// 	path = /obj/item/toy/plush/gs13/chloe
// 	ckeywhitelist = list("alphas0")

// /datum/gear/donator/grimmy_coat
// 	name = "Overcoat of the Destitute"
// 	category = LOADOUT_CATEGORY_DONATOR
// 	path = /obj/item/clothing/suit/storage/blueshield/grimmy
// 	ckeywhitelist = list("bbgrimmy")

// /datum/gear/donator/tarek_gps
// 	name = "Tarek's GPS"
// 	category = LOADOUT_CATEGORY_DONATOR
// 	path = /obj/item/gps/mining
// 	ckeywhitelist = list("e926user25")

// /datum/gear/donator/milwaukee_crowbar
// 	name = "Milwaukee Pocket Crowbar"
// 	category = LOADOUT_CATEGORY_DONATOR
// 	path = /obj/item/crowbar/bronze/glaug
// 	ckeywhitelist = list("happytpr")

// /datum/gear/donator/fatfang
// 	name = "Fattening Fangs Injector"
// 	category = LOADOUT_CATEGORY_DONATOR
// 	path = /obj/item/dnainjector/fatfang
// 	ckeywhitelist = list("sonoida")

// /datum/gear/donator/toolbelt
// 	name = "Empty Toolbelt"
// 	category = LOADOUT_CATEGORY_DONATOR
// 	path = /obj/item/storage/belt/utility
// 	ckeywhitelist = list("killmewitha22", "Killmewitha22", "KILLMEWITHA22", "sonoida")

// //metha rossi you fat hog

// /datum/gear/donator/wgspell_add
// 	name = "Weight Gain Spellbook"
// 	category = LOADOUT_CATEGORY_DONATOR
// 	path = /obj/item/book/granter/spell/fattening
// 	ckeywhitelist = list("sonoida", "themrsky", "Not Number")

// /datum/gear/donator/wgspell_transfer
// 	name = "Weight Transfer Spellbook"
// 	category = LOADOUT_CATEGORY_DONATOR
// 	path = /obj/item/book/granter/spell/fattening/transfer
// 	ckeywhitelist = list("sonoida", "themrsky", "Not Number")

// /datum/gear/donator/wgspell_take
// 	name = "Weight Steal Spellbook"
// 	category = LOADOUT_CATEGORY_DONATOR
// 	path = /obj/item/book/granter/spell/fattening/steal
// 	ckeywhitelist = list("sonoida", "themrsky", "Not Number")

// /datum/gear/donator/white_eyepatch_cabal
// 	name = "Cabal's Eyepatch"
// 	category = LOADOUT_CATEGORY_DONATOR
// 	path = /obj/item/clothing/glasses/eyepatch/cabal
// 	ckeywhitelist = list("spess_lizurd", "SPESS LIZURD", "spess lizurd", "SPESS_LIZURD", "spesslizurd", "sonoida")

// /datum/gear/white_eyepatch //accessible to anyone, at donator's request
// 	name = "White Eyepatch"
// 	category = LOADOUT_CATEGORY_GLASSES
// 	path = /obj/item/clothing/glasses/eyepatch/white

// /datum/gear/donator/metis_plush
// 	name = "Metis Plush"
// 	category = LOADOUT_CATEGORY_DONATOR
// 	path = /obj/item/toy/plush/gs13/metis
// 	ckeywhitelist = list("paraillegal", "Paraillegal")

// /datum/gear/donator/wheelys
// 	name = "Wheely-Heels"
// 	category = LOADOUT_CATEGORY_DONATOR
// 	path = /obj/item/clothing/shoes/wheelys
// 	ckeywhitelist = list("colorlessspy", "Colorlessspy")

// /datum/gear/donator/crowbars_plush
// 	name = "Crowbars Plush"
// 	category = LOADOUT_CATEGORY_DONATOR
// 	path = /obj/item/toy/plush/gs13/crowbars
// 	ckeywhitelist = list("M16nPregnant", "m16npregnant" )

// /datum/gear/donator/sams_welder
// 	name = "Sam's Unlucky Welder"
// 	category = LOADOUT_CATEGORY_DONATOR
// 	path = /obj/item/weldingtool/bronze
// 	ckeywhitelist = list("almaniak", "Almaniak", "AlManiak")

//
//item presets for donator items
//
/obj/item/clothing/glasses/eyepatch/white
	name = "White eyepatch"
	desc = "Smells faintly of medicine and headaches."
	icon_state = "eyepatch_white"
	item_state = "eyepatch_white"

/obj/item/clothing/glasses/eyepatch/cabal
	name = "Cabal's Eyepatch"
	desc = "Vulpine sluts only."
	icon_state = "eyepatch_white"
	item_state = "eyepatch_white"

/obj/item/toy/sword/chloesabre/halsey
	name = "Halsey's Sabre"
	desc = "An elegant weapon, similar in design to the Captain's Sabre, but with a platinum hilt and an adamantine blade. the hilt has an engraved hyena on it."
	force = 16

/obj/item/gun/ballistic/revolver/mateba/moka
	name = "\improper Custom Unica 6 revolver"
	desc = "An elegant and ornate revolver belonging to a certain hellcat commander. There are some words carved on its side: 'Dura Lex, Sed Lex'"

/obj/item/clothing/suit/chloe/halsey //sorry to whoever chloe is, but that coat is far too badass not to be used
	name = "Halsey's Commander Overcoat"
	desc = "A Ginormous red overcoat that looks fit for a commander. Has a tag on it that reads: 'Property of Halsey Harmonten. Please return if lost!'"
	armor = list("melee" = 20, "bullet" = 20, "laser" = 0,"energy" = 20, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 20, "acid" = 0) //worn by a captain player, might as well recompensate not wearing the carapace

/obj/item/clothing/suit/storage/blueshield/grimmy
	name = "Overcoat of the Destitute"
	desc = "Welcome all to the everlasting all-time low. Please put your hands together for the ever-failing one man show: Domino!"

/obj/item/crowbar/bronze/glaug
	name = "Milwaukee Pocket Crowbar"
	desc = "Much more expensive. Still serves the same function."
