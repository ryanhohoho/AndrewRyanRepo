
function wallSpread(wallX, wallY, currentWall){
	//NOT THE ONE USED, BUT A BACKUP WITH DIFFERENT CODE FOR A DIAGNOL LINE. BROKEN CURRENTLY
	randomize()
	if instance_number(oWall) < 1000 {
		//random size for the wall
		width = random(4) + 0.3
		height = random(2) + 0.3
		count = 0
		minRangeX = -1
		minRangeY = -1
		//loop for location of the wall not colliding with other wall
		
		do { 
			randomize()
			rando = randomPlusMinus()
			wallXnew = wallX + random(550)*rando
			randomize()
			rando = randomPlusMinus()
			wallYnew = wallY + random(330)*rando
			count ++
			if wallXnew - wallX*sign(wallX) > 250*sign(wallX)
				minRangeX = 1
			if wallYnew - wallY*sign(wallY) > 250*sign(wallY)
				minRangeY = 1
		} 
		until (!position_meeting(wallXnew, wallYnew, oWall) or count > 10000) and minRangeX = 1 and minRangeY = 1
		
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
		wallSpread(wallXnew, wallYnew, currentWall)
	}
}