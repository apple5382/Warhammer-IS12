/datum/job/envoy
	title = "Astartes Envoy"
	total_positions = 1
	supervisors = "The Rogue Trader and your Chapter Master"
	social_class = SOCIAL_CLASS_MAX
	outfit_type = /decl/hierarchy/outfit/job/envoy //will need to be replaced eventually - wel
	selection_color = "#270092"
	department_flag = SEC|COM
	access = list() 			//See get_access()
	minimal_access = list() 	//See get_access()
	auto_rifle_skill = 10 //astartes are masters of all weaponry
	semi_rifle_skill = 10
	sniper_skill = 10
	shotgun_skill = 10
	lmg_skill = 10
	smg_skill = 10



/decl/hierarchy/outfit/job/envoy //suits don't work yet, not showing properly
	name = OUTFIT_JOB_NAME("Astartes Envoy")
	head = /obj/item/clothing/head/helmet/ravenhelm
	glasses = /obj/item/clothing/glasses/night
	uniform = /obj/item/clothing/under/color/brown
	shoes = /obj/item/clothing/shoes/jackboots
	l_ear = /obj/item/device/radio/headset/heads/hos
	l_pocket = /obj/item/storage/box/ifak // /obj/item/stack/medical/bruise_pack
	suit = /obj/item/clothing/suit/armor/ravenguard
	gloves = /obj/item/clothing/gloves/thick/swat/combat/warfare
	back = /obj/item/storage/backpack/satchel/warfare
	neck = /obj/item/reagent_containers/food/drinks/canteen
	id_type = /obj/item/card/id/dog_tag/guardsman
	suit_store = /obj/item/gun/projectile/ravenbolter
	backpack_contents = list(/obj/item/ammo_magazine/bolt_rifle_magazine = 2,)
	flags = OUTFIT_NO_BACKPACK|OUTFIT_NO_SURVIVAL_GEAR

	var/list/minimal_access = list()      //For some reason these need to be relisted here instead of the usual /datum/job, not sure why it isn't catching the previous definition but w/e
	var/list/access = list()

	access = list(access_security, access_sec_doors, access_brig, access_forensics_lockers,
			            access_medical, access_engine, access_change_ids, access_ai_upload, access_eva, access_heads,
			            access_all_personal_lockers, access_maint_tunnels, access_bar, access_janitor, access_construction, access_morgue,
			            access_crematorium, access_kitchen, access_cargo, access_cargo_bot, access_mailsorting, access_qm, access_hydroponics, access_lawyer,
			            access_chapel_office, access_library, access_research, access_mining, access_heads_vault, access_mining_station,
			            access_hop, access_RC_announce, access_keycard_auth, access_gateway)
	minimal_access = list(access_security, access_sec_doors, access_brig, access_forensics_lockers,
			            access_medical, access_engine, access_change_ids, access_ai_upload, access_eva, access_heads,
			            access_all_personal_lockers, access_maint_tunnels, access_bar, access_janitor, access_construction, access_morgue,
			            access_crematorium, access_kitchen, access_cargo, access_cargo_bot, access_mailsorting, access_qm, access_hydroponics, access_lawyer,
			            access_chapel_office, access_library, access_research, access_mining, access_heads_vault, access_mining_station,
			            access_hop, access_RC_announce, access_keycard_auth, access_gateway)