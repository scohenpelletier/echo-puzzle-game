extends Node2D

# variables
var recorded_movement : Array
var record_echo : bool

# Called when the node enters the scene tree for the first time.
func _ready() -> void:	
	recorded_movement = $"../player".recorded_movement
	record_echo = $"../player".record_echo


# Called every frame. 'delta' is the elapsed time since the previous frame.
func process(_delta: float) -> void:
	pass


func shadow_move():
	if (record_echo or recorded_movement.size() < 1):
		return
	
	for i in range (recorded_movement.size()):
		var direction = recorded_movement[i]
		
		if (direction.equals("up")):
			position.y -= 256 # change to be dimensions of tile
		
		if (direction.equals("down")):
			position.y += 256
		
		if (direction.equals("right")):
			position.x += 256
		
		if (direction.equals("left")):
			position.x -= 256
	
	# send signal to clear array
	signal shadow_movement_done
