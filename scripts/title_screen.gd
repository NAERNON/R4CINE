extends Node2D

var character_animation_delay = 1.5
var start_character_delay = false

func _ready():
	$light_back.play()
	$light_front.play()

func _process(_delta):
	if start_character_delay:
		character_animation_delay -= _delta
		if character_animation_delay < 0:
			start_character_delay = false
			$character.play()

func _on_play_button_pressed():
	$light_back.stop()
	$light_front.stop()
	$PlayButton.disabled = true
	start_character_delay = true
