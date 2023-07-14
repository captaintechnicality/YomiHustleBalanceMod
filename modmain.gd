extends Node

var modloader

func _init(ml = ModLoader):
	modloader = ml
	
	# EXAMPLE: HOW TO REPLACE BASE GAME SCENES WITH OVERRIDEN SCENES
	#var button = load("res://plus_f/ui/ActionSelector/ActionButton.tscn").instance()
	#modloader.saveScene(button, "res://ui/ActionSelector/ActionButton.tscn")
	#var ui = load("res://plus_f/ui/ActionSelector/ActionButtons.tscn").instance()
	#modloader.saveScene(ui, "res://ui/ActionSelector/ActionButtons.tscn")
	
	balance_ninja()
	balance_cowboy()
	balance_wizard()
	balance_robot()

func _ready():
	pass
	
	
func balance_ninja():
	# Projectiles
	var shuriken = load("res://characters/stickman/projectiles/StickmanFireball.tscn").instance()
	var airShuriken = load("res://characters/stickman/projectiles/StickmanAirFireball.tscn").instance()
	var kunai = load("res://characters/stickman/projectiles/Kunai.tscn").instance()
	var summonSlide = load("res://characters/stickman/projectiles/StickmanSummonSlide.tscn").instance()
	var whipwave = load("res://characters/stickman/projectiles/WhipWave.tscn").instance()
	var redwave = load("res://characters/stickman/projectiles/HeavyWhipWave.tscn").instance()
	var redwaveUp = load("res://characters/stickman/projectiles/HeavyWhipWaveHigh.tscn").instance()
	var stickyBomb = load("res://characters/stickman/projectiles/StickyBomb.tscn").instance()
	var caltrops = load("res://characters/stickman/projectiles/Caltrops.tscn").instance()
	
  # EXAMPLE: EDITING CUSTOM PROPERTY
	#set_hitbox_properties(shuriken, "Default", null, {
	#	blockstun = 1
	#})
	
	modloader.saveScene(shuriken, "res://characters/stickman/projectiles/StickmanFireball.tscn")
	modloader.saveScene(airShuriken, "res://characters/stickman/projectiles/StickmanAirFireball.tscn")
	modloader.saveScene(kunai, "res://characters/stickman/projectiles/Kunai.tscn")
	modloader.saveScene(summonSlide, "res://characters/stickman/projectiles/StickmanSummonSlide.tscn")
	modloader.saveScene(whipwave, "res://characters/stickman/projectiles/WhipWave.tscn")
	modloader.saveScene(redwave, "res://characters/stickman/projectiles/HeavyWhipWave.tscn")
	modloader.saveScene(redwaveUp, "res://characters/stickman/projectiles/HeavyWhipWaveHigh.tscn")
	modloader.saveScene(stickyBomb, "res://characters/stickman/projectiles/StickyBomb.tscn")
	modloader.saveScene(caltrops, "res://characters/stickman/projectiles/Caltrops.tscn")
	
	
	var scene = base_character_balance("res://characters/stickman/NinjaGuy.tscn")
	
	# EXAMPLE: EDITING ATTACK AND HITBOX PROPERTIES
	#set_attack_properties(scene, "GroundedPunch", {
	#	hit_cancel_into_string = "GroundedLight\nJump\nParry",
  # iasa_at = 14
	#})
	#set_hitbox_properties(scene, "GroundedPunch", null, {
	#	blockstun = 5
	#})
	
	modloader.saveScene(scene, "res://characters/stickman/NinjaGuy.tscn")
	
func balance_cowboy():
	# Projectiles
	var gun_throw_bullet = load("res://characters/swordandgun/projectiles/gun_throw_bullet.tscn").instance()
  
  
	modloader.saveScene(gun_throw_bullet, "res://characters/swordandgun/projectiles/gun_throw_bullet.tscn")
	
	#var bullet = load("res://characters/swordandgun/projectiles/bullet.tscn").instance()
	var bullet = load("res://characters/swordandgun/projectiles/NewBullet.tscn").instance()
	var gun = load("res://characters/swordandgun/projectiles/Gun.tscn").instance()
	var frozen_bullet = load("res://characters/swordandgun/projectiles/frozen_bullet.tscn").instance()
	var after_image = load("res://characters/swordandgun/projectiles/AfterImage.tscn").instance()
	var after_image_explosion = load("res://characters/swordandgun/projectiles/AfterImageExplosion.tscn").instance()
	
	modloader.saveScene(bullet, "res://characters/swordandgun/projectiles/NewBullet.tscn")
	modloader.saveScene(gun, "res://characters/swordandgun/projectiles/Gun.tscn")
	modloader.saveScene(frozen_bullet, "res://characters/swordandgun/projectiles/frozen_bullet.tscn")
	modloader.saveScene(after_image, "res://characters/swordandgun/projectiles/AfterImage.tscn")
	modloader.saveScene(after_image_explosion, "res://characters/swordandgun/projectiles/AfterImageExplosion.tscn")
	
	var scene = base_character_balance("res://characters/swordandgun/SwordGuy.tscn")
  
	
	modloader.saveScene(scene, "res://characters/swordandgun/SwordGuy.tscn")
	
	
