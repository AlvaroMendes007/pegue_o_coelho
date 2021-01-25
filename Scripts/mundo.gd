extends Node2D

var pre_coelho = preload("res://Scenes/coelho.tscn")
var tempo = 0
onready var pontos = $label
export var score = 0

func _ready():
	pass

func _process(delta):
	pontos.text = "Pontos: " + str(score)
	tempo += delta
	if tempo > rand_range(1, 3):
		InstanciarCoelho()
		tempo = 0
		
func InstanciarCoelho():
	var c = pre_coelho.instance()
	c.position = Vector2(rand_range(40, 560), 891)
	c.vel = rand_range(2,3)
	c.pos_final = rand_range(500, 800)
	add_child(c)
