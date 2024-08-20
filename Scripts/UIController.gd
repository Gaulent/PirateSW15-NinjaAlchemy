extends Control

@onready var game_manager: GameManager = get_tree().get_first_node_in_group('GameManager')

# Called when the node enters the scene tree for the first time.
func _ready():
	game_manager.on_score_change.connect(update_score)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func update_score(new_score):
	$Label.text = str(new_score)
