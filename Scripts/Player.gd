extends CharacterBody2D

const JUMP_VELOCITY = -920.0
var is_double_jumping = false

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity") * 2


func _physics_process(delta):
	# Add the gravity.
	if is_on_floor():
		is_double_jumping = false
	if not is_on_floor() and velocity.y < 0:
		velocity.y += gravity * delta
	if not is_on_floor() and velocity.y >= 0:
		velocity.y += gravity * delta * 1.2

	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	if Input.is_action_just_pressed("ui_accept") and !is_on_floor() and !is_double_jumping:
		is_double_jumping = true
		velocity.y = JUMP_VELOCITY
		
	move_and_slide()
