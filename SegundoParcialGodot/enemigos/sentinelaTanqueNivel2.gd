extends KinematicBody2D

onready var T_player = get_node("/root/NivelJefe/player")

onready var preBala = preload("res://Escenas/Bala.tscn")


func _physics_process(delta):
		
	#mirando player
	look_at(T_player.position)
	
	if $Ray.is_colliding():
		var colli = $Ray.get_collider()
		if colli.is_in_group("jugadores"):
			disparar()
	
func disparar():
		
	var balaInstan = preBala.instance()
	get_parent().add_child(balaInstan)
	balaInstan.get_node("Bala/Area2D").add_to_group("balaEnemigo")
	#bala obtiene posicion del player
	balaInstan.position = self.position
	#bala rota con el player
	balaInstan.rotate(self.rotation)

func _on_Area2D_area_entered(area):
	if area.is_in_group("balaJugador"):
		queue_free()
