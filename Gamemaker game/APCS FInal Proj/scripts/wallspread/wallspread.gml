function wallSpread(wallY, currentWall, count){
	randomize()
	currentWall = instance_create_depth(currentWall.x + 150*sign(count), wallY, 10, oWall)
	
	if count != 0
		wallSpread(wallY, currentWall, count - sign(count))
}