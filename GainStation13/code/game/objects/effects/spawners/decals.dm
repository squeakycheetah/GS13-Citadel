/obj/effect/decal/cleanable/greenglow/radioactive
	name = "radioactive hazard"
	desc = "You should really clean this up..."
	var/rad_pulse_strength = 5
	var/last_event = 0
	var/active = null

/obj/effect/decal/cleanable/greenglow/radioactive/Crossed(atom/movable/O)
	. = ..()
	if(ismob(O))
		radiate()

/obj/effect/decal/cleanable/greenglow/radioactive/proc/radiate()
	if(!active)
		if(world.time > last_event+15)
			active = 1
			radiation_pulse(src, rad_pulse_strength)
			for(var/obj/effect/decal/cleanable/greenglow/radioactive/T in orange(1,src))
				T.radiate()
			last_event = world.time
			active = 0
			return
