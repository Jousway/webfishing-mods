extends Node

const ID = "Jous.Goats"

onready var Lure = get_node("/root/SulayreLure")
func _ready():
	Lure.assign_face_animation(ID, ID + ".species_goat", "mod://animations/goat_face.tres")
	
	#hats
	Lure.assign_cosmetic_mesh(ID, "hat_beanie_maroon", ID + ".species_goat", "mod://models/Cosmetrics/goat_hat_beanie.tres")
	Lure.assign_cosmetic_mesh(ID, "hat_beanie_black", ID + ".species_goat", "mod://models/Cosmetrics/goat_hat_beanie.tres")
	Lure.assign_cosmetic_mesh(ID, "hat_beanie_blue", ID + ".species_goat", "mod://models/Cosmetrics/goat_hat_beanie.tres")
	Lure.assign_cosmetic_mesh(ID, "hat_beanie_green", ID + ".species_goat", "mod://models/Cosmetrics/goat_hat_beanie.tres")
	Lure.assign_cosmetic_mesh(ID, "hat_beanie_teal", ID + ".species_goat", "mod://models/Cosmetrics/goat_hat_beanie.tres")
	Lure.assign_cosmetic_mesh(ID, "hat_beanie_white", ID + ".species_goat", "mod://models/Cosmetrics/goat_hat_beanie.tres")
	Lure.assign_cosmetic_mesh(ID, "hat_beanie_yellow", ID + ".species_goat", "mod://models/Cosmetrics/goat_hat_beanie.tres")
	Lure.assign_cosmetic_mesh(ID, "hat_baseball_cap_big", ID + ".species_goat", "mod://models/Cosmetrics/goat_hat_baseball.tres")
	Lure.assign_cosmetic_mesh(ID, "hat_baseball_cap_green", ID + ".species_goat", "mod://models/Cosmetrics/goat_hat_baseball.tres")
	Lure.assign_cosmetic_mesh(ID, "hat_baseball_cap_mcd", ID + ".species_goat", "mod://models/Cosmetrics/goat_hat_baseball.tres")
	Lure.assign_cosmetic_mesh(ID, "hat_baseball_cap_missing", ID + ".species_goat", "mod://models/Cosmetrics/goat_hat_baseball.tres")
	Lure.assign_cosmetic_mesh(ID, "hat_baseball_cap_orange", ID + ".species_goat", "mod://models/Cosmetrics/goat_hat_baseball.tres")
	Lure.assign_cosmetic_mesh(ID, "hat_baseball_cap_pee", ID + ".species_goat", "mod://models/Cosmetrics/goat_hat_baseball.tres")
	Lure.assign_cosmetic_mesh(ID, "hat_baseball_cap_size", ID + ".species_goat", "mod://models/Cosmetrics/goat_hat_baseball.tres")
	Lure.assign_cosmetic_mesh(ID, "hat_baseball_cap_sports", ID + ".species_goat", "mod://models/Cosmetrics/goat_hat_baseball.tres")
	Lure.assign_cosmetic_mesh(ID, "hat_bucket_green", ID + ".species_goat", "mod://models/Cosmetrics/goat_hat_bucket.tres")
	Lure.assign_cosmetic_mesh(ID, "hat_bucket_tan", ID + ".species_goat", "mod://models/Cosmetrics/goat_hat_bucket.tres")
	Lure.assign_cosmetic_mesh(ID, "hat_cowboyhat_black", ID + ".species_goat", "mod://models/Cosmetrics/goat_hat_cowboy.tres")
	Lure.assign_cosmetic_mesh(ID, "hat_cowboyhat_brown", ID + ".species_goat", "mod://models/Cosmetrics/goat_hat_cowboy.tres")
	Lure.assign_cosmetic_mesh(ID, "hat_cowboyhat_pink", ID + ".species_goat", "mod://models/Cosmetrics/goat_hat_cowboy.tres")
	Lure.assign_cosmetic_mesh(ID, "hat_tophat", ID + ".species_goat", "mod://models/Cosmetrics/goat_hat_tophat.tres")
	
	#eyewear
	Lure.assign_cosmetic_mesh(ID, "accessory_eyepatch", ID + ".species_goat", "mod://models/Cosmetrics/goat_eyewear_patch.tres")
	Lure.assign_cosmetic_mesh(ID, "accessory_monocle", ID + ".species_goat", "mod://models/Cosmetrics/goat_eyewear_monocole.tres")
	Lure.assign_cosmetic_mesh(ID, "accessory_glasses_round", ID + ".species_goat", "mod://models/Cosmetrics/goat_eyewear_round.tres")
	Lure.assign_cosmetic_mesh(ID, "accessory_glasses", ID + ".species_goat", "mod://models/Cosmetrics/goat_eyewear_round.tres")
	
	#misc
	Lure.assign_cosmetic_mesh(ID, "accessory_antlers", ID + ".species_goat", "mod://models/Cosmetrics/goat_misc_antlers.tres")
	Lure.assign_cosmetic_mesh(ID, "accessory_bandaid", ID + ".species_goat", "mod://models/Cosmetrics/goat_misc_bandaid.tres")
	Lure.assign_cosmetic_mesh(ID, "accessory_cig", ID + ".species_goat", "mod://models/Cosmetrics/goat_misc_cig.tres")
	
	Lure.assign_pattern_texture(ID, "pattern_calico", ID + ".species_goat", "mod://textures/body_pattern_4_goat.png")
	Lure.assign_pattern_texture(ID, "pattern_collie", ID + ".species_goat", "mod://textures/body_pattern_1_goat.png")
	Lure.assign_pattern_texture(ID, "pattern_spotted", ID + ".species_goat", "mod://textures/body_pattern_3_goat.png")
	Lure.assign_pattern_texture(ID, "pattern_tux", ID + ".species_goat", "mod://textures/body_pattern_2_goat.png")

	Lure.assign_species_voice(ID, ID + ".species_goat", "mod://sounds/bark.ogg", "mod://sounds/wine.ogg", "mod://sounds/growl.ogg")
	
	Lure.add_content(ID, "species_goat", "mod://species/species_goat.tres")

	#horns
	Lure.add_content(ID,"accessory_horn","mod://Accessories/accessory_horn.tres")
	Lure.add_content(ID,"accessory_horn_small","mod://Accessories/accessory_horn_small.tres")
	Lure.add_content(ID,"accessory_horn_large","mod://Accessories/accessory_horn_large.tres")
