#include "sfvjeanne_areas.dm"
#include "sfvjeanne_jobs.dm"
#include "sfvjeanne_shuttles.dm"
#include "sfvjeanne_radio.dm"

/obj/effect/submap_landmark/joinable_submap/fleet_patrol
	name = "SFV Jeanne d'Arc"
	archetype = /decl/submap_archetype/derelict/fleet_patrol

/decl/submap_archetype/derelict/fleet_patrol
	descriptor = "Fleet Patrol Vessel"
	map = "SFV Jeanne d'Arc"
	crew_jobs = list(
		/datum/job/submap/fleet/co,
		/datum/job/submap/fleet/engineer,
		/datum/job/submap/fleet/doctor,
		/datum/job/submap/fleet/security,
		/datum/job/submap/fleet/crew
	)

/obj/effect/overmap/visitable/ship/fleet_patrol
	name = "SFV Jeanne d'Arc"
	desc = "Sensor array detects a medium-sized PM-24 'Flare' patrol craft, broadcasting ident codes for the 3rd Fleet."
	vessel_mass = 10000
	max_speed = 1/(2 SECONDS)
	burn_delay = 1 SECOND
	fore_dir = WEST
	initial_restricted_waypoints = list(
			"SFV Panther" = list("nav_hangar_jeanne")
	)
	initial_generic_waypoints = list(
		"nav_jeanne_1",
		"nav_jeanne_2",
	)

/datum/map_template/ruin/away_site/fleet_patrol
	name = "Fleet Patrol Vessel"
	id = "awaysite_fleet_patrol"
	description = "Fleet patrol vessel"
	suffixes = list("sfv/sfvjeanne-1.dmm", "sfv/sfvjeanne-2.dmm")
	cost = 0.1
	area_usage_test_exempted_root_areas = list(/area/fleet_patrol)
	shuttles_to_initialise = list(
		/datum/shuttle/autodock/overmap/fleet_patrol,
		/datum/shuttle/autodock/ferry/fleet_patrol,
	)
	apc_
	apc_test_exempt_areas = list(
		/area/fleet_patrol/engineering/fuel_storage = NO_SCRUBBER|NO_VENT,
		/area/fleet_patrol/engineering/smes = NO_SCRUBBER|NO_VENT,
		/area/fleet_patrol/external = NO_SCRUBBER|NO_VENT,
		/area/fleet_patrol/shuttle_panther = NO_SCRUBBER|NO_VENT,
		/area/fleet_patrol/maintenance/hangar = NO_SCRUBBER|NO_VENT,
		/area/fleet_patrol/maintenance/command = NO_SCRUBBER|NO_VENT,
		/area/fleet_patrol/lift = NO_SCRUBBER|NO_VENT|NO_APC,
	)

/obj/machinery/alarm/fleet_patrol
	req_access = list(access_fleet)

/obj/machinery/power/apc/fleet_patrol
	req_access = list(access_fleet)
	cell_type = /obj/item/weapon/cell/hyper

/obj/machinery/power/smes/buildable/preset/fleet_patrol
	uncreated_component_parts = list(
		/obj/item/weapon/stock_parts/smes_coil/super_io = 2,
		/obj/item/weapon/stock_parts/smes_coil/super_capacity = 2,
	)
	_input_maxed = TRUE
	_output_maxed = TRUE
	_input_on = TRUE
	_output_on = TRUE
	_fully_charged = TRUE

/obj/machinery/power/smes/buildable/preset/fleet_patrol/shuttle
	uncreated_component_parts = list(
		/obj/item/weapon/stock_parts/smes_coil/super_io = 1,
		/obj/item/weapon/stock_parts/smes_coil/super_capacity = 1,
	)
	_input_maxed = TRUE
	_output_maxed = TRUE
	_input_on = TRUE
	_output_on = TRUE
	_fully_charged = TRUE

/obj/item/weapon/gun/projectile/pistol/military/fleet_patrol
	magazine_type = /obj/item/ammo_magazine/pistol/double/rubber

/obj/structure/closet/secure_closet/security/fleet_patrol
	name = "master-at-arms locker"
	req_access = list(access_fleet_sec)
	closet_appearance = /decl/closet_appearance/secure_closet/security/fleet_patrol

/decl/closet_appearance/secure_closet/security/fleet_patrol
	extra_decals = list(
		"stripe_vertical_mid_full" = COLOR_NT_RED,
		"security" = COLOR_NT_RED
	)

/obj/structure/closet/secure_closet/co/fleet_patrol
	name = "commanding officer's locker"
	req_access = list(access_fleet_co)
	closet_appearance = /decl/closet_appearance/secure_closet/co/fleet_patrol

/decl/closet_appearance/secure_closet/co/fleet_patrol
	extra_decals = list(
		"stripe_vertical_left_full" = COLOR_CLOSET_GOLD,
		"stripe_vertical_right_full" = COLOR_CLOSET_GOLD,
		"command" = COLOR_CLOSET_GOLD
	)

