extends StateKeeper

class_name MoveFSMStateKeeper

@export var moveState: MoveState
@export var idleState: IdleState

func GetMoveState():
	return moveState

func GetIdleState():
	return idleState
