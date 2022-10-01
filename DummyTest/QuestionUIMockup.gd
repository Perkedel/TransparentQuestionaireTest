extends Control


# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	pass


func _on_TransparentToggle_toggled(button_pressed: bool) -> void:
#	OS.window_per_pixel_transparency_enabled = button_pressed
	get_tree().get_root().set_transparent_background(button_pressed)
	pass # Replace with function body.


func _on_ExitButton_pressed() -> void:
	if ClassDB.class_exists("Singletoner"):
		# TODO: call ChangeDVD through this Singletoner
		pass
	else:
		get_tree().quit(0)
		pass
	pass # Replace with function body.