/obj/structure/closet/secure_closet/medical/fleet_patrol
	name = "medical officer's locker"
	req_access = list(access_fleet_med)
	closet_appearance = /decl/closet_appearance/secure_closet/medical/fleet_patrol

/decl/closet_appearance/secure_closet/medical/fleet_patrol
	extra_decals = list(
		"stripe_vertical_left_full" = COLOR_BABY_BLUE,
		"stripe_vertical_right_full" = COLOR_BABY_BLUE,
		"medical" = COLOR_BABY_BLUE
	)

/obj/structure/closet/secure_closet/engineering/fleet_patrol
	name = "engineering locker"
	req_access = list(access_fleet_eng)
	closet_appearance = /decl/closet_appearance/secure_closet/engineering/fleet_patrol

/decl/closet_appearance/secure_closet/engineering/fleet_patrol
	extra_decals = list(
		"stripe_vertical_left_full" = COLOR_WARM_YELLOW,
		"stripe_vertical_right_full" = COLOR_WARM_YELLOW,
		"exped" = COLOR_WARM_YELLOW
	)

/obj/structure/closet/secure_closet/crew/fleet_patrol
	name = "crew equipment locker"
	req_access = list(access_fleet)
	closet_appearance = /decl/closet_appearance/secure_closet/torch/sol

/obj/structure/closet/secure_closet/crew/fleet_patrol/WillContain()
	return list(
		/obj/item/device/radio,
		/obj/item/weapon/crowbar,
		/obj/item/device/flashlight,
		/obj/item/weapon/storage/box
	)

/obj/structure/closet/secure_closet/security/fleet_patrol/WillContain()
	return list(
		/obj/item/clothing/suit/armor/pcarrier/medium/security,
		/obj/item/clothing/head/helmet/solgov/security,
		/obj/item/weapon/storage/belt/holster/security,
		/obj/item/device/flash,
		/obj/item/weapon/reagent_containers/spray/pepper,
		/obj/item/weapon/grenade/chem_grenade/teargas,
		/obj/item/weapon/melee/baton/loaded,
		/obj/item/clothing/glasses/sunglasses/sechud/goggles,
		/obj/item/taperoll/police,
		/obj/item/device/hailer,
		/obj/item/clothing/accessory/storage/black_vest,
		/obj/item/weapon/gun/projectile/pistol/military/fleet_patrol,
		/obj/item/ammo_magazine/pistol/double/rubber,
		/obj/item/ammo_magazine/pistol/double/rubber,
		/obj/item/device/megaphone,
		/obj/item/clothing/gloves/thick,
		/obj/item/clothing/gloves/thick/duty/solgov/sec,
		/obj/item/device/holowarrant,
		/obj/item/device/flashlight/maglight,
		/obj/item/weapon/storage/belt/security,
		/obj/item/weapon/material/knife/folding/swiss/sec,
		new /datum/atom_creator/weighted(list(/obj/item/weapon/storage/backpack/security, /obj/item/weapon/storage/backpack/satchel/sec)),
		new /datum/atom_creator/weighted(list(/obj/item/weapon/storage/backpack/dufflebag/sec, /obj/item/weapon/storage/backpack/messenger/sec))
	)

/obj/structure/closet/secure_closet/co/fleet_patrol/WillContain()
	return list(
		/obj/item/clothing/glasses/sunglasses,
		/obj/item/weapon/storage/belt/general,
		/obj/item/clothing/suit/armor/pcarrier/medium/command,
		/obj/item/clothing/head/helmet/solgov/command,
		/obj/item/weapon/storage/belt/holster/security,
		/obj/item/weapon/melee/telebaton,
		/obj/item/device/flash,
		/obj/item/weapon/gun/projectile/pistol/military,
		/obj/item/ammo_magazine/pistol/double,
		/obj/item/ammo_magazine/pistol/double/rubber,
		/obj/item/device/megaphone,
		/obj/item/weapon/storage/box/headset,
		/obj/item/device/holowarrant,
		/obj/item/weapon/material/knife/folding/swiss/officer,
		new /datum/atom_creator/weighted(list(/obj/item/weapon/storage/backpack/captain, /obj/item/weapon/storage/backpack/satchel/cap)),
		new /datum/atom_creator/weighted(list(/obj/item/weapon/storage/backpack/dufflebag/captain, /obj/item/weapon/storage/backpack/messenger/com))
	)

