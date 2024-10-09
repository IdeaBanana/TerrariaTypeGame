extends State

class_name MoveState

@export var _moveKeeper: MoveFSMStateKeeper
@export var _player: CharacterBody2D

@export_group("Move settings")
@export var speed: float = 300.0

var moveDirection: float

func Update(delta: float) -> void:
	moveDirection = GetMoveDirection()
	_player.velocity.x = speed * moveDirection
	_player.move_and_slide()
	
	CheckConditionToChangeToIdleState()

static func GetMoveDirection():
	return Input.get_axis("PlayerLeft", "PlayerRight")

func CheckConditionToChangeToIdleState():
	if _player.velocity == Vector2.ZERO:
		Transitioned.emit(_moveKeeper.GetIdleState())
