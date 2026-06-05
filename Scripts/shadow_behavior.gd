extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:	
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func process(_delta: float) -> void:
	pass


func shadow_move():
	if (Global.record_echo or Global.recorded_movement.size() < 1):
		return
	
	for i in range (Global.recorded_movement.size()):
		var direction = Global.recorded_movement[i]
		
		if (direction.equals("up")):
			position.y -= 256 # change to be dimensions of tile
		
		if (direction.equals("down")):
			position.y += 256
		
		if (direction.equals("right")):
			position.x += 256
		
		if (direction.equals("left")):
			position.x -= 256
	
	# clear the array so that it can be re-recorded
	Global.recorded_movement.clear()
