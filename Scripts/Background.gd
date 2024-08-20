extends Parallax2D

@onready var game_manager: GameManager = get_tree().get_first_node_in_group('GameManager')
@onready var speed = game_manager.speed

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	scroll_offset.x += speed * delta * scroll_scale.x
