extends KinematicBody2D



onready var T_player = get_node("/root/NivelJefe/player")

onready var preBala = preload("res://Escenas/Bala.tscn")

var vida = 5

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
	balaInstan.position.x = self.position.x - 80
	balaInstan.position.y = self.position.y 
	
	#bala rota con el player
	balaInstan.rotate(self.rotation)

func _on_Area2D_area_entered(area):
	if area.is_in_group("balaJugador"):
		if vida < 1:	
			queue_free()
		else:
			vida -= 1
	#Sngleton.espiritu_masista -= 20
	#print(Singleton.espiritu_masista)