/obj/structure/closet/secure_closet/medical/fleet_patrol/WillContain()
	return list(
		/obj/item/clothing/under/sterile,
		/obj/item/clothing/suit/storage/toggle/labcoat,
		/obj/item/clothing/suit/surgicalapron,
		/obj/item/clothing/shoes/white,
		/obj/item/taperoll/medical,
		/obj/item/weapon/storage/belt/medical,
		/obj/item/clothing/mask/surgical,
		/obj/item/device/scanner/health,
		/obj/item/clothing/accessory/stethoscope,
		/obj/item/device/flashlight/pen,
		/obj/item/clothing/glasses/hud/health,
		/obj/item/device/flash,
		/obj/item/device/megaphone,
		/obj/item/weapon/storage/firstaid/adv,
		/obj/item/weapon/material/knife/folding/swiss/medic,
		new /datum/atom_creator/weighted(list(/obj/item/weapon/storage/backpack/medic, /obj/item/weapon/storage/backpack/satchel/med)),
		new /datum/atom_creator/weighted(list(/obj/item/weapon/storage/backpack/dufflebag/med, /obj/item/weapon/storage/backpack/messenger/med)),
		RANDOM_SCRUBS = 2
	)

/obj/structure/closet/secure_closet/engineering/fleet_patrol/WillContain()
	return list(
		/obj/item/clothing/under/hazard,
		/obj/item/clothing/accessory/storage/brown_vest,
		/obj/item/weapon/storage/belt/utility/full,
		/obj/item/device/multitool,
		/obj/item/clothing/suit/storage/hazardvest,
		/obj/item/clothing/mask/gas,
		/obj/item/clothing/glasses/meson,
		/obj/item/taperoll/engineering,
		/obj/item/device/flashlight,
		/obj/item/taperoll/atmos,
		/obj/item/clothing/gloves/insulated,
		/obj/item/clothing/gloves/thick/duty/solgov/eng,
		/obj/item/weapon/material/knife/folding/swiss/engineer,
		/obj/item/clothing/head/hardhat/damage_control,
		new /datum/atom_creator/weighted(list(/obj/item/weapon/storage/backpack/industrial, /obj/item/weapon/storage/backpack/satchel/eng)),
		new /datum/atom_creator/weighted(list(/obj/item/weapon/storage/backpack/dufflebag/eng, /obj/item/weapon/storage/backpack/messenger/engi))
	)

/obj/structure/closet/secure_closet/crew/WillContain()
	return list(
		/obj/item/device/radio,
		/obj/item/weapon/crowbar,
		/obj/item/device/flashlight,
		/obj/item/weapon/storage/box
	)

/var/const/access_fleet = "ACCESS_FLEET_CREW" //555
/datum/access/fleet
	id = access_fleet
	desc = "Patrol Vessel Crewman"
	region = ACCESS_REGION_NONE

/var/const/access_fleet_eng = "ACCESS_FLEET_ENGINEER" //556
/datum/access/fleet_eng
	id = access_fleet_eng
	desc = "Patrol Vessel Engineer"
	region = ACCESS_REGION_NONE

/var/const/access_fleet_med = "ACCESS_FLEET_DOCTOR" //557
/datum/access/fleet_med
	id = access_fleet_med
	desc = "Patrol Vessel Doctor"
	region = ACCESS_REGION_NONE

/var/const/access_fleet_sec = "ACCESS_FLEET_SECURITY" //558
/datum/access/fleet_sec
	id = access_fleet_sec
	desc = "Patrol Vessel Security"
	region = ACCESS_REGION_NONE

/var/const/access_fleet_co = "ACCESS_FLEET_CO" //559
/datum/access/fleet_co
	id = access_fleet_co
	desc = "Patrol Vessel Lieutenant"
	region = ACCESS_REGION_NONE

/obj/item/weapon/card/id/fleet_patrol
	access = list(access_fleet)

/obj/item/weapon/card/id/fleet_patrol/eng
	access = list(access_fleet, access_fleet_eng)

/obj/item/weapon/card/id/fleet_patrol/med
	access = list(access_fleet, access_fleet_med, access_fleet_sec)

/obj/item/weapon/card/id/fleet_patrol/sec
	access = list(access_fleet, access_fleet_sec)

/obj/item/weapon/card/id/fleet_patrol/co
	access = list(access_fleet, access_fleet_eng, access_fleet_med, access_fleet_sec, access_fleet_co)

/obj/machinery/suit_storage_unit/fleet_patrol
	req_access = list(access_fleet)

/obj/machinery/suit_storage_unit/command/fleet_patrol
	req_access = list(access_fleet_co)

/obj/machinery/suit_storage_unit/engineering/alt/fleet_patrol
	req_access = list(access_fleet_eng)

/obj/machinery/suit_storage_unit/medical/alt/fleet_patrol
	req_access = list(access_fleet_med)

/obj/machinery/suit_storage_unit/security/alt/fleet_patrol
	req_access = list(access_fleet_sec)

/obj/machinery/turretid/fleet_patrol
	name = "turret control panel"
	enabled = 1
	lethal = 1
	icon_state = "control_kill"
	locked = 1
	check_arrest = 0
	check_records = 0
	check_weapons = 0
	check_access = 1
	check_anomalies = 1
	req_access = list(access_fleet)