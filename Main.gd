
extends Node2D

var resume = get_node("/root/globalsc")

func _ready():
	set_process(true)
	set_process_input(true)

func _input(event):
	if event.is_action("ui_cancel"):
		get_node("/root/globalsc").TP()
		get_tree().set_pause(true)
		
func _process(delta):
	pass
	
	