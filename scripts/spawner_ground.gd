# Extencion de controlador de suelo:

extends Node2D

# Variables de tamano de carga y precarga de suelo:

const GROUND_WIDTH = 168
const scn_ground = preload("res://scenes/ground.tscn")
const AMOUNT_TO_FILL_VIEW = 2

func _ready(): # Funcion de inicio del nodo, carga segmentos del suelo al inicio
	for i in range(AMOUNT_TO_FILL_VIEW):
		spwan_ground()
	pass

func spwan_ground(): # Funcion para generar nuevos segmentos de suelo en la posicion actual del nodo
	var new_ground = scn_ground.instance()
	new_ground.position = position
	new_ground.connect("tree_exited", self, "spwan_ground")
	position += Vector2(GROUND_WIDTH, 0)
	get_node("container").add_child(new_ground)
	pass
