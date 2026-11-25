@tool
extends GridContainer

const CAGE_UI = preload("uid://bjsaamiuvbbjq")

func _ready() -> void:
	## This script is a @tool. This means it behaves in the editor as if it has already been instanced. 
	## Meaning functions like _ready are ran whenever the node is refreshed. 
	## In this case this is useful to create 15 CAGE_UI nodes in a loop instead of manually adding them one by one in the scene editor.
	for i in 15:
		var cage: Control = CAGE_UI.instantiate()
		add_child(cage)
