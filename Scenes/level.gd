extends Node2D

var ghost_scene: PackedScene = load("res://Scenes/ghost.tscn")
var laser_scene: PackedScene = load("res://Scenes/laser.tscn")

func _on_ghost_timer_timeout() -> void:
	var ghost = ghost_scene.instantiate()
	
	$Ghosts.add_child(ghost)


func _on_player_laser(pos) -> void:
	var laser = laser_scene.instantiate()
	$Lasers.add_child(laser)
	laser.position = pos
