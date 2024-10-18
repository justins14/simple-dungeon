extends CharacterBody2D

# The speed at which the player will move (pixels per second)
var speed: float = 200.0

func _physics_process(delta):
	var input_vector = Vector2.ZERO

	# Get input from WASD keys
	if Input.is_action_pressed("move_left"):
		input_vector.x -= 1
	if Input.is_action_pressed("move_right"):
		input_vector.x += 1
	if Input.is_action_pressed("move_up"):
		input_vector.y -= 1
	if Input.is_action_pressed("move_down"):
		input_vector.y += 1

	# Normalize to ensure consistent speed in all directions
	input_vector = input_vector.normalized()

	# Set the velocity and move the player
	velocity = input_vector * speed
	move_and_slide()
