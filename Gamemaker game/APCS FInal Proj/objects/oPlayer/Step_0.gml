//gravity pulls
if !place_meeting(x,y+1,oWall) {
	vy+=g
	if vy>20
	  vy=20
}

move()

//sliding slower on wall
if place_meeting(x+sign(vx), y, oWall) and vy > 0
	vy = 5

// damaged loop

if downed >=0 {
	for(var d = 0; d <=500; d++)
		damaged(d)
}

//death situations

if y > deathY + 100 {
	health = 0
}

//checking if touching teleporter for the draw text
if place_meeting(x, y, oTeleporter) 
	enterTP = 1

