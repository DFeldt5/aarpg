class_name Player extends CharacterBody2D

const DIR_4 = [Vector2.RIGHT, Vector2.DOWN, Vector2.LEFT, Vector2.UP]

var cardinal_direction: Vector2 = Vector2.DOWN
var direction: Vector2 = Vector2.ZERO

@onready var state_machine: PlayerStateMachine = $StateMachine
@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var sprite: Sprite2D = $Sprite2D

signal direction_changed(new_direction: Vector2)

func _ready() -> void:
	PlayerManager.player = self
	state_machine.initialize(self)
	pass


func _process(_delta) -> void:
	#direction.x = Input.get_action_strength("right") - Input.get_action_strength("left")
	#direction.y = Input.get_action_strength("down") - Input.get_action_strength("up")
	direction = Vector2(
		Input.get_axis("left", "right"),
		Input.get_axis("up", "down")
	).normalized()
	pass
	

func _physics_process(_delta: float) -> void:
	move_and_slide()


func set_direction() -> bool:
	if direction == Vector2.ZERO:
		return false
	
	#var direction_id: int = int(round((direction).angle() / TAU * DIR_4.size()))
	var direction_id: int = int(round((direction + cardinal_direction * 0.1).angle() / TAU * DIR_4.size()))
	
	var new_direction: Vector2 = DIR_4[direction_id]
		
	if new_direction == cardinal_direction:
		return false
	
	cardinal_direction = new_direction
	direction_changed.emit(new_direction)
	sprite.scale.x = -1 if cardinal_direction == Vector2.LEFT else 1
	
	return true
	


func update_animation(state: String) -> void:
	animation_player.play(state + "_" + animation_direction())
	pass

func animation_direction() -> String:
	if cardinal_direction == Vector2.DOWN:
		return "down"
	elif cardinal_direction == Vector2.UP:
		return "up"
	else:
		return "side"
