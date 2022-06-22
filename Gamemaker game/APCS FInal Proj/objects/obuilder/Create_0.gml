rL = 0
view_visible[0] = 1
view_visible[1] = 0
global.button = -1
if room = rMASTER {
	//initiates the wall building sequence
	currentWall = instance_create_depth(90000, 1100, 10, oWall)
	wallPlace(50000, 25000, currentWall)
	instance_create_depth(90000, 950, 0, oPlayer)
	instance_create_depth(50100, 50100, 0, oOrb)
	instance_create_depth(0,0, 0, oBoss)
	instance_create_depth(0,0, 0, oBoss)
	startPlatform()
	audio_play_sound(nMasterTheme, -9, true)
}
else if room = rBOSS {
	
	currentWall = instance_create_depth(7500, 2900, 10, oWall)
	for (var i = 0; i <= 1; i++) {
		wallSpread( 2900, currentWall, 48 + rL)
		rL = -96
	}
	instance_create_depth(7500, 2700, 0, oPlayer)
	instance_create_depth(oPlayer.x + 600, oPlayer.y - 200, 1, oEntity)
	audio_play_sound(nBossTheme, -9, true)
}