
function wallSpread(wallX, wallY, currentWall){
	randomize()
	if instance_number(oWall) < 500{
		var distanceX = instance_nearest(currentWall.x, currentWall.y, oWall).x - wallX //checks your location
		var distanceY = instance_nearest(currentWall.x, currentWall.y, oWall).y - wallY // if - means ur to the left/higher
		//random size for the wall
		width = random(5)
		height = random(2)
		//loop for location of the wall not colliding with other wall
		/*
		do { 
			rando = randomPlusMinus()
			wallXnew = wallX + (550)*rando
			rando = randomPlusMinus()
			wallYnew = wallY + random(330)*rando
			count ++
		} 
		until !place_meeting((wallXnew + width*75) and (wallXnew - width*75) , (wallYnew + height*75) and (wallYnew - height*75), oWall)
		show_debug_message(count)
		*/
		//x = 550 y = 330 dimensions of jumpability
		//creating wall using the new variables

		currentWall = instance_create_depth(wallX, wallY, 1, oWall)
		currentWall.image_xscale = width
		currentWall.image_yscale = height
		//new loop maybe using currentwall moving it instead
		//recursion
		wallPlace(currentWall.x, currentWall.y, currentWall)
	}
}