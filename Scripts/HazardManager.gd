class_name HazardManager
extends Node


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func spawn_hazard():
	$DangerBox/AnimationPlayer.play('default')
	await $DangerBox/AnimationPlayer.animation_finished
	