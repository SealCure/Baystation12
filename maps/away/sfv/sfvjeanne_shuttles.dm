
/obj/machinery/computer/shuttle_control/explore/fleet_patrol
	name = "shuttle control console"
	shuttle_tag = "SFV Panther"
	req_access = list(access_fleet)

/obj/effect/overmap/visitable/ship/landable/fleet_patrol
	name = "SFV Panther"
	shuttle = "SFV Panther"
	desc = "A small utility shuttle broadcasting Fleet ident codes, designed to be launched from patrol craft to board vessels. It bears the name \"SFV JdA-1 Panther\"."
	fore_dir = SOUTH
	vessel_size = SHIP_SIZE_SMALL
	moving_state = "ship_moving"
	max_speed = 1/(1 SECONDS)
	burn_delay = 0.5 SECONDS
	vessel_mass = 1000
	skill_needed = SKILL_BASIC

/datum/shuttle/autodock/overmap/fleet_patrol
	name = "SFV Panther"
	warmup_time = 5
	move_time = 30
	shuttle_area = /area/fleet_patrol/shuttle_panther
	dock_target = "fleet_shuttle"
	current_location = "nav_hangar_jeanne"
	landmark_transition = "nav_transit_jeanne"
	fuel_consumption = 2
	sound_takeoff = 'sound/effects/rocket.ogg'
	sound_landing = 'sound/effects/rocket_backwards.ogg'
	ceiling_type = /turf/simulated/floor/shuttle_ceiling
	skill_needed = SKILL_NONE
	flags = SHUTTLE_FLAGS_PROCESS
	defer_initialisation = TRUE

/obj/effect/shuttle_landmark/fleet_patrol/dock
	name = "SFV Panther Hangar"
	landmark_tag = "nav_hangar_jeanne"
	base_area = /area/fleet_patrol/hangar
	base_turf = /turf/simulated/floor/plating

/obj/effect/shuttle_landmark/nav_fleet/nav1
	name = "Fleet Patrol Vessel Deck 1 Starboard"
	landmark_tag = "nav_jeanne_1"

/obj/effect/shuttle_landmark/nav_fleet/nav2
	name = "Fleet Patrol Vessel Deck 2 Port"
	landmark_tag = "nav_jeanne_2"

/obj/effect/shuttle_landmark/nav_fleet/torch
	name = "SEV Torch Panther Dock"
	landmark_tag = "nav_fleet_3"

/obj/effect/shuttle_landmark/transit/fleet_patrol
	name = "In transit"
	landmark_tag = "nav_transit_jeanne"

//lift
/obj/machinery/computer/shuttle_control/lift/fleet_patrol
	name = "cargo lift controls"
	shuttle_tag = "Hangar Lift"
	ui_template = "shuttle_control_console_lift.tmpl"
	icon_state = "tiny"
	icon_keyboard = "tiny_keyboard"
	icon_screen = "lift"
	density = 0

/datum/shuttle/autodock/ferry/fleet_patrol
	name = "Hangar Lift"
	shuttle_area = /area/fleet_patrol/lift
	warmup_time = 3
	waypoint_station = "nav_fleet_lift_top"
	waypoint_offsite = "nav_fleet_lift_bottom"
	sound_takeoff = 'sound/effects/lift_heavy_start.ogg'
	sound_landing = 'sound/effects/lift_heavy_stop.ogg'
	ceiling_type = null
	knockdown = 0
	defer_initialisation = TRUE

/obj/effect/shuttle_landmark/lift/fleet_patrol/top
	name = "Top Deck"
	landmark_tag = "nav_fleet_lift_top"
	base_area = /area/fleet_patrol/storage
	base_turf = /turf/simulated/open

/obj/effect/shuttle_landmark/lift/fleet_patrol/bottom
	name = "Lower Deck"
	landmark_tag = "nav_fleet_lift_bottom"
	flags = SLANDMARK_FLAG_AUTOSET
	base_area = /area/fleet_patrol/engineering/smes
	base_turf = /turf/simulated/floor/plating