/datum/job/submap/fleet/co
	title = "Patrol Vessel Commanding Officer"
	total_positions = 1
	outfit_type = /decl/hierarchy/outfit/job/fleet_patrol/co
	allowed_branches = list(
		/datum/mil_branch/fleet = /decl/hierarchy/outfit/job/fleet_patrol/co
	)
	allowed_ranks = list(
		/datum/mil_rank/fleet/o4,
		/datum/mil_rank/fleet/o3
	)
	supervisors = "yourself"
	info = "You are the Commanding Officer aboard the SFV Jeanne d'Arc, a PM-24 'Flare' Patrol vessel attatched \
	to the 3rd Fleet. Your ship and crew have been tasked with patrolling the outskirts of human space, \
	repelling pirates and any other undesirables that lurk on the edge of SCG territory. Patrol the \
	sectors you have been assigned, but ensure your crew make it home alive."
	whitelisted_species = list(SPECIES_HUMAN,SPECIES_SPACER,SPECIES_GRAVWORLDER,SPECIES_VATGROWN,SPECIES_BOOSTER)
	required_language = LANGUAGE_HUMAN_EURO
	min_skill = list(
		SKILL_EVA     = SKILL_ADEPT,
		SKILL_WEAPONS = SKILL_ADEPT,
		SKILL_COMBAT = SKILL_ADEPT,
		SKILL_PILOT   = SKILL_ADEPT,
	)

	max_skill = list(
		SKILL_PILOT   = SKILL_MAX,
	)
	skill_points = 20

/datum/job/submap/fleet/engineer
	title = "Patrol Vessel Engineer"
	supervisors = "your Commanding Officer"
	total_positions = 1
	outfit_type = /decl/hierarchy/outfit/job/fleet_patrol/engineer
	allowed_branches = list(
		/datum/mil_branch/fleet = /decl/hierarchy/outfit/job/fleet_patrol/engineer
	)
	allowed_ranks = list(
		/datum/mil_rank/fleet/e5,
		/datum/mil_rank/fleet/e4
	)
	info = "You are an Engineer aboard the SFV Jeanne d'Arc, a PM-24 'Flare' Patrol vessel attatched \
	to the 3rd Fleet. Your ship and crew have been tasked with patrolling the outskirts of human space, \
	repelling pirates and any other undesirables that lurk on the edge of SCG territory. Ensure the \
	ship's systems are operating at full capacity, and follow the orders of your Lieutenant."
	required_language = LANGUAGE_HUMAN_EURO
	var/requires_supervisor = /datum/job/submap/fleet/co
	whitelisted_species = list(SPECIES_HUMAN,SPECIES_SPACER,SPECIES_GRAVWORLDER,SPECIES_VATGROWN,SPECIES_BOOSTER)
	min_skill = list(
		SKILL_COMPUTER     = SKILL_BASIC,
		SKILL_EVA          = SKILL_ADEPT,
		SKILL_CONSTRUCTION = SKILL_ADEPT,
		SKILL_ELECTRICAL   = SKILL_ADEPT,
		SKILL_ATMOS        = SKILL_BASIC,
		SKILL_ENGINES      = SKILL_ADEPT,
	)

	max_skill = list(
		SKILL_CONSTRUCTION = SKILL_MAX,
		SKILL_ELECTRICAL   = SKILL_MAX,
		SKILL_ATMOS        = SKILL_MAX,
		SKILL_ENGINES      = SKILL_MAX,
	)
	skill_points = 20//skills copied from torch eng

