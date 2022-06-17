if room = rMASTER {
	//initiates the wall building sequence
	currentWall = instance_create_depth(50000, 1100, 10, oWall)
	wallPlace(50000, 25000, currentWall)
	instance_create_depth(50000, 1000, 0, oPlayer)
	instance_create_depth(50100, 50100, 0, oOrb)
	startPlatform()
	instance_create_depth(0,0, 0, oBoss)
	instance_create_depth(0,0, 0, oBoss)
}
else if room = rBOSS {
	instance_create_depth(2500, 1300, 0, oPlayer)
}