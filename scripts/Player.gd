extends Node2D

func _process(delta):
	$AnimationPlayer.play("Idle_Move")

onready var bodySprite = $CompositeSprites/Body
onready var armsLeftSprite = $CompositeSprites/ArmsLeft
onready var armsRightSprite = $CompositeSprites/ArmsRight
onready var eyesSprite = $CompositeSprites/Eyes
onready var topSprite = $CompositeSprites/Top
onready var bottomsSprite = $CompositeSprites/Bottoms
onready var hairSprite = $CompositeSprites/Hair
onready var weaponsSprite = $CompositeSprites/Weapons

const composite_sprites = preload("res://CompositeSpritesheets/CompositeSprites.gd")

var curr_body: int = 0
var curr_eyes: int = 0
var curr_top: int = 0
var curr_bottoms: int = 0
var curr_hair: int = 0
var curr_weapon: int = 0
var FullBodyTops = [5, 6]

func _ready():
	bodySprite.texture = composite_sprites.body_spritesheet[curr_body]
	armsLeftSprite.texture = composite_sprites.armsLeft_spritesheet[0]
	armsRightSprite.texture = composite_sprites.armsRight_spritesheet[2]
	hairSprite.texture = composite_sprites.hair_spritesheet[curr_hair]
	eyesSprite.texture = composite_sprites.eyes_spritesheet[curr_eyes]
	bottomsSprite.texture = composite_sprites.bottoms_spritesheet[curr_bottoms]
	topSprite.texture = composite_sprites.top_spritesheet[curr_top]
	weaponsSprite.texture = composite_sprites.weapons_spritesheet[curr_weapon]
	

func _on_LBtnHair_pressed():
	if curr_hair == 0:
		curr_hair = composite_sprites.hair_spritesheet.size() - 1
		hairSprite.texture = composite_sprites.hair_spritesheet[curr_hair]
	else:
		curr_hair = (curr_hair - 1) % composite_sprites.hair_spritesheet.size()
		hairSprite.texture = composite_sprites.hair_spritesheet[curr_hair]
		

func _on_RBtnHair_pressed():
	curr_hair = (curr_hair + 1) % composite_sprites.hair_spritesheet.size()
	hairSprite.texture = composite_sprites.hair_spritesheet[curr_hair]
	

func _on_LBtnEyes_pressed():
	if curr_eyes == 0:
		curr_eyes = composite_sprites.hair_spritesheet.size() - 1
		eyesSprite.texture = composite_sprites.eyes_spritesheet[curr_eyes]
	else:
		curr_eyes = (curr_eyes - 1) % composite_sprites.eyes_spritesheet.size()
		eyesSprite.texture = composite_sprites.eyes_spritesheet[curr_eyes]
		

func _on_RBtnEyes_pressed():
	curr_eyes = (curr_eyes + 1) % composite_sprites.eyes_spritesheet.size()
	eyesSprite.texture = composite_sprites.eyes_spritesheet[curr_eyes]
	

func _on_LBtnTop_pressed():
	if curr_top == 0:
		curr_top = composite_sprites.top_spritesheet.size() - 1
		topSprite.texture = composite_sprites.top_spritesheet[curr_top]
	else:
		curr_top = (curr_top - 1) % composite_sprites.top_spritesheet.size()
		topSprite.texture = composite_sprites.top_spritesheet[curr_top]
	for i in FullBodyTops:
		if curr_top == i:
			bottomsSprite.texture = null
			return
		else:
			bottomsSprite.texture = composite_sprites.bottoms_spritesheet[curr_bottoms]
		
func _on_RBtnTop_pressed():
	curr_top = (curr_top + 1) % composite_sprites.top_spritesheet.size()
	topSprite.texture = composite_sprites.top_spritesheet[curr_top]
	for i in FullBodyTops:
		if curr_top == i:
			bottomsSprite.texture = null
			return
		else:
			bottomsSprite.texture = composite_sprites.bottoms_spritesheet[curr_bottoms]
	

func _on_LBtnBottoms_pressed():
	if curr_bottoms == 0:
		curr_bottoms = composite_sprites.bottoms_spritesheet.size() - 1
		bottomsSprite.texture = composite_sprites.bottoms_spritesheet[curr_bottoms]
	else:
		curr_bottoms = (curr_bottoms - 1) % composite_sprites.bottoms_spritesheet.size()
		bottomsSprite.texture = composite_sprites.bottoms_spritesheet[curr_bottoms]
		

func _on_RBtnBottoms_pressed():
	curr_bottoms = (curr_bottoms + 1) % composite_sprites.bottoms_spritesheet.size()
	bottomsSprite.texture = composite_sprites.bottoms_spritesheet[curr_bottoms]


func _on_LBtnWeapon_pressed():
	if curr_weapon == 0:
		curr_weapon = composite_sprites.weapons_spritesheet.size() - 1
		weaponsSprite.texture = composite_sprites.weapons_spritesheet[curr_weapon]
	else:
		curr_weapon = (curr_weapon - 1) % composite_sprites.weapons_spritesheet.size()
		weaponsSprite.texture = composite_sprites.weapons_spritesheet[curr_weapon]
	if curr_weapon != 0:
		armsRightSprite.texture = composite_sprites.armsRight_spritesheet[0]
	else:
		armsRightSprite.texture = composite_sprites.armsRight_spritesheet[2]
				
		
func _on_RBtnWeapon_pressed():
	curr_weapon = (curr_weapon + 1) % composite_sprites.weapons_spritesheet.size()
	weaponsSprite.texture = composite_sprites.weapons_spritesheet[curr_weapon]
	if curr_weapon != 0:
		armsRightSprite.texture = composite_sprites.armsRight_spritesheet[0]
	else:
		armsRightSprite.texture = composite_sprites.armsRight_spritesheet[2]
