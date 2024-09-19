//GS13: donator items and other ckey-locked junk
/datum/gear/gatobadge_employee //these are available only to admins with CC-related characters
	name = "GATO Badge - Employee"
	category = LOADOUT_CATEGORY_DONATOR
	path = /obj/item/clothing/accessory/medal/gato_badge/employee
	ckeywhitelist = list("sonoida", "yeeny")

/datum/gear/gatobadge_middleman //these are available to players who were granted permission to have their characters to CC
	name = "GATO Badge - Correspondent"
	category = LOADOUT_CATEGORY_DONATOR
	path = /obj/item/clothing/accessory/medal/gato_badge/middleman
	ckeywhitelist = list("johnjimjim", "sonoida", "yeeny", "Not Number")

/datum/gear/halsey_overcoat
	name = "Halsey's Commander Overcoat"
	category = LOADOUT_CATEGORY_DONATOR
	path = /obj/item/clothing/suit/chloe/halsey
	ckeywhitelist = list("yeeny")

/datum/gear/haydee_suit
	name = "Haydee Suit"
	category = LOADOUT_CATEGORY_DONATOR
	path = /obj/item/clothing/suit/space/hardsuit/engine/haydee
	ckeywhitelist = list("lumu", "sonoida")

/datum/gear/haydee_pistol
	name = "Haydee Pistol"
	category = LOADOUT_CATEGORY_DONATOR
	path = /obj/item/gun/ballistic/automatic/toy/pistol/haydee
	ckeywhitelist = list("lumu", "sonoida")

//sorry for defining this here, just thought it'd be more convenient
/obj/item/clothing/suit/chloe/halsey //sorry to whoever chloe is, but that coat is far too badass not to be used
	name = "Halsey's Commander Overcoat"
	desc = "A Ginormous red overcoat that looks fit for a commander. Has a tag on it that reads: 'Property of Halsey Harmonten. Please return if lost!'"
	armor = list("melee" = 20, "bullet" = 20, "laser" = 0,"energy" = 20, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 20, "acid" = 0) //worn by a captain player, might as well recompensate not wearing the carapace

/datum/gear/rose_plush
	name = "Dezir Rose Plush"
	category = LOADOUT_SUBCATEGORY_BACKPACK_TOYS
	path = /obj/item/toy/plush/gs13/rose
	ckeywhitelist = list("eremitanovem", "sonoida")

/datum/gear/chloe_plush
	name = "Chloe Plush"
	category = LOADOUT_SUBCATEGORY_BACKPACK_TOYS
	path = /obj/item/toy/plush/gs13/chloe
	ckeywhitelist = list("alphas0")

/datum/gear/grimmy_coat
	name = "Overcoat of the Destitute"
	category = LOADOUT_SUBCATEGORY_BACKPACK_TOYS
	path = /obj/item/clothing/suit/storage/blueshield/grimmy
	ckeywhitelist = list("bbgrimmy")

/obj/item/clothing/suit/storage/blueshield/grimmy
	name = "Overcoat of the Destitute"
	desc = "Welcome all to the everlasting all-time low. Please put your hands together for the ever-failing one man show: Domino!"

/datum/gear/tarek_gps
	name = "Tarek's GPS"
	category = LOADOUT_SUBCATEGORY_BACKPACK_TOYS
	path = /obj/item/gps/mining
	ckeywhitelist = list("e926user25")

/datum/gear/milwaukee_crowbar
	name = "Milwaukee Pocket Crowbar"
	category = LOADOUT_SUBCATEGORY_BACKPACK_TOYS
	path = /obj/item/crowbar/bronze/glaug
	ckeywhitelist = list("happytpr")

/obj/item/crowbar/bronze/glaug
	name = "Milwaukee Pocket Crowbar"
	desc = "Much more expensive. Still serves the same function."

/datum/gear/fatfang
	name = "Fattening Fangs Injector"
	category = LOADOUT_SUBCATEGORY_BACKPACK_TOYS
	path = /obj/item/dnainjector/fatfang
	ckeywhitelist = list("sonoida")

/datum/gear/toolbelt
	name = "Empty Toolbelt"
	category = LOADOUT_SUBCATEGORY_BACKPACK_TOYS
	path = /obj/item/storage/belt/utility
	ckeywhitelist = list("killmewitha22", "Killmewitha22", "KILLMEWITHA22", "sonoida")

/obj/item/toy/sword/chloesabre/halsey
	name = "Halsey's Sabre"
	desc = "An elegant weapon, similar in design to the Captain's Sabre, but with a platinum hilt and an adamantine blade. the hilt has an engraved hyena on it."
	force = 16

/obj/item/gun/ballistic/revolver/mateba/moka
	name = "\improper Custom Unica 6 revolver"
	desc = "An elegant and ornate revolver belonging to a certain hellcat commander. There are some words carved on its side: 'Dura Lex, Sed Lex'"

//metha rossi you fat hog

/datum/gear/wgspell_add
	name = "Weight Gain Spellbook"
	category = LOADOUT_SUBCATEGORY_BACKPACK_TOYS
	path = /obj/item/book/granter/spell/fattening
	ckeywhitelist = list("sonoida", "themrsky", "Not Number")

/datum/gear/wgspell_transfer
	name = "Weight Transfer Spellbook"
	category = LOADOUT_SUBCATEGORY_BACKPACK_TOYS
	path = /obj/item/book/granter/spell/fattening/transfer
	ckeywhitelist = list("sonoida", "themrsky", "Not Number")

/datum/gear/wgspell_take
	name = "Weight Steal Spellbook"
	category = LOADOUT_SUBCATEGORY_BACKPACK_TOYS
	path = /obj/item/book/granter/spell/fattening/steal
	ckeywhitelist = list("sonoida", "themrsky", "Not Number")


/datum/gear/white_eyepatch_cabal
	name = "Cabal's Eyepatch"
	category = LOADOUT_CATEGORY_GLASSES
	path = /obj/item/clothing/glasses/eyepatch/cabal
	ckeywhitelist = list("spess_lizurd", "SPESS LIZURD", "spess lizurd", "SPESS_LIZURD", "spesslizurd", "sonoida")

/datum/gear/white_eyepatch
	name = "White Eyepatch"
	category = LOADOUT_CATEGORY_GLASSES
	path = /obj/item/clothing/glasses/eyepatch/white

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
