if global.stopStep = true  or hp <= 0 {
	global.button = 1
	exit
}
if forceFields > 0 {
	instance_create_depth(x,y,0,oForcefield)
	forceFields --
	audio_play_sound(nGrow, 1, false)
}