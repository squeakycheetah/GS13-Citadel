//GS13 - markings, ported or our own (preferably mark where you took them from)

#define NEWHAIR(_name, new_state) /datum/sprite_accessory/hair/##new_state/icon_state=#new_state;/datum/sprite_accessory/hair/##new_state/name = #_name;/datum/sprite_accessory/hair/##new_state/icon = 'GainStation13/icons/mob/human_face.dmi'

NEWHAIR(Elize, hair_elize)
NEWHAIR(Lem, hair_lem)
NEWHAIR(Straight (Floorlength), hair_straightfloorlength)

#undef NEWHAIR

