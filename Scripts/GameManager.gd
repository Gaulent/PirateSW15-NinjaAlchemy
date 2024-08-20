class_name GameManager
extends Node

@export var time_scale := 1.0
@export var speed: int = -1000
@export var hazard_prob: float = 0.2
var score:int = 0
signal on_score_change(new_score)
signal on_spawn_coins()

@onready var hazard_manager: HazardManager = get_tree().get_first_node_in_group('HazardManager')

# Called when the node enters the scene tree for the first time.
func _ready():
	$SpawnTimer.timeout.connect(spawn_coins)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	Engine.time_scale = time_scale

func add_score():
	score+=1
	on_score_change.emit(score)

func spawn_coins():
	
	if randf() > hazard_prob:
		on_spawn_coins.emit()
	else:
		await hazard_manager.spawn_hazard()

	$SpawnTimer.start()
