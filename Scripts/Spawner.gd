extends Node2D

@onready var game_manager: GameManager = get_tree().get_first_node_in_group('GameManager')
@export var coin_patterns:Array[PackedScene]

# Called when the node enters the scene tree for the first time.
func _ready():
	game_manager.on_spawn_coins.connect(spawn_coins)

func spawn_coins():
	var current_pattern=coin_patterns.pick_random().instantiate()
	add_child(current_pattern)
