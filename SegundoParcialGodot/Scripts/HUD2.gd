extends Node2D

func _physics_process(delta):
	$ProgressBar.value = Singleton2.espiritu_golpista2
	
	if Singleton2.espiritu_golpista2 < 10:
		get_tree().change_scene("res://Escenas/PantallaMuerte.tscn")
		Singleton2.espiritu_golpista2 = 100

