extends Area2D

@onready var game_manager: GameManager = get_tree().get_first_node_in_group('GameManager')
@onready var speed = game_manager.speed

# Called when the node enters the scene tree for the first time.
func _ready():
	body_entered.connect(on_player_touch)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	move_local_x(delta * speed)
	pass

func on_player_touch(node2d: Node2D):
	game_manager.add_score()
	queue_free()