/datum/job/submap/fleet/doctor
	title = "Patrol Vessel Doctor"
	supervisors = "your Commanding Officer"
	total_positions = 1
	outfit_type = /decl/hierarchy/outfit/job/fleet_patrol/doctor
	allowed_branches = list(
		/datum/mil_branch/fleet = /decl/hierarchy/outfit/job/fleet_patrol/doctor
	)
	allowed_ranks = list(
		/datum/mil_rank/fleet/o2,
		/datum/mil_rank/fleet/o1
	)
	info = "You are a member of the Medical staff aboard the SFV Jeanne d'Arc, a PM-24 'Flare' Patrol vessel attatched \
	to the 3rd Fleet. Your ship and crew have been tasked with patrolling the outskirts of human space, \
	repelling pirates and any other undesirables that lurk on the edge of SCG territory. Ensure the \
	ship's crew are in peak physical and mental health, and follow the orders of your Lieutenant."
	required_language = LANGUAGE_HUMAN_EURO
	whitelisted_species = list(SPECIES_HUMAN,SPECIES_SPACER,SPECIES_GRAVWORLDER,SPECIES_VATGROWN,SPECIES_BOOSTER)
	var/requires_supervisor = /datum/job/submap/fleet/co
	min_skill = list(
		SKILL_EVA = SKILL_BASIC,
		SKILL_PILOT = SKILL_ADEPT,
		SKILL_HAULING = SKILL_ADEPT,
		SKILL_COMBAT = SKILL_BASIC,
		SKILL_WEAPONS = SKILL_BASIC,
		SKILL_MEDICAL = SKILL_EXPERT,
		SKILL_ANATOMY = SKILL_EXPERT,
		SKILL_CHEMISTRY = SKILL_BASIC,
		SKILL_DEVICES = SKILL_BASIC
	)

	max_skill = list(
		SKILL_MEDICAL = SKILL_MAX,
		SKILL_ANATOMY = SKILL_MAX,
	)

/datum/job/submap/fleet/security
	title = "Patrol Vessel Security"
	supervisors = "your Commanding Officer"
	total_positions = 2
	outfit_type = /decl/hierarchy/outfit/job/fleet_patrol/security
	allowed_branches = list(
		/datum/mil_branch/fleet = /decl/hierarchy/outfit/job/fleet_patrol/security
	)
	allowed_ranks = list(
		/datum/mil_rank/fleet/e4,
		/datum/mil_rank/fleet/e3
	)
	info = "You are a Master-at-Arms aboard the SFV Jeanne d'Arc, a PM-24 'Flare' Patrol vessel attatched \
	to the 3rd Fleet. Your ship and crew have been tasked with patrolling the outskirts of human space, \
	repelling pirates and any other undesirables that lurk on the edge of SCG territory. Ensure no \
	harm comes to your ship and its crew, repel any hostiles and follow the orders of your Lieutenant."
	required_language = LANGUAGE_HUMAN_EURO
	whitelisted_species = list(SPECIES_HUMAN,SPECIES_SPACER,SPECIES_GRAVWORLDER,SPECIES_VATGROWN,SPECIES_BOOSTER)
	var/requires_supervisor =/datum/job/submap/fleet/engineer
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_BASIC,
	                    SKILL_EVA         = SKILL_BASIC,
	                    SKILL_COMBAT      = SKILL_BASIC,
	                    SKILL_WEAPONS     = SKILL_ADEPT,
	                    SKILL_FORENSICS   = SKILL_BASIC)

	max_skill = list(   SKILL_COMBAT      = SKILL_MAX,
	                    SKILL_WEAPONS     = SKILL_MAX,
	                    SKILL_FORENSICS   = SKILL_MAX)

/datum/job/submap/fleet/crew
	title = "Patrol Vessel Crewman"
	supervisors = "your Commanding Officer"
	total_positions = 2
	outfit_type = /decl/hierarchy/outfit/job/fleet_patrol/crew
	allowed_branches = list(
		/datum/mil_branch/fleet = /decl/hierarchy/outfit/job/fleet_patrol/crew
	)
	allowed_ranks = list(
		/datum/mil_rank/fleet/e3,
		/datum/mil_rank/fleet/e2
	)
	info = "You are a Crewman aboard the SFV Jeanne d'Arc, a PM-24 'Flare' Patrol vessel attatched \
	to the 3rd Fleet. Your ship and crew have been tasked with patrolling the outskirts of human space, \
	repelling pirates and any other undesirables that lurk on the edge of SCG territory. Act as \
	general assistance for the other personnel aboard and follow the orders of your Lieutenant."
	required_language = LANGUAGE_HUMAN_EURO
	whitelisted_species = list(SPECIES_HUMAN,SPECIES_SPACER,SPECIES_GRAVWORLDER,SPECIES_VATGROWN,SPECIES_BOOSTER)
	var/requires_supervisor = /datum/job/submap/fleet/engineer
	min_skill = list(SKILL_EVA = SKILL_ADEPT,
					SKILL_PILOT = SKILL_ADEPT,
					SKILL_HAULING = SKILL_ADEPT,
					SKILL_COMBAT = SKILL_BASIC,
					SKILL_WEAPONS = SKILL_BASIC,
					SKILL_ELECTRICAL = SKILL_BASIC,
					SKILL_CONSTRUCTION = SKILL_BASIC)

