/decl/hierarchy/outfit/job/captain
	name = OUTFIT_JOB_NAME("Rogue Trader")
	head = /obj/item/clothing/head/rt
	neck = /obj/item/reagent_containers/food/drinks/canteen
	suit = /obj/item/clothing/suit/armor/rtcloak
	glasses = /obj/item/clothing/glasses/sunglasses
	uniform = /obj/item/clothing/under/rank/roguetrader
	belt = /obj/item/gun/projectile/bolter_pistol
	back = /obj/item/storage/backpack/satchel/warfare
	l_ear = /obj/item/device/radio/headset/red_team
	shoes = /obj/item/clothing/shoes/commandboots
	id_type = /obj/item/card/id/gold
	pda_type = /obj/item/device/pda/captain
	backpack_contents = list(/obj/item/storage/box/ids = 1)

/decl/hierarchy/outfit/job/captain/post_equip(var/mob/living/carbon/human/H)
	..()
	if(H.age>49)
		// Since we can have something other than the default uniform at this
		// point, check if we can actually attach the medal
		var/obj/item/clothing/uniform = H.w_uniform
		if(uniform)
			var/obj/item/clothing/accessory/medal/gold/Administratum/medal = new()
			if(uniform.can_attach_accessory(medal))
				uniform.attach_accessory(null, medal)
			else
				qdel(medal)

/decl/hierarchy/outfit/job/hop
	name = OUTFIT_JOB_NAME("Seneschal")
	uniform = /obj/item/clothing/under/rank/seneschal
	head = /obj/item/clothing/head/seneschal
	neck = /obj/item/reagent_containers/food/drinks/canteen
	l_ear = /obj/item/device/radio/headset/heads/hop
	back = /obj/item/storage/backpack/satchel/warfare
	belt = /obj/item/gun/projectile/talon
	shoes = /obj/item/clothing/shoes/commandboots
	id_type = /obj/item/card/id/silver
	pda_type = /obj/item/device/pda/heads/hop
	backpack_contents = list(/obj/item/storage/box/ids = 1, /obj/item/ammo_magazine/c45m = 2)