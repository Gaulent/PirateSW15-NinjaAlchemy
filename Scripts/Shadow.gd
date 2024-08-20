extends Sprite2D

var position_queue:Array[Vector2]
@export var main_sprite:Sprite2D
var speed = -1000
@export var delay:int = 3

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _physics_process(delta: float) -> void:
	
	position_queue.push_back(main_sprite.global_position - Vector2.LEFT * speed * delta * delay)

	if(len(position_queue) > delay):
		global_position = position_queue.pop_front()
	else:
		global_position = position_queue.front()
