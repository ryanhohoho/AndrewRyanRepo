//initiates the wall building sequence
currentWall = instance_create_depth(50000, 1100, 10, oWall)
wallPlace(50000, 25000, currentWall)
instance_create_depth(50000, 1000, 0, oPlayer)
startPlatform()