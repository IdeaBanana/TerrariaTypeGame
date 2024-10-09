extends State

class_name IdleState

@export var _moveKeeper: MoveFSMStateKeeper

func Update(delta: float):
	CheckConditionToChangeStateOnMoveState()

func CheckConditionToChangeStateOnMoveState() -> void:
	if MoveState.GetMoveDirection():
		Transitioned.emit(_moveKeeper.GetMoveState())
