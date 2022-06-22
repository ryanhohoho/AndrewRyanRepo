//detect if it is stomped on
drY = instance_nearest(x,y, oEnemy).y - y
if drY > 0 {
	instance_nearest(x,y, oEnemy).dead = 1
	instance_nearest(x,y, oEnemy).mask_index = -1
	vy=jump
}

//getting hit if not already hit
if instance_nearest(x,y, oEnemy).dead != 1 {
	audio_play_sound(nHit, 1, false)
	downed = 1
}
dirX = x - instance_nearest(x,y, oEnemy).x
//push away 
vx = 20*sign(dirX)
if !place_meeting(x + vx, y, oWall)
	x += vx

