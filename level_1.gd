extends Node2D
var amount = randi_range((1 * Global.difficulty), (3 * Global.difficulty))
var Vace = preload("res://scenes/vase.tscn")
@export var vase_scene: PackedScene

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Global.questioned = "How many vasese?"
	Global.answer =  amount
	for i in range(amount):
		var vase = vase_scene.instantiate()
		vase.global_position = Vector2(215, 109) 
		get_tree().current_scene.add_child(vase)
		vase.scale = Vector2(0.5, 0.5)
		await get_tree().create_timer(0.5).timeout

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass
		
