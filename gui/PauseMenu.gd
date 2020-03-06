extends Control



func _on_Continue_button_up() -> void:
	get_tree().paused = false


func _on_Retry_button_up() -> void:
	get_tree().reload_current_scene()


func _on_Quit_button_up() -> void:
	get_tree().quit()
