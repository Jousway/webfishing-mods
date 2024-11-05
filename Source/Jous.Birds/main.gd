extends Node

const ID = "Jous.Birds"

onready var Lure = get_node("/root/SulayreLure")
func _ready():
	Lure.assign_face_animation(ID, ID + ".species_bird", "mod://animations/bird_face.tres")
	
	Lure.assign_species_voice(ID, ID + ".species_bird", "mod://sounds/bark.ogg", "mod://sounds/wine.ogg", "mod://sounds/growl.ogg")

	Lure.assign_pattern_texture(ID, "pattern_calico", ID + ".species_bird", "mod://textures/body_pattern_4_bird.png")
	Lure.assign_pattern_texture(ID, "pattern_collie", ID + ".species_bird", "mod://textures/body_pattern_1_bird.png")
	Lure.assign_pattern_texture(ID, "pattern_spotted", ID + ".species_bird", "mod://textures/body_pattern_3_bird.png")
	Lure.assign_pattern_texture(ID, "pattern_tux", ID + ".species_bird", "mod://textures/body_pattern_2_bird.png")

	Lure.assign_cosmetic_mesh(ID, "accessory_glasses_round", ID + ".species_bird", "mod://models/eyewear_round.tres")
	Lure.assign_cosmetic_mesh(ID, "accessory_glasses", ID + ".species_bird", "mod://models/eyewear_round.tres")

	Lure.add_content(ID, "species_bird", "mod://species/species_bird.tres")

	#beaks
	Lure.add_content(ID,"accessory_beak_chiseling","mod://Accessories/accessory_beak_chiseling.tres")
	Lure.add_content(ID,"accessory_beak_dip","mod://Accessories/accessory_beak_dip.tres")
	Lure.add_content(ID,"accessory_beak_filter","mod://Accessories/accessory_beak_filter.tres")
	Lure.add_content(ID,"accessory_beak_fruit","mod://Accessories/accessory_beak_fruit.tres")
	Lure.add_content(ID,"accessory_beak_generalist","mod://Accessories/accessory_beak_generalist.tres")
	Lure.add_content(ID,"accessory_beak_grain","mod://Accessories/accessory_beak_grain.tres")
	Lure.add_content(ID,"accessory_beak_insect","mod://Accessories/accessory_beak_insect.tres")
	Lure.add_content(ID,"accessory_beak_nectar","mod://Accessories/accessory_beak_nectar.tres")
	Lure.add_content(ID,"accessory_beak_pursuit","mod://Accessories/accessory_beak_pursuit.tres")
	Lure.add_content(ID,"accessory_beak_raptorial","mod://Accessories/accessory_beak_raptorial.tres")
	Lure.add_content(ID,"accessory_beak_scynthing","mod://Accessories/accessory_beak_scything.tres")
	Lure.add_content(ID,"accessory_beak_surface","mod://Accessories/accessory_beak_surface.tres")

	#tails
	Lure.add_content(ID,"tail_bird_common","mod://Tails/tail_bird_common.tres")
	Lure.add_content(ID,"tail_bird_long","mod://Tails/tail_bird_long.tres")
	Lure.add_content(ID,"tail_bird_wide","mod://Tails/tail_bird_wide.tres")
