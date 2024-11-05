extends Node

const ID = "Jous.FiberPattern"

onready var Lure = get_node("/root/SulayreLure")

var thread = Thread.new()

func _ready():

	# lets use a yield of 1 so we wait for everything to be loaded :cry:
	yield(get_tree().create_timer(1), "timeout")

	# Add our pattern as an option.
	Lure.add_content(ID, "Fiber","mod://pattern_fiber.tres")
	Lure.add_content(ID, "Fiber_Sack","mod://pattern_fiber_sack.tres")

	# Add patterns to species
	for Specie in Lure.modded_species:
		Lure.assign_pattern_texture(ID, ID + ".Fiber", Specie, "mod://body_pattern_fiber.png")
		Lure.assign_pattern_texture(ID, ID + ".Fiber_Sack", Specie, "mod://body_pattern_fiber_sack.png")
		
	# Refresh patterns to fix other species.
	Lure.Loader._refresh_patterns()
