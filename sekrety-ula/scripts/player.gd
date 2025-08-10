extends CharacterBody2D

const SPEED = 300.0
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

func _physics_process(delta: float) -> void:
	var direction := Vector2.ZERO
	if Input.is_action_pressed("move_right"):
		animated_sprite_2d.flip_h = false
		direction.x += 1
	if Input.is_action_pressed("move_left"):
		animated_sprite_2d.flip_h = true
		direction.x -= 1
	if Input.is_action_pressed("move_down"):
		direction.y += 1
	if Input.is_action_pressed("move_up"):
		direction.y -= 1

	if direction != Vector2.ZERO:
		velocity = direction.normalized() * SPEED
	else:
		velocity = Vector2.ZERO

	move_and_slide()
