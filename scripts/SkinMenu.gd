extends VBoxContainer

# Called when the node enters the scene tree for the first time.
func _ready():
	self.visible = false

func _on_SkinButton_pressed():
	if self.visible == false:
		self.visible = true
	elif self.visible == true:
		self.visible = false
