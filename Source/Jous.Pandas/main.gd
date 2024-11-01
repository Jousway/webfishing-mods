extends Node

const ID = "Jous.Pandas"

onready var Lure = get_node("/root/SulayreLure")
func _ready():
	Lure.assign_face_animation(ID, ID + ".species_panda", "mod://animations/panda_face.tres")
	
	Lure.assign_pattern_texture(ID, "pattern_calico", ID + ".species_panda", "mod://textures/body_pattern_4_panda.png")
	Lure.assign_pattern_texture(ID, "pattern_collie", ID + ".species_panda", "mod://textures/body_pattern_1_panda.png")
	Lure.assign_pattern_texture(ID, "pattern_spotted", ID + ".species_panda", "mod://textures/body_pattern_3_panda.png")
	Lure.assign_pattern_texture(ID, "pattern_tux", ID + ".species_panda", "mod://textures/body_pattern_2_panda.png")

	Lure.assign_species_voice(ID, ID + ".species_panda", "mod://sounds/bark.ogg", "mod://sounds/wine.ogg", "mod://sounds/growl.ogg")
	
	Lure.add_content(ID, "species_panda", "mod://species/species_panda.tres")
