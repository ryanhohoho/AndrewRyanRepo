//initiates the wall building sequence
currentWall = instance_create_depth(5000, 5080, 1, oWall)
wallSpread(5000, 5000, currentWall)
instance_create_depth(5000, 5000, 0, oPlayer)