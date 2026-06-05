extends Button


# Called when the node enters the scene tree for the first time.
func _ready() -> void:	
	text = "Start Recording"
	pressed.connect(_button_pressed)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass


func _button_pressed():
	Global.record_echo = !Global.record_echo
	
	if Global.record_echo:
		text = "Stop Recording"
	else:
		text = "Start Recording"
