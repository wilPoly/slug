extends Control


<<<<<<< Updated upstream

func _on_Continue_button_up() -> void:
	get_tree().paused = false


func _on_Retry_button_up() -> void:
	get_tree().reload_current_scene()
=======
func _input(event: InputEvent) -> void:
	if event.is_action_pressed("pause"):
		var new_pause_state = not get_tree().paused
		get_tree().paused = new_pause_state
		visible = new_pause_state


func _on_RestartLevel_button_up() -> void:
	get_tree().reload_current_scene()
	get_tree().paused = false
>>>>>>> Stashed changes


func _on_Quit_button_up() -> void:
	get_tree().quit()
