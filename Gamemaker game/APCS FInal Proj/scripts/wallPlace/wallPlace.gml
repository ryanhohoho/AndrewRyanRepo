// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function wallPlace(wallX, wallY, width, height, currentWall){
	var distanceX = instance_nearest(currentWall.x, currentWall.y, oWall).x - wallX //checks your location
	var distanceY = instance_nearest(currentWall.x, currentWall.y, oWall).y - wallY // if - means ur to the left/higher
	//random location within the circle of range loop
	rando = plusMinus()
	width = random(5)*rando
	rando = plusMinus()
	height = random(2)*rando
	//loop for size of the wall not colliding with other wall
	rando = plusMinus()
	wallXnew = wallX + (550)*rando
	rando = plusMinus()
	wallYnew = wallY + random(330)*rando
	
	x = 550 y = 330
	//creating wall using the new variables
	currentWall = instance_create_depth(wallXnew, wallYnew, 1, oWall)
	currentWall.image_xscale = width
	currentWall.image_yscale = height
	//recursion
	wallPlace(wallXnew, wallYnew, width, height, currentWall)
	/*NOTE FOR RYAN STILL NOT OCMPLETE, NO REQUIREMENTS YET, REMEMBER TO MAKE A 
	THING WHERE IT DETECTS NEW X AND NEW Y ARE WITHIN RANGE, ALSO NOT TOUCHING CURRENTWALL
	ALL TAKING INTO ACCOUNT THE WIDTH AND HEIGHT NOW, SO THAT THEY DONT TOUCH. 
	*/
}