//gravity pulls
if !place_meeting(x,y+1,oWall) {
	vy+=g
	if vy>20
	  vy=20
}
if !place_meeting(x,y+vy,oWall)
  y+=vy
else {
	while(!place_meeting(x,y+sign(vy), oWall))
	  y+=sign(vy)
	vy=0
}
//seeing if moving left or right
if image_index = 1 {
	decision = random(4)
	if decision < 2 {
		vx = -2
		image_xscale = 1
	}
	else {
		vx = 2
		image_xscale = -1
	}
}
y += vy
x += vx