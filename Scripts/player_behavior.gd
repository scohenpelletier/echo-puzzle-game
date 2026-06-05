extends Node2D

# variables
var record_echo : bool
var recorded_movement : Array

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	get_input()


func get_input():
	var movement_type
	
	# handling movement
	if Input.is_action_just_pressed("ui_up"):
		position.y -= 256 # change to be dimensions of tile
		movement_type = "up"
	
	if Input.is_action_just_pressed("ui_down"):
		position.y += 256
		movement_type = "down"
	
	if Input.is_action_just_pressed("ui_right"):
		position.x += 256
		movement_type = "right"
	
	if Input.is_action_just_pressed("ui_left"):
		position.x -= 256
		movement_type = "left"
	
	# if recording movement, record the input
	if (record_echo):
		recorded_movement.append(movement_type)