func balance_wizard():
	# Projectiles
	var flameWave = load("res://characters/wizard/projectiles/FlameWave.tscn").instance()
	var manaDart = load("res://characters/wizard/projectiles/MagicMissile.tscn").instance()
	var sparkBomb = load("res://characters/wizard/projectiles/SparkBomb.tscn").instance()
	var vileClutch = load("res://characters/wizard/projectiles/VileClutch.tscn").instance()
	
	var geyser1 = load("res://characters/wizard/projectiles/GeyserProjectile.tscn").instance()
	var geyser2 = load("res://characters/wizard/projectiles/GeyserProjectile2.tscn").instance()
	var geyser3 = load("res://characters/wizard/projectiles/GeyserProjectile3.tscn").instance()
	
	var orbDart = load("res://characters/wizard/projectiles/OrbDart.tscn").instance()
	var orbLightning = load("res://characters/wizard/projectiles/orb/OrbLightning.tscn").instance()
	var orb = load("res://characters/wizard/projectiles/orb/Orb.tscn").instance()
	
	var rock1 = load("res://characters/wizard/projectiles/telekinesis/TelekinesisBoulder.tscn").instance()
	var rock2 = load("res://characters/wizard/projectiles/telekinesis/TelekinesisBoulder2.tscn").instance()
	var brock = load("res://characters/wizard/projectiles/telekinesis/TelekinesisBoulder3.tscn").instance()
	var bomb = load("res://characters/wizard/projectiles/telekinesis/TelekinesisBomb.tscn").instance()
	var bombExplosion = load("res://characters/wizard/projectiles/telekinesis/TelekinesisBombExplosion.tscn").instance()
	var pebble = load("res://characters/wizard/projectiles/telekinesis/TelekinesisPebble.tscn").instance()
	var tire = load("res://characters/wizard/projectiles/telekinesis/TelekinesisTire.tscn").instance()
	
	
	modloader.saveScene(flameWave, "res://characters/wizard/projectiles/FlameWave.tscn")
	modloader.saveScene(manaDart, "res://characters/wizard/projectiles/MagicMissile.tscn")
	modloader.saveScene(sparkBomb, "res://characters/wizard/projectiles/SparkBomb.tscn")
	modloader.saveScene(vileClutch, "res://characters/wizard/projectiles/VileClutch.tscn")
	
	modloader.saveScene(geyser1, "res://characters/wizard/projectiles/GeyserProjectile.tscn")
	modloader.saveScene(geyser2, "res://characters/wizard/projectiles/GeyserProjectile2.tscn")
	modloader.saveScene(geyser3, "res://characters/wizard/projectiles/GeyserProjectile3.tscn")
	
	
	modloader.saveScene(orbDart, "res://characters/wizard/projectiles/OrbDart.tscn")
	modloader.saveScene(orbLightning, "res://characters/wizard/projectiles/orb/OrbLightning.tscn")
	modloader.saveScene(orb, "res://characters/wizard/projectiles/orb/Orb.tscn")
	
	modloader.saveScene(rock1, "res://characters/wizard/projectiles/telekinesis/TelekinesisBoulder.tscn")
	modloader.saveScene(rock2, "res://characters/wizard/projectiles/telekinesis/TelekinesisBoulder2.tscn")
	modloader.saveScene(brock, "res://characters/wizard/projectiles/telekinesis/TelekinesisBoulder3.tscn")
	modloader.saveScene(bomb, "res://characters/wizard/projectiles/telekinesis/TelekinesisBomb.tscn")
	modloader.saveScene(bombExplosion, "res://characters/wizard/projectiles/telekinesis/TelekinesisBombExplosion.tscn")
	modloader.saveScene(pebble, "res://characters/wizard/projectiles/telekinesis/TelekinesisPebble.tscn")
	modloader.saveScene(tire, "res://characters/wizard/projectiles/telekinesis/TelekinesisTire.tscn")
	
	var scene = base_character_balance("res://characters/wizard/Wizard.tscn")
	
	modloader.saveScene(scene, "res://characters/wizard/Wizard.tscn")
	
func balance_robot():
	var scene = base_character_balance("res://characters/robo/Robot.tscn")
	
	modloader.saveScene(scene, "res://characters/robo/Robot.tscn")
	
func base_character_balance(path):
	var scene = load(path).instance()
	
	# EXAMPLE: EDITING PROPERTIES
	#set_attack_properties(scene, "DashBackward", {
	#	iasa_at = 18,
  # backdash_iasa = false
	#})
	
	return scene

func get_hitbox(scene, name, n = null):
	var number = ""
	if n != null:
		number = String(n)
	return scene.get_node("StateMachine/" + name + "/Hitbox" + number)
	
func get_action(scene, name):
	return scene.get_node("StateMachine/" + name)
	
func add_frames(frames: SpriteFrames, animation: String, animationPath: String, sprites: Array):
	var i = 1
	for spriteCount in sprites:
		var tex = load(animationPath + String(i) + ".png")
		for n in range(spriteCount):
			frames.add_frame(animation, tex)
		i += 1
		
func set_attack_properties(scene, name, properties):
	var attack = get_action(scene, name)
	for property in properties:
		attack[property] = properties[property]

func set_hitbox_properties(scene, name, index, properties):
	var hitbox = get_hitbox(scene, name, index)
	for property in properties:
		hitbox[property] = properties[property]
	
func append_attack(scene, name, nodeScene):
	var attack = nodeScene.instance()
	attack.name = name
	var tmpNode = scene.get_node("StateMachine")
	tmpNode.add_child(attack)
	attack.set_owner(scene)
