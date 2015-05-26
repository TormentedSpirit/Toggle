
extends Node2D
var count = 0

var current_scene = null

func _ready():
	set_process(true)
	set_process_input(true)
	var root = get_tree().get_root()
	current_scene = root.get_child( root.get_child_count() -1 )
	
func _input(event):
	var resume = get_node("/root/globalsc").getresume()
	if resume != false:
		if event.is_action("ui_accept"):
			current_scene.queue_free()
			get_tree().set_pause(false)

func _process(delta):
	var resume = get_node("/root/globalsc").getresume()
	if resume != false:
		get_node("Button").show()

	
func _on_TT():
	count += 1
	get_node("Timer/Label").set_text(str("Game Time: ", count))

func _on_options():
	get_node("/root/globalsc").SS("res://options.scn")

func _on_B1():
	get_node("/root/globalsc").SS("res://main.scn")

func _on_B2():
	get_tree().quit()


func _resume():
	current_scene.queue_free()
	get_tree().set_pause(false)

