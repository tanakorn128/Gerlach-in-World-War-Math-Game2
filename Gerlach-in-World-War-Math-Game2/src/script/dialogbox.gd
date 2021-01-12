extends Node2D
var value = Directory.new()
var data :int = 0
var text
signal end_dialog
func _ready():
	#var inst = load("res://src/scene/scene2.tscn").instance() #test
	#set_text(inst.get_text())
	pass

func _process(delta):
	pass

func _input(event):
	if event.is_action_pressed("ui_select") and $Label.percent_visible == 1:
		data = data + 1
		$Label.text = get_text(data)
		$AnimationPlayer.play("visible")
		$Label.percent_visible = 0
	
	pass

func set_text(value):
	$Label.percent_visible = 0
	#$Label.rect_size.x = 1333
	#$Label.rect_size.y = 284
	text = value
	set_value()
	$Label.text = get_text(data)
	$AnimationPlayer.play("visible")
	pass

func set_value(): #ข้อมูล อยู่ใน value รูปแบบ Directory เท่านั้น
	value = text
	return value
	pass

func get_text(value):
	var text = set_value() #ข้อมูล dialogbox
	if value < text.size(): #ค้นหา ขนาดของDirectory
		return text[str(value)][str(1)]
	else:
		emit_signal("end_dialog")
		queue_free()
		return " "
	pass
