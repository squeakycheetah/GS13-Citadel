//gs13 - solar defence crate
/obj/structure/closet/crate/solarpanel_defence
	name = "solar system defence crate"
	icon_state = "engi_e_crate"

/obj/structure/closet/crate/solarpanel_defence/PopulateContents()
	..()
	new /obj/machinery/satellite/meteor_shield(src)
	new /obj/machinery/satellite/meteor_shield(src)
	new /obj/machinery/satellite/meteor_shield(src)
	new /obj/machinery/satellite/meteor_shield(src)
	new /obj/item/paper/guides/jobs/engi/solar_defence(src)
	new /obj/item/circuitboard/computer/sat_control(src)

/obj/item/paper/guides/jobs/engi/solar_defence
	name = "Info on Satellite Defence"
	info = "<h1>Welcome</h1><p>With this crate, you will be able to protect the station's solar arrays from constant barrages of space sand. The set-up is simple. Drag around all the satellites in front of solar panel arrays, preferably in direction open to space (the best spot is near the solar tracker and outside of the grilles), as that is where the space sand will come from. It's advised to set down just 1 satellite for each solar array. Once you set the satellite down, you can activate it by flicking on the switch. The crate also provides you with an OPTIONAL computer board to keep track of your defence satellites. Voila!</p>"
