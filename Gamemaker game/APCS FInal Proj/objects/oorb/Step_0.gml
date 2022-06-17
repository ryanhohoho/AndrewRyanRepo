if global.stopStep = true
	exit
// ORB FADE IN
if !wake and image_alpha < 1{
	image_alpha += 0.0023
}
else {
	image_angle = point_direction(x, y, oPlayer.x, oPlayer.y)
	//ORB FOLLOW PLAYER CODE
	if alarmy > 0 
		alarmy -= 1
	if alarmy <= 0 {
		image_angle = point_direction(x, y, oPlayer.x, oPlayer.y)
		newX = oPlayer.x
		newY = oPlayer.y
		//accelerate towards that position
		alarmy = room_speed*4
		
	}
	vx = (newX - x)/50
	vy = (newY - y)/50
	//FIX UP THE MORB CODE RYAN!
	if alarmMorb > 0 
		alarmMorb -= 1
	if alarmMorb <= 0 {
		image_angle = point_direction(x, y, oPlayer.x, oPlayer.y)
		vx = (newX - x)/5
		vy = (newY - y)/5
		alarmMorb = room_speed*(random(6)+5)
	}
	
	x += vx
	y += vy
	// fade to 1 over 5 seconds, make loud noise after cooldown, little expand animation,
	//image index change, and point direction towrads player.
	//change direction to point towards player 
	//make periodic dashes that will speed towards the player, make it point towards player's previous location
}