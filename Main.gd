extends Node

var plataform = preload("res://Plataform.tscn")
var width

func _ready():
	width = get_viewport().get_visible_rect().size.x
	randomize()
	var y = 0
	while y > -3000:
		var new_plataform = plataform.instance()
		new_plataform.set_position(Vector2(rand_range(-width/2,width/2), y))
		add_child(new_plataform)
		y-= rand_range(0,200)
	pass