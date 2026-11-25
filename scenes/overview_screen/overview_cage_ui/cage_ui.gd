@tool
class_name CageUI extends Control

signal clicked(cage_ui: CageUI)

@export var locked: bool = true:
	set(value):
		locked = value
		if is_node_ready():
			_update_locked_visuals()

@onready var button: Button = $AspectRatioContainer/Button

@onready var cage_unlocked_texture: TextureRect = $AspectRatioContainer/Foreground/CageUnlockedTexture
@onready var cage_locked_texture: TextureRect = $AspectRatioContainer/Foreground/CageLockedTexture

func _ready() -> void:
	button.pressed.connect(_on_clicked)

func _update_locked_visuals() -> void:
	cage_locked_texture.visible = locked
	cage_unlocked_texture.visible = not locked

func _on_clicked() -> void:
	clicked.emit(self)
