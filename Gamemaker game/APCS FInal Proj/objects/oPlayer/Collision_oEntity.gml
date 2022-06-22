if hp > 0 and !view_current = 1 {
	hp -= 0.5
	if ! audio_is_playing(nOrb)
					audio_play_sound(nOrb, 4, false)
}