
extends VBoxContainer

func _ready():
	set_process(true)
	set_process_input(true)
	
func _on_return():
	get_node("/root/globalsc").SS("res://Title.scn")

func _input(event):
	if event.is_action("ui_cancel") && event.is_pressed() && !event.is_echo():
		get_node("/root/globalsc").SS("res://Title.scn")
