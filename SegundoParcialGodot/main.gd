extends Node2D

var enemigos_vivos = 3

var musica_fondo = preload("res://Recursos/musica/Vince DiCola - War (Rocky IV Enhanced Film Version).mp3")

# Called when the node enters the scene tree for the first time.
func _ready():
	Singleton.espiritu_golpista = 100
	MusicaFondo.musica_fondo(musica_fondo)
