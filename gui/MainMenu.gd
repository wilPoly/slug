tool
extends Control

export var new_game: PackedScene

func _on_Play_button_down() -> void:
	get_tree().change_scene_to(new_game)


func _on_Quit_button_down() -> void:
	get_tree().quit()
