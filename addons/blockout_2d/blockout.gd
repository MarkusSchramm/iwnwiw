@tool
#TODO create icon for blockout node
class_name Blockout
extends StaticBody2D

@export var color: Color
@export var text: String = "Blockout": set = set_text

func _init():
	print("_init")

func _ready():
	print("_ready")
	var label = Label.new()
	label.position.y = 50
	label.text = text
	add_child(label)
	var collision = CollisionShape2D.new()
	collision.shape = RectangleShape2D.new()
	collision.transform = transform
	add_child(collision)
	#var sprite = Sprite2D.new()
	#sprite.transform = transform
	#sprite.texture = GradientTexture2D.new()
	#add_child(sprite)
	

func set_text(value: String):
	prints("set_txt", value)
	text = value
	if Engine.is_editor_hint() and get_child_count() > 0:
		get_child(0).text = value
		print("Set label text")
