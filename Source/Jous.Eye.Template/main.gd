extends Node

# Change Jous.Eye to your name.
# Change Template to your Mod name.
# Make sure it's the same as the Folder Name.
# If it's not the same as webfishing/mods/${name.mod}/ it doesn't work.
const ID = "Jous.Eye.Template"

# We use Lure for this, so we load it.
onready var Lure = get_node("/root/SulayreLure")

func _ready():
	#Eyes, This is just and example add more if you like.
	Lure.add_content(ID, ID + ".eye_template","mod://eye_template.tres", [Lure.LURE_FLAGS.FREE_UNLOCK])
