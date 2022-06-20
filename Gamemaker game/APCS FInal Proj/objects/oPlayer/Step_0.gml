if global.stopStep = true  or hp <= 0 {
	if !instance_exists(oHome) and hp <= 0
		instance_create_depth(x, y + 200, -100, oHome)
	exit
}
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


//forcefield regeneration
if alarmFF > 0 and forceFields < 3 {
	alarmFF --
}
else if alarmFF <= 0 {
	forceFields ++
	alarmFF = room_speed*10
}

// damaged loop

if downed >=0 {
	for(var d = 0; d <=500; d++)
		damaged(d)
}
//death situations

if y > deathY + 100 {
	hp = 0
}

//checking if touching teleporter for the draw text
if place_meeting(x, y, oTeleporter) 
	enterTP = 1
else
	enterTP = -1