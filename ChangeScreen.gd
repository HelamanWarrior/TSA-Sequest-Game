extends Button

func _input(_event):
	if Input.is_action_just_released("action"):
		get_tree().change_scene("res://Prototype.tscn")

func _on_Play_button_down():
	get_tree().change_scene("Prototype.tscn")

func _on_Settings_button_down():
	get_tree().change_scene("ControlsMenu.tscn")

func _on_Exit_button_down():
	get_tree().quit()

func _on_Back_button_down():
	get_tree().change_scene("Menu.tscn")

func _on_Pause_button_down():
	get_tree().change_scene("Menu.tscn")
