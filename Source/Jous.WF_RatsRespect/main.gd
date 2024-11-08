extends Node

const ID = "Jous.WF_RatsRespect"

onready var Lure = get_node("/root/SulayreLure")

func _ready():
	Lure.add_map(ID, "WF_RatsRespect", "mod://WF_RatsRespect.tscn", "WF_RatsRespect" )
