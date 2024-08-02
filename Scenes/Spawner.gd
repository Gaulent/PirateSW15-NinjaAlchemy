extends Node2D

@export var coin_patterns:Array[PackedScene]

# Called when the node enters the scene tree for the first time.
func _ready():
	$Timer.timeout.connect(spawn_coins)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func spawn_coins():
	var current_pattern=coin_patterns.pick_random().instantiate()
	add_child(current_pattern)
	$Timer.start()
