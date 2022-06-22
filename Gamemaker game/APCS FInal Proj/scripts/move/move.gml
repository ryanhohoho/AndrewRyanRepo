function move() {
	//jump
	if keyboard_check(vk_space) and (place_meeting(x,y+1,oWall) or place_meeting(x + sign(vx), y, oWall)) {
		vy=jump*sizeX
		audio_sound_set_track_position(nJump, 0.2)
		audio_play_sound(nJump, 1, false)
	}
	

	//left right
	vx=0

	if keyboard_check(ord("A")) {
		vx-=xmax*sizeX
		image_xscale = 1.001*sizeX
	}
	if keyboard_check(ord("D"))  {
		vx+=xmax*sizeX
		image_xscale = -1.001*sizeX
	}
	//checking max speed limit
	if vx > 20
		vx = 20
	if vx < -20
		vx = -20
	if vy < -40
		vy = -40

	if !place_meeting(x+vx,y,oWall)
	  x+=vx
	else {
		while( !place_meeting(x+sign(vx), y, oWall) )
		  x+=sign(vx)
	}

	//up down
	if !place_meeting(x,y+vy,oWall)
	  y+=vy
	else {
		while(!place_meeting(x,y+sign(vy), oWall))
		  y+=sign(vy)
		vy=0
}


}
