@tool
extends EditorPlugin

const NODE_NAME = "Blockout2D"
const INHERITANCE = "StaticBody2D"
const THE_SCRIPT = preload("blockout.gd")

func _enable_plugin() -> void:
	# Add autoloads here.
	pass


func _disable_plugin() -> void:
	# Remove autoloads here.
	pass


func _enter_tree() -> void:
	add_custom_type(NODE_NAME, INHERITANCE, THE_SCRIPT, null)


func _exit_tree() -> void:
	remove_custom_type(NODE_NAME)
