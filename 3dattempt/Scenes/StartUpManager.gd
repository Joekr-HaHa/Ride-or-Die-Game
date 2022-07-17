extends Spatial

var playerShoot = preload("res://Scenes/Player.tscn")
var playerDash = preload("res://Scenes/PlayerDash.tscn")
var playerGrab = preload("res://Scenes/PlayerGrab.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	# Get roll from previous scene
	# disable and enable characters depending on value
	var player
	if Global.roll == 1 or Global.roll == 4:
		# Use shooting character
		print("shooting")
		player = playerShoot.instance()
	elif Global.roll == 2 or Global.roll == 5:
		# Use dashing character
		print("dashing")
		player = playerDash.instance()
	else:
		# Use throwing character
		print("throwing")
		player = playerGrab.instance()
		player.transform = get_parent().get_node("PlayerSpawn").transform
