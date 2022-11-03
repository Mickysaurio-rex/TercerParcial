extends Node2D

func _on_Area2D_area_entered(area):
	if area.is_in_group("jugadores"):
		queue_free()
	if area.is_in_group("jefe"):
		queue_free()

func _on_Area2D_body_entered(body):
	if body.is_in_group("pared"):
		queue_free()
	
	if body.is_in_group("puerta"):
		queue_free()
		
	
