extends KinematicBody2D

var activado = true
onready var state_machine = $AnimationTree.get("parameters/playback")

func _physics_process(delta):
	if activado:
		state_machine.travel("espera")

func _on_Area2D_area_entered(area):
	if area.is_in_group("jugadores"):
		queue_free()
