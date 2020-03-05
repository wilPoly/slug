extends Control

var new_game: = preload("res://levels/TestLevel.tscn")

func _on_Play_button_down() -> void:
	get_tree().change_scene_to(new_game)


func _on_Quit_button_down() -> void:
	get_tree().quit()
