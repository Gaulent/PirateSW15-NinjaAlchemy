class_name GameManager
extends Node

@export var time_scale := 1.0
@export var speed = -1000
var score:int = 0
signal on_score_change(new_score)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	Engine.time_scale = time_scale
	pass

func add_score():
	score+=1
	on_score_change.emit(score)
