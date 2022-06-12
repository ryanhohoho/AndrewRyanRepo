//initiates the wall building sequence
currentWall = instance_create_depth(10000, 10080, 1, oWall)
wallPlace(10000, 10000, currentWall)
instance_create_depth(10000, 10000, 0, oPlayer)