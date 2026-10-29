@tool
class_name Blockout
extends StaticBody2D


const INITIAL_SCALE: Vector2 = Vector2(1.0, 1.0)

@export var color: Color = Color(1.0, 1.0, 1.0, 1.0): set = _set_color

var sprite: Sprite2D
var collision: CollisionShape2D
var texture: GradientTexture2D = preload("uid://bp7hsf2i32l18")


func _init() -> void:
	print("_init")


func _ready() -> void:
	print("_ready")
	init_sprite()
	init_collision()


func _set_color(value: Color) -> void:
	prints("set_color", value)
	color = value
	if sprite:
		sprite.self_modulate = value
	if Engine.is_editor_hint() and get_child_count() > 0:
		get_child(0).self_modulate = value
		print("Set blockout color")


func init_sprite() -> void:
	sprite = Sprite2D.new()
	sprite.texture = texture
	sprite.self_modulate = color
	add_child(sprite)
	sprite.owner = self


func init_collision() -> void:
	collision = CollisionShape2D.new()
	collision.shape = RectangleShape2D.new()
	collision.shape.size = INITIAL_SCALE
	add_child(collision)
	collision.owner = self
