extends Node2D

var previous_amount = 0

onready var flash_timer = $FlashTimer

func _ready():
	GameEvent.connect("update_oxygen_ui", self, "update_oxygen_ui")

func _process(_delta):
	scale = lerp(scale, Vector2(1, 1), 0.1)
	rotation_degrees = lerp(rotation_degrees, 0, 0.1)

func update_oxygen_ui(oxygen_amount):
	var amount = round(oxygen_amount)
	
	if amount != previous_amount:
		if amount == 25:
			scale_rotate(1.25, 5)
			flash_white()
		elif amount == 15:
			scale_rotate(1.3, 7)
			flash_white()
		elif amount == 10:
			scale_rotate(1.35, 10)
			flash_white()
		elif amount == 5:
			scale_rotate(1.5, 20)
			flash_white()
		
		previous_amount = amount

func scale_rotate(scale_value, rotation_value):
	scale.x = scale_value
	scale.y = scale.x
	
	rotation_degrees = rand_range(-rotation_value, rotation_value)

func flash_white():
	modulate = Color(50, 50, 50)
	flash_timer.start()

func _on_FlashTimer_timeout():
	modulate = Color.white
