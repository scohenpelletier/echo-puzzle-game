extends Node2D

# local variables
var moving : bool = false


# Called when the node enters the scene tree for the first time.
func _ready() -> void:	
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if (!moving and !Global.record_echo and Global.recorded_movement.size() >= 1):
		shadow_move()


func shadow_move():
	moving = true
	
	for i in range (Global.recorded_movement.size()):
		var direction = Global.recorded_movement[i]
		
		if (direction == "up"):
			position.y -= 256 # change to be dimensions of tile
		
		if (direction == "down"):
			position.y += 256
		
		if (direction == "right"):
			position.x += 256
		
		if (direction == "left"):
			position.x -= 256
		
		await get_tree().create_timer(0.5).timeout
	
	# clear the array so that it can be re-recorded
	Global.recorded_movement.clear()
	moving = false
