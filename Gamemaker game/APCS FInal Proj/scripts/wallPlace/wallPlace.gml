
function wallPlace(wallX, wallY, currentWall){
	randomize()
	if instance_number(oWall) < 1000 {
		var distanceX = instance_nearest(currentWall.x, currentWall.y, oWall).x - wallX //checks your location
		var distanceY = instance_nearest(currentWall.x, currentWall.y, oWall).y - wallY // if - means ur to the left/higher
		//random size for the wall
		width = random(4) + 0.3
		height = random(2) + 0.3
		count = 0
		//loop for location of the wall not colliding with other wall
		
		do { 
			rando = randomPlusMinus()
			wallXnew = wallX + (550)*rando
			rando = randomPlusMinus()
			wallYnew = wallY + random(330)*rando
			count ++
		} 
		until !position_meeting(wallXnew, wallYnew, oWall) or count > 10000
		
		if count >= 9999 {
			wallXnew = random(10000)
			wallYnew = random(10000)
		}
		
		
		//x = 550 y = 330 dimensions of jumpability
		//creating wall using the new variables
		currentWall = instance_create_depth(wallXnew, wallYnew, 1, oWall)
		currentWall.image_xscale = width
		currentWall.image_yscale = height
		
		//recursion
		wallPlace(wallXnew, wallYnew, currentWall)
	}
}
//bad loop maybe using currentwall moving it instead
		/*do { 
			randomize()
			rando = randomPlusMinus()
			currentWall.x = wallX + random(1100)*rando
			rando = randomPlusMinus()
			currentWall.y = wallY + random(660)*rando
			count++
		}
		until !place_meeting(currentWall,currentWall,oWall)
		*/