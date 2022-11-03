extends Node2D

var dentro_sensor_1 = false
var dentro_sensor_2 = false 


func _on_sensor1_area_entered(area):
	if area.is_in_group("jugadores"):
		dentro_sensor_1 = true

func _on_sensor1_area_exited(area):
	if area.is_in_group("jugadores"):
		dentro_sensor_1 = false

func _physics_process(delta):
	if Input.is_action_just_pressed("click_derecho") and dentro_sensor_1 == true:
		$puerta/abajo.play("abajo")

	
	if Input.is_action_just_pressed("click_derecho") and dentro_sensor_2 == true:
		$puerta/arriba.play("arriba")
		
func _on_sensor2_area_entered(area):
	if area.is_in_group("jugadores"):
		dentro_sensor_2 = true


func _on_sensor2_area_exited(area):
	if area.is_in_group("jugadores"):
		dentro_sensor_2 = false
