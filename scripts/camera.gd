# Extension de nodo de camara:

extends Camera2D

#onready var bird = get_node("../Bird")
onready var bird = utils.get_main_node().get_node("bird") # 

func _ready(): # Funcion de camara lista
	pass

func _physics_process(delta): # Funcion de ejecucion de cada frame y seguimiento de la camara al pajaro en el eje X
	position = Vector2(bird.position.x, position.y)
	pass

func get_total_pos(): # Funcion de posicion actual de la camara mas un desplazamiento
	return position + offset;
