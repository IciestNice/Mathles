extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float):
	pass

func _on_body_entered(_body: Node2D) -> void:
	$"../../AudioStreamPlayer".play()
	if Global.number == 1:
		print('hi')
		Global.number = 2
		get_tree().change_scene_to_file("res://scenes/tutorial_room_2.tscn")
		
	elif Global.number == 2:
		print('hi again')
		Global.number = 3
		get_tree().change_scene_to_file("res://scenes/tutorial_room_3.tscn")
		
	elif Global.number == 3:
		print('hi for the third time')
		Global.number = 1
		get_tree().change_scene_to_file("res://scenes/title.tscn")
		
		
	elif Global.number == 4:
		print('yo')
		Global.number = 5
		get_tree().change_scene_to_file.call_deferred("res://scenes/level_2.tscn")
		
	elif Global.number == 5:
		print('yo more')
		Global.number = 6
		get_tree().change_scene_to_file.call_deferred("res://scenes/level_3.tscn")
		
	elif Global.number == 6:
		print('yo even more')
		Global.number = 7
		get_tree().change_scene_to_file.call_deferred("res://scenes/gem_room.tscn")
		
	elif Global.number == 7:
		print('yo end')
		Global.number = 4
		Global.difficulty += 1
		get_tree().change_scene_to_file("res://scenes/level_1.tscn")
