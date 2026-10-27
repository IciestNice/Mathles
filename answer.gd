extends LineEdit


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass


func _on_text_submitted(new_text: String) -> void:
	if int(new_text) == Global.answer:
		Global.removething = true
		print('quite cool')
		await get_tree().create_timer(2.5).timeout
		Global.removething = false
