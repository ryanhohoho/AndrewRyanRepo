//checking if player is in boss
x1 = oPlayer.bbox_left;
y1 = oPlayer.bbox_top;
x2 = oPlayer.bbox_right;
y2 = oPlayer.bbox_bottom;
if rectangle_in_circle(x1, y1, x2, y2, x, y, 150) = 1 and global.stopStep =  false {
	//disablign all objects for a cutscene
	global.stopStep = true
	instance_deactivate_all(1)
	instance_activate_object(oPlayer)
	instance_activate_object(oGlobal)
	instance_create_depth(x,y, -1, oWhite)
	oPlayer.depth = 1
	audio_play_sound(nCutscene, 1, false)
}
//CUTSCENE TO BOSS STAGE
if global.stopStep = true {
	if alarmExpand > 0 {
		alarmExpand --
		//expand the slime to huge mmmm
		image_xscale += 0.02
		image_yscale += 0.02
	}
	else {
		
		//next alarm is him turning purple
		if alarmStill > 0 {
			alarmStill --
			image_blend += 2
		}
		else {
			//fading to white
			if oWhite.image_alpha < 1 {
				oWhite.image_alpha += 0.008
			}
			else {
				global.stopStep = false
				room_goto(rBOSS)
			}
		}
	}
}
//exit after the cutscene
if global.stopStep = true
	exit
//boss rate of change
if instance_exists(oWall) {
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
}
vx = (newX - x)/50
vy = (newY - y)/50
//FIX UP THE MORB CODE RYAN!
//running away from player code doesn't work, I can't get the trig to work :(

if point_distance(x, y, oPlayer.x, oPlayer.y) < 1500 {
	//pointing away from player and running.
	var v1 = point_direction(x, y, oPlayer.x, oPlayer.y)
	var v2 = point_direction(x, y, oPlayer.x, y)
	desiredAngle = angle_difference(v1, v2)
	image_angle = desiredAngle
	newX = point_distance(x, y, oPlayer.x, oPlayer.y)*cos(desiredAngle)
	newY = point_distance(x, y, oPlayer.x, oPlayer.y)*sin(desiredAngle)
	vx = newX
	vy = newY
}

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
