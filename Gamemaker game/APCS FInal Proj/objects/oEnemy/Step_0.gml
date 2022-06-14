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
decision = real(random(4))
if image_index <= 0.07 {
	if decision >= 1.5 {
		vx = -.5
		image_xscale = -size
	}
	else {
		vx = .5
		image_xscale = size
	}
}
//if near wall jump up the wall
if place_meeting(x + sign(vx), y, oWall) {
	vy = -10
}
y += vy
x += vx
//death code
if dead > 0 
	image_alpha -= 0.08
// deletion code
if y > oPlayer.deathY
	instance_destroy(self)
if image_alpha <= 0 
	instance_destroy(self)
if x - oPlayer.x > 2500 and x - oPlayer.x < -2500
	instance_destroy(self)
if y - oPlayer.y > 2500 and y - oPlayer.y < -2500
	instance_destroy(self)