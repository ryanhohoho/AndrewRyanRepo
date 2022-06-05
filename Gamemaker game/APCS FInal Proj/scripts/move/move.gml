function move() {
	//jump
	if keyboard_check_pressed(vk_space) and (place_meeting(x,y+1,oWall) or place_meeting(x + sign(vx), y, oWall)) {
		vy=jump
	}


	//left right
	vx=0

	if keyboard_check(ord("A")) {
		vx-=xmax
		image_xscale = 1
	}
	if keyboard_check(ord("D"))  {
		vx+=xmax
		image_xscale = -1
	}


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
