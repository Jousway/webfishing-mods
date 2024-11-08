extends Node

var mutex: Mutex
var thread: Thread
var shutdown = false

var shdr = load("res://mods/Jous.ToonOutline/Outline.tres")
	
func _run_child(children, force):	
	if shutdown:
		return
	if children.get_name() == "player":
		force = true
	for child in children.get_children(): 
		if child.is_class("MeshInstance"):
			if child.get_mesh() and child.get_mesh().is_class("ArrayMesh"):
				for i in range(0,child.get_surface_material_count()):
					var mat = child.get_active_material(i)
					if mat: 
						if force or (mat.is_class("SpatialMaterial") and not mat.get_feature(SpatialMaterial.FEATURE_TRANSPARENT) or not mat.is_class("SpatialMaterial")):
							
							if shutdown:
								return
								
							if mat.get_next_pass():
								continue
								
							mutex.try_lock()
							mat.set_next_pass(shdr)
							mutex.unlock()	
		_run_child(child,force)

func _ready():
	mutex = Mutex.new()
	thread = Thread.new()
	
	mutex.lock()
	
	thread.start(self, "_updateshader")
	
func _exit_tree():
	shutdown = true
	mutex.unlock()
	thread.wait_to_finish()

func _process(delta):
	mutex.unlock()
	mutex.lock()

func _updateshader():
	while not shutdown:
		var world = get_node_or_null("/root/world")
		if !world: continue
		_run_child(world,false)
