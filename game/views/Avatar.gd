extends Node


export (NodePath) var Cam #camera
export (NodePath) var Ward
export (NodePath) var Inputs

onready var ward = get_node(Ward)
onready var camera = get_node(Cam)
onready var inputs = get_node(Inputs) if Inputs else null


func _input(event):
	if ward is Player:
		var motion_direction = Vector2(
				Input.get_action_strength("move_right") - Input.get_action_strength("move_left"),
				Input.get_action_strength("move_back") - Input.get_action_strength("move_forward"))
		
		if Input.is_action_just_pressed("jump"): #idle/move
			ward.jump()