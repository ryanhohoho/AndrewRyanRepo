//ORB ATTACK
if oEntity.selection > 1 {
	newX = oPlayer.x
	newY = oPlayer.y
	//accelerate towards that position
	image_angle = point_direction(x, y, oPlayer.x, oPlayer.y)
	vx = (newX - baseX)/50
	vy = (newY - baseY)/50

	
	x += vx
	y += vy
}