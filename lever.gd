extends Area2D
var player: Player

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if Global.canbepressed == true:
		if Input.is_action_pressed("Interact"):
			Global.buttonispressed = true
			print('levered')
			await get_tree().create_timer(0.1).timeout
			Global.buttonispressed = false


func _on_body_entered(body: Node2D):
	if body is Player:
		Global.canbepressed = true
