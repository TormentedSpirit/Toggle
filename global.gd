extends Node
var count = 0
var CS = null
var resume = false

func _ready():
	var root = get_tree().get_root()
	CS = root.get_child(root.get_child_count() -1 )
	set_process_input(true)
	set_process(true)
	
func SS(scene):
	var root = get_tree().get_root()
	CS.queue_free()
	var s = load(scene)
	CS = s.instance()
	root.add_child(CS)

func SSP(scene):
	var root = get_tree().get_root()
	var s = load(scene)
	CS = s.instance()
	root.add_child(CS)
	
func TP():
			SSP("res://Title.scn")
			resume = true
			get_tree().set_pause(true)
			
func getresume():
	return resume