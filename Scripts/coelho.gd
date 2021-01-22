extends Sprite

var pos_inicial
export var pos_final = 500
var subir = true
export var vel = 1

func _ready():
	pos_inicial = position.y
	pass

func _process(delta):	
	if position.y < pos_inicial - pos_final:
		subir = false

	if subir:
		position.y -= vel
	else:
		position.y += vel
		
func _on_Button_button_down():
	queue_free()
