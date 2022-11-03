extends Node2D

func _physics_process(delta):
	$ProgressBar.value = Singleton.espiritu_golpista
	
	if Singleton.espiritu_golpista < 10:
		get_tree().change_scene("res://Escenas/PantallaMuerte.tscn")
