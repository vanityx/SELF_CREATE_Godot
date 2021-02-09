extends Node2D

onready var bodySprite = $CompositeSprites/Body
onready var armsSprite = $CompositeSprites/Arms
onready var hairSprite = $CompositeSprites/Hair
onready var eyesSprite = $CompositeSprites/Eyes
onready var topSprite = $CompositeSprites/Top
onready var bottomsSprite = $CompositeSprites/Bottoms

const composite_sprites = preload("res://CompositeSpritesheets/CompositeSprites.gd")

func _ready():
	bodySprite.texture = composite_sprites.body_spritesheet[0]
	armsSprite.texture = composite_sprites.arms_spritesheet[0]
	hairSprite.texture = composite_sprites.hair_spritesheet[0]
	eyesSprite.texture = composite_sprites.eyes_spritesheet[0]
	topSprite.texture = composite_sprites.top_spritesheet[0]
	bottomsSprite.texture = composite_sprites.bottoms_spritesheet[0]
