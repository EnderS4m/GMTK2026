class_name Screen extends Sprite2D
@onready var screen_root = $"../ScreenRootPos"

# Called when the node enters the scene tree for the first time.
func _ready():
	position = screen_root.position
	
func _process(_delta):
	if Input.is_action_just_pressed("ui_accept"):
		change_screen(preload("res://scenes/screen.tscn").instantiate())

func change_screen(screen: Screen):
	add_sibling(screen)
	queue_free()
	pass
