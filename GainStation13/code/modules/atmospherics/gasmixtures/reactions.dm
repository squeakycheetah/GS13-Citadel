/datum/gas_reaction/lipoifium_formation
	priority = 12345
	name = "Lipoifium Formation"
	id = "lipoifium_formation"

/datum/gas_reaction/lipoifium_formation/init_reqs()
	min_requirements = list(
		GAS_PLASMA = 20,
		GAS_N2 = 20
	)

/datum/gas_reaction/lipoifium_formation/react(datum/gas_mixture/air)
	//var/temperature = air.return_temperature()
	air.adjust_moles(GAS_FAT, 1)
	air.adjust_moles(GAS_PLASMA, -1)
	air.adjust_moles(GAS_N2, -1)
