extends KinematicBody2D

onready var preSentinela = preload("res://enemigos/sentinelaTanque.tscn")

# warning-ignore:unused_argument
func _physics_process(delta):
	
	if $Ray.is_colliding():
		var colli = $Ray.get_collider()
		if colli.is_in_group("jugadores"):
			var T_sentinel = preSentinela.instance()
			get_parent().add_child(T_sentinel)
			T_sentinel.position = self.position
			queue_free()
	

func _on_Area2D_area_entered(area):
	if area.is_in_group("balaJugador"):
		
		queue_free()
