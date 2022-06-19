
function wallSpread(wallY, currentWall, count){
	randomize()
	
	//wall to the right
	dir = (random(3) - 2)*10
	if wallY + dir > wallY + 1000
		dir = -10
	if wallY + dir < wallY - 1000
		dir = 10
	
	currentWall = instance_create_depth(currentWall.x + 150*sign(count), wallY + dir, 10, oWall)
	
	if count != 0
		wallSpread(wallY + dir, currentWall, count - sign(count))
}