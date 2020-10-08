/area/fleet_patrol
	name = "\improper SFV Jeanne d'Arc"
	req_access = list(access_fleet)

/area/fleet_patrol/bridge
	name = "\improper SFV Jeanne d'Arc - Bridge"
	icon_state = "bridge"

/area/fleet_patrol/cryo_storage
	name = "\improper SFV Jeanne d'Arc - Cryogenic Storage"
	icon_state = "Sleep"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED

/area/fleet_patrol/medbay/storage
	name = "\improper SFV Jeanne d'Arc - Medical Storage"
	icon_state = "exam_room"

/area/fleet_patrol/medbay/surgery
	name = "\improper SFV Jeanne d'Arc - Operating Theatre"
	icon_state = "surgery"

/area/fleet_patrol/medbay
	name = "\improper SFV Jeanne d'Arc - Infirmary"
	icon_state = "blue"
	req_access = list(access_fleet_med)

/area/fleet_patrol/medbay/chemistry
	name = "\improper SFV Jeanne d'Arc - Chemical Laboratory"
	icon_state = "chem"

/area/fleet_patrol/d2stairs
	name = "\improper Hangar Deck - Stairway"
	icon_state = "green"

/area/fleet_patrol/maintenance
	name = "\improper SFV Jeanne d'Arc - General Maintenance"
	icon_state = "maintcentral"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED

/area/fleet_patrol/maintenance/hangar
	name = "\improper SFV Jeanne d'Arc - Hangar Maintenance"
	icon_state = "maintcentral"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED

/area/fleet_patrol/maintenance/command
	name = "\improper SFV Jeanne d'Arc - Main Deck Maintenance"
	icon_state = "maintcentral"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED

/area/fleet_patrol/fire_control
	name = "\improper SFV Jeanne d'Arc - Fire Control"
	icon_state = "disperser"

/area/fleet_patrol/engineering
	name = "\improper SFV Jeanne d'Arc - Engineering"
	icon_state = "engineering"
	area_flags = AREA_FLAG_ION_SHIELDED
	req_access = list(access_fleet_eng)

/area/fleet_patrol/engineering/smes
	name = "\improper SFV Jeanne d'Arc - Engineering SMES"
	icon_state = "engineering"
	sound_env = SMALL_ENCLOSED
	area_flags = AREA_FLAG_ION_SHIELDED
	req_access = list(access_fleet_eng)

/area/fleet_patrol/engineering/atmos
	name = "\improper SFV Jeanne d'Arc - Atmospherics"
	icon_state = "atmos"
	area_flags = AREA_FLAG_ION_SHIELDED
	req_access = list(access_fleet_eng)

/area/fleet_patrol/engineering/lower_storage
	name = "\improper SFV Jeanne d'Arc - Engineering Lower Storage"
	icon_state = "engineering_storage"
	area_flags = AREA_FLAG_ION_SHIELDED
	req_access = list(access_fleet_eng)

/area/fleet_patrol/engineering/comms
	name = "\improper SFV Jeanne d'Arc - Telecommunications Server"
	icon_state = "engineeringt"
	sound_env = SMALL_ENCLOSED
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED
	req_access = list(access_fleet_eng)

/area/fleet_patrol/external
	name = "\improper SFV Jeanne d'Arc - External Infrastructure"
	icon_state = "red"
	area_flags = AREA_FLAG_EXTERNAL

/area/fleet_patrol/engineering/thrusters
	name = "\improper SFV Jeanne d'Arc - Thrusters"
	icon_state = "red"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED

/area/fleet_patrol/engineering/fuel_storage
	name = "\improper SFV Jeanne d'Arc - Fuel Storage"
	icon_state = "red"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED

/area/fleet_patrol/hydroponics
	name = "\improper SFV Jeanne d'Arc - Hydroponics"
	icon_state = "green"

/area/fleet_patrol/shuttle_panther
	name = "\improper SFV Panther"
	icon_state = "shuttlered"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED

/area/fleet_patrol/main_hallway
	name = "\improper SFV Jeanne d'Arc - Central Hallway"
	icon_state = "hallC1"

/area/fleet_patrol/hangar_hallway
	name = "\improper SFV Jeanne d'Arc - Hangar Deck Hallway"
	icon_state = "hallC1"

/area/fleet_patrol/armory
	name = "\improper SFV Jeanne d'Arc - Armory"
	icon_state = "Warden"
	req_access = list(access_fleet_co)

/area/fleet_patrol/brig
	name = "\improper SFV Jeanne d'Arc - Brig"
	icon_state = "security"
	req_access = list(access_fleet_sec)

/area/fleet_patrol/storage
	name = "\improper SFV Jeanne d'Arc - Main Storage"
	icon_state = "engineering_storage"

/area/fleet_patrol/galley
	name = "\improper SFV Jeanne d'Arc - Galley"
	icon_state = "kitchen"

/area/fleet_patrol/mess
	name = "\improper SFV Jeanne d'Arc - Mess Hall"
	icon_state = "cafeteria"

/area/fleet_patrol/berths
	name = "\improper SFV Jeanne d'Arc - Crew Bunks"
	icon_state = "Sleep"

/area/fleet_patrol/hangar
	name = "\improper SFV Jeanne d'Arc - Hangar"
	icon_state = "hangar"

/area/fleet_patrol/hangar/storage
	name = "\improper SFV Jeanne d'Arc - Hangar Deck Storage"
	icon_state = "green"

/area/fleet_patrol/hangar/eva
	name = "\improper SFV Jeanne d'Arc - Main EVA"
	icon_state = "green"

/area/fleet_patrol/captain
	name = "\improper SFV Jeanne d'Arc - CO's Quarters"
	icon_state = "heads_cap"
	req_access = list(access_fleet_co)

/area/fleet_patrol/lift
	name = "\improper SFV Jeanne d'Arc - Hangar Lift"
	icon_state = "blue"
	requires_power = 0