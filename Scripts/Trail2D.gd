extends Line2D

@export var length := 10
@export var speed:= -1000.0

@onready var parent : Node2D = get_parent()
var offset := Vector2.ZERO

func _ready() -> void:
	offset = position
	top_level = true

func _physics_process(delta: float) -> void:
	global_position = Vector2.ZERO

	var point:Vector2 = parent.global_position + offset
	add_point(point, 0)
	
	for i in get_point_count():
		set_point_position(i,get_point_position(i) - Vector2.LEFT * speed * delta)
	
	if get_point_count() > length:
		remove_point(get_point_count() - 1)
