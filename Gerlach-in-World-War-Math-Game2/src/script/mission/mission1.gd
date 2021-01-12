extends Node2D
func _ready():
	position.x = 438.103
	position.y = 455.701
func _process(delta):
	pass





func _on_Area2D_body_entered(body):
	get_tree().change_scene("res://src/scene/Exam.tscn")
	pass # Replace with function body.
