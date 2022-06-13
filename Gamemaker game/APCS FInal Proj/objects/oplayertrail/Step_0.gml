// ORB FADE IN

	image_angle = point_direction(x, y, oPlayer.x, oPlayer.y)
	//ORB FOLLOW PLAYER CODE
	if alarmy > 0 
		alarmy -= 1
	if alarmy <= 0 {
		image_angle = point_direction(x, y, oPlayer.x, oPlayer.y)
		newX = oPlayer.x
		newY = oPlayer.y
		//accelerate towards that position
		alarmy = .01
		
	}
	vx = (newX - x)/5
	vy = (newY - y)/5
	
	
	x += vx
	y += vy
	// fade to 1 over 5 seconds, make loud noise after cooldown, little expand animation,
	//image index change, and point direction towrads player.
	//change direction to point towards player 
	//make periodic dashes that will speed towards the player, make it point towards player's previous location
