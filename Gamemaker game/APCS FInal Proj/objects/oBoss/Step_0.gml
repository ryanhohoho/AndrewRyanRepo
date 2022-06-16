//boss rate of change

if alarmy > 0 
	alarmy -= 1
if alarmy <= 0 {
	randomize()
	wall = instance_find(oWall, random(instance_number(oWall) - 1))
	newX = wall.x
	newY = wall.y
	image_angle = point_direction(x, y, newX, newY)
	//accelerate towards that position
	alarmy = room_speed*4
		
}
vx = (newX - x)/50
vy = (newY - y)/50
//FIX UP THE MORB CODE RYAN!
//running away from player code doesn't work, I can't get the trig to work :(
/*
if point_distance(x, y, oPlayer.x, oPlayer.y) < 1500 {
	//pointing away from player
	var v1 = point_direction(x, y, oPlayer.x, oPlayer.y)
	var v2 = point_direction(x, y, oPlayer.x, y)
	desiredAngle = angle_difference(v1, v2)
	show_debug_message(desiredAngle)
	image_angle = desiredAngle
	newX = x - point_distance(x, y, oPlayer.x, oPlayer.y)cos(desiredAngle*sign(desiredAngle))
	newY = y - point_distance(x, y, oPlayer.x, oPlayer.y)sin(desiredAngle*sign(desiredAngle))
	vx = (newX - x)/50
	vy = (newY - y)/50
}
*/
//speed limit
limit = 10
if vx > limit or vx < -limit
	vx = limit*sign(vx)
if vy > limit or vy < -limit
	vy = limit*sign(vy)
x += vx
y += vy
// fade to 1 over 5 seconds, make loud noise after cooldown, little expand animation,
//image index change, and point direction towrads player.
//change direction to point towards player 
//make periodic dashes that will speed towards the player, make it point towards player's previous location
