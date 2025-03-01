/obj/item/clothing/shoes/galoshes
	desc = "Rubber boots."
	name = "galoshes"
	icon_state = "galoshes"
	permeability_coefficient = 0.05
	item_flags = ITEM_FLAG_NOSLIP
	can_hold_knife = 1
	species_restricted = null

/obj/item/clothing/shoes/galoshes/Initialize()
	. = ..()
	slowdown_per_slot[slot_shoes] = 1

/obj/item/clothing/shoes/jackboots
	name = "jackboots"
	desc = "Tall synthleather boots with an artificial shine."
	icon_state = "jackboots"
	item_state = "jackboots"
	force = 3
	armor = list(melee = 30, bullet = 10, laser = 10, energy = 15, bomb = 20, bio = 0, rad = 0)
	siemens_coefficient = 0.7
	can_hold_knife = 1
	cold_protection = FEET
	min_cold_protection_temperature = HELMET_MIN_COLD_PROTECTION_TEMPERATURE
	var/obj/item/material/sword/combat_knife/knife = null

/obj/item/clothing/shoes/jackboots/New()
	..()
	knife = new
	update_icon()

/obj/item/clothing/shoes/jackboots/attackby(obj/item/I, mob/user)
	. = ..()
	if(istype(I, /obj/item/material/sword/combat_knife))
		if(knife)//We've already got a knife in there, no need for another.
			return
		user.drop_from_inventory(I)
		I.forceMove(src)
		knife = I
		update_icon()
		playsound(src, 'sound/items/holster_knife.ogg', 50, 0, -1)

/obj/item/clothing/shoes/jackboots/attack_hand(mob/living/user)
	if(knife)
		user.put_in_active_hand(knife)
		knife = null
		update_icon()
		return
	..()

/obj/item/clothing/shoes/jackboots/update_icon()
	..()//I am aware this breaks the blood overlay, however I'm not particularly worried about that. We can fix that later. - Matt
	var/image/I = image('icons/obj/clothing/accessory_overlays.dmi', "bootknife_0")
	if(knife)
		I = image('icons/obj/clothing/accessory_overlays.dmi', "bootknife_1")

	overlays += I



/obj/item/clothing/shoes/jackboots/unathi
	name = "toe-less jackboots"
	desc = "Modified pair of jackboots, particularly comfortable for those species whose toes hold claws."
	item_state = "digiboots"
	icon_state = "digiboots"
	species_restricted = null

/obj/item/clothing/shoes/workboots
	name = "workboots"
	desc = "A pair of steel-toed work boots designed for use in industrial settings. Safety first."
	icon_state = "workboots"
	item_state = "workboots"
	armor = list(melee = 40, bullet = 0, laser = 0, energy = 15, bomb = 20, bio = 0, rad = 20)
	siemens_coefficient = 0.7
	can_hold_knife = 1

/obj/item/clothing/shoes/workboots/toeless
	name = "toe-less workboots"
	desc = "A pair of toeless work boots designed for use in industrial settings. Modified for species whose toes have claws."
	icon_state = "workbootstoeless"
	species_restricted = null

/obj/item/clothing/shoes/commandboots
	name = "boots of command"
	desc = "Expensive leather boots that demand respect."
	icon_state = "hopboots"
	item_state = "hopboots"
	species_restricted = null