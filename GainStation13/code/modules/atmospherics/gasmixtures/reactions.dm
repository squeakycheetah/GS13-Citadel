/datum/gas_reaction/lipoifium_formation
	priority = 7
	name = "Lipoifium Formation"
	id = "lipoifium_formation"

/datum/gas_reaction/lipoifium_formation/init_reqs()
	min_requirements = list(
		"MAX_TEMP" = 100
		GAS_BZ = 15,
		GAS_TRITIUM = 15
	)

/datum/gas_reaction/lipoifium_formation/react(datum/gas_mixture/air)
	// TODO: make the reaction exothermic, and make it more efficient at lower temperatures
	air.adjust_moles(GAS_FAT, 1)
	air.adjust_moles(GAS_PLASMA, -1)
	air.adjust_moles(GAS_N2, -1)
