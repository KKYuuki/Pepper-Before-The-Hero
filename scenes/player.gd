
extends CharacterBody2D

# Pepper's movement settings
@export var move_speed: float = 260.0
@export var jump_velocity: float = -430.0
@export var gravity: float = 1100.0

# Coyote time allows jumping briefly after leaving a ledge.
@export var coyote_time: float = 0.12

# Respawn settings
@export var spawn_position: Vector2 = Vector2(160, 450)
@export var fall_limit: float = 800.0

var coyote_timer: float = 0.0

@onready var sprite: Sprite2D = $Sprite2D


func _physics_process(delta: float) -> void:
	# Track whether Pepper can still jump.
	if is_on_floor():
		coyote_timer = coyote_time
	else:
		coyote_timer = maxf(coyote_timer - delta, 0.0)

	# Apply gravity while airborne.
	if not is_on_floor():
		velocity.y += gravity * delta

	# Jump when allowed.
	if Input.is_action_just_pressed("jump") and coyote_timer > 0.0:
		velocity.y = jump_velocity
		coyote_timer = 0.0

	# Read horizontal movement.
	var direction: float = Input.get_axis(
		"move_left", "move_right"
	)

	velocity.x = direction * move_speed

	# Face the direction of travel.
	if direction != 0.0:
		sprite.flip_h = direction < 0.0

	# Apply movement with collision handling.
	move_and_slide()

	# Respawn Pepper if she falls below the level.
	if global_position.y > fall_limit:
		respawn()


# Return Pepper to the starting position.
func respawn() -> void:
	global_position = spawn_position
	velocity = Vector2.ZERO
	coyote_timer = 0.0
