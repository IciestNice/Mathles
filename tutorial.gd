extends Node2D
var number = 1
@onready var player = $"/root/Tutorial/Player"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float):
	if Global.new_area == true:
		if number == 1:
			Global.teleport = true
			$"Tutorial room 1".position = Vector2(2000, 2000)
			$"Tutorial room 2".position = Vector2(0, 0)
			number = 2
			Global.new_area = false
		elif number == 2:
			Global.teleport = true
			$"Tutorial room 2".position = Vector2(2000, 2000)
			$"Tutorial room 3".position = Vector2(0, 0)
			Global.new_area = false
			number = 0
