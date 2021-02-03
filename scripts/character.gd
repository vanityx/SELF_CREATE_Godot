extends Node2D

onready var skinSprite = $CompositeSprites/Skin
onready var noseSprite = $CompositeSprites/Nose
onready var lipsSprite = $CompositeSprites/Lips

const composite_sprites = preload("res://CompositeSprites/CompositeSprites.gd")

var curr_skin: int = 0
var curr_nose: int = 0
var curr_lips: int = 0

func _ready():
	skinSprite.texture = composite_sprites.skin_spritesheet[0]
	noseSprite.texture = composite_sprites.nose_spritesheet[0]
	lipsSprite.texture = composite_sprites.lips_spritesheet[0]


func _on_SkinOpt1_pressed():
	curr_skin = 0
	skinSprite.texture = composite_sprites.skin_spritesheet[curr_skin]

func _on_SkinOpt2_pressed():
	curr_skin = 1
	skinSprite.texture = composite_sprites.skin_spritesheet[curr_skin]

func _on_SkinOpt3_pressed():
	curr_skin = 2
	skinSprite.texture = composite_sprites.skin_spritesheet[curr_skin]

func _on_SkinOpt4_pressed():
	curr_skin = 3
	skinSprite.texture = composite_sprites.skin_spritesheet[curr_skin]
