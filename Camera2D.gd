extends Camera2D

export(NodePath) var player_path
var player 

func _ready():
	player = get_node(player_path)
	set_process(true)
	pass

func _process(delta):
	get_node("Node2D/ScoreLabel").set_text(String(get_score()))
	var player_post = player.get_position().y
	if player_post < get_position().y:
		set_position(Vector2(0, player_post))
	pass

func get_score():
	return int(get_global_position().y * -1)