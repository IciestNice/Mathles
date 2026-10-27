extends Node2D
var amount = 0
var a = randi_range((1 * Global.difficulty), (3 * Global.difficulty))
var b = randi_range((1 * Global.difficulty), (3 * Global.difficulty))
var op = 0
var quest = 0
var q = ''

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if Global.difficulty == 1:
		op = 1
	if Global.difficulty == 2:
		op = randi_range(1, 2)
	if Global.difficulty >= 3:
		op = randi_range(1, 3)
	if op == 1:
		Global.answer = a + b
		q = str(a) + '+' + str(b) + '= ?'
	elif op == 2:
		if a > b:
			Global.answer = a - b
			q = str(a) + '-' + str(b) + '= ?'
		if b > a:
			Global.answer = b - a
			q = str(b) + '-' + str(a) + '= ?'
	if op == 3:
		Global.answer = a * b
		q = str(a) + 'x' + str(b) + '= ?'
	Global.questioned = q

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
