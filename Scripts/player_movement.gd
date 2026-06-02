extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	get_input()


func get_input():
	# handling movement
	if Input.is_action_just_pressed("ui_up"):
		position.y -= 256 # change to be dimensions of tile
	
	if Input.is_action_just_pressed("ui_down"):
		position.y += 256
	
	if Input.is_action_just_pressed("ui_right"):
		position.x += 256
	
	if Input.is_action_just_pressed("ui_left"):
		position.x -= 256