#define FLEET_OUTFIT_JOB_NAME(job_name) ("Fleet Patrol Vessel - Job - " + job_name)
/decl/hierarchy/outfit/job/fleet_patrol
	hierarchy_type = /decl/hierarchy/outfit/job/fleet_patrol
	pda_type = /obj/item/modular_computer/pda
	pda_slot = slot_l_store
	l_ear = /obj/item/device/radio/headset/map_preset/fleet_patrol
	shoes = /obj/item/clothing/shoes/jackboots
	head = /obj/item/clothing/head/beret/solgov/fleet/branch/third
	r_pocket = /obj/item/clothing/accessory/solgov/fleet_patch/third

/decl/hierarchy/outfit/job/fleet_patrol/co
	name = FLEET_OUTFIT_JOB_NAME("Patrol Vessel CO")
	id_types = list(/obj/item/weapon/card/id/fleet_patrol/co)
	uniform = /obj/item/clothing/under/solgov/utility/fleet/command
	pda_type = /obj/item/modular_computer/pda/heads

/decl/hierarchy/outfit/job/fleet_patrol/engineer
	name = FLEET_OUTFIT_JOB_NAME("Patrol Vessel Engineer")
	id_types = list(/obj/item/weapon/card/id/fleet_patrol/eng)
	uniform = /obj/item/clothing/under/solgov/utility/fleet/engineering
	pda_type = /obj/item/modular_computer/pda/engineering

/decl/hierarchy/outfit/job/fleet_patrol/engineer/New()
	..()
	backpack_overrides[/decl/backpack_outfit/backpack] = /obj/item/weapon/storage/backpack/industrial
	backpack_overrides[/decl/backpack_outfit/satchel] = /obj/item/weapon/storage/backpack/satchel/eng
	backpack_overrides[/decl/backpack_outfit/messenger_bag] = /obj/item/weapon/storage/backpack/messenger/engi

/decl/hierarchy/outfit/job/fleet_patrol/doctor
	name = FLEET_OUTFIT_JOB_NAME("Patrol Vessel Medical Officer")
	id_types = list(/obj/item/weapon/card/id/fleet_patrol/med)
	uniform = /obj/item/clothing/under/solgov/utility/fleet/medical
	pda_type = /obj/item/modular_computer/pda/medical

/decl/hierarchy/outfit/job/fleet_patrol/security
	name = FLEET_OUTFIT_JOB_NAME("Patrol Vessel Security")
	id_types = list(/obj/item/weapon/card/id/fleet_patrol/sec)
	uniform = /obj/item/clothing/under/solgov/utility/fleet/combat/security
	pda_type = /obj/item/modular_computer/pda/security

/decl/hierarchy/outfit/job/fleet_patrol/crew
	name = FLEET_OUTFIT_JOB_NAME("Patrol Vessel Crewman")
	id_types = list(/obj/item/weapon/card/id/fleet_patrol)
	uniform = /obj/item/clothing/under/solgov/utility/fleet
	pda_type = /obj/item/modular_computer/pda

/obj/effect/submap_landmark/spawnpoint/fleet_co
	name = "Patrol Vessel Commanding Officer"

/obj/effect/submap_landmark/spawnpoint/fleet_doctor
	name = "Patrol Vessel Medical Officer"

/obj/effect/submap_landmark/spawnpoint/fleet_engineer
	name = "Patrol Vessel Engineer"

/obj/effect/submap_landmark/spawnpoint/fleet_sec
	name = "Patrol Vessel Security"

/obj/effect/submap_landmark/spawnpoint/fleet_crew
	name = "Patrol Vessel Crewman"

#undef FLEET_OUTFIT_JOB_NAME