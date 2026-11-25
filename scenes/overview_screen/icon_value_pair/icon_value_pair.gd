@tool
class_name IconValuePair extends Control

@export var icon: Texture2D:
	set(value):
		icon = value
		if is_node_ready():
			_update_visuals()

@export var amount_value: int:
	set(value):
		amount_value = value
		if is_node_ready():
			_update_visuals()

@export var text_size: int = 16 :
	set(value):
		text_size = value
		if is_node_ready():
			_update_visuals()

@onready var label: RichTextLabel = $Label

func _update_visuals() -> void:
	label.clear()

	if icon:
		label.add_image(icon, text_size * 1.5, text_size * 1.5)
	
	label.append_text(" %d" % amount_value)
	label.add_theme_font_size_override("normal_font_size", text_size)
	
