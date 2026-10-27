extends Button


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if button_pressed == true:
		Global.number = 4
		get_tree().change_scene_to_file("res://scenes/level_1.tscn")
		Global.game_song = true
		Global.tutorial_song = false
