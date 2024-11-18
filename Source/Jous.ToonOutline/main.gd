extends Node

var mutex: Mutex
var thread: Thread
var shutdown = false

var shdr = load("res://mods/Jous.ToonOutline/Outline.tres")
var knit = load("res://mods/Jous.ToonOutline/KnittingPattern.tres")

var settings
	
func _run_child(children, player = false):	
	if shutdown:
		return
		
	if children.get_name() == "player_body":
		player = true
		
	for child in children.get_children(): 	
		if child.is_class("MeshInstance"):
			if child.get_mesh() and child.get_mesh().is_class("ArrayMesh"):
				if shutdown:
					return
					
				var cosmetic = "cosmetic_node" in child.get_name() && settings && not settings["KnitOnCosmetics"];
				
				if cosmetic && "head" in child.get_mesh().get_path():
					cosmetic = false;
					
				for i in range(0,child.get_surface_material_count()):
					var mat = child.get_active_material(i)

					if mat && not cosmetic && settings && settings["KnitActive"]: 					
						while mat.get_next_pass() and mat.get_name() != "jous.knit":
							mat = mat.get_next_pass()
							
						if player:
							if mat.get_name() != "jous.knit":	
								mutex.lock()
								mat.set_next_pass(knit)
								mutex.unlock()

					mat = child.get_active_material(i)

					if mat && settings && settings["OutlineActive"]:	
						while mat.get_next_pass() and mat.get_name() != "jous.outline":
							mat = mat.get_next_pass()
						
						if player or (mat.is_class("SpatialMaterial") and not mat.get_feature(SpatialMaterial.FEATURE_TRANSPARENT) or not mat.is_class("SpatialMaterial")):
							
							if mat.get_name() != "jous.outline":
								mutex.lock()			
								mat.set_next_pass(shdr)
								mutex.unlock()	
		_run_child(child,player)

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
	var file = File.new()
		
	if file.open(OS.get_executable_path().get_base_dir().plus_file("GDWeave/configs/Jous.ToonOutline.json"),File.READ) == OK:
		var json = JSON.parse(file.get_as_text())
		file.close()
		if typeof(json.result) == TYPE_DICTIONARY:
			settings = json.result;
			shdr.set_shader_param("depth_coef", float(settings["OutlineStrength"]) * 100);
			knit.set_shader_param("strength", float(settings["KnitStrength"]));
	
	shdr.set_render_priority(127)
	shdr.set_name("jous.outline")
	knit.set_name("jous.knit")
	
	while not shutdown:
		yield(get_tree().create_timer(0.25), "timeout")
		
		var world = get_node_or_null("/root/world")
		if !world: continue
		
		_run_child(world)
