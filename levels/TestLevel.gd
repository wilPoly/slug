extends Node2D



func _on_Player_direction(velocity) -> void:
	$Label.text = str(velocity)