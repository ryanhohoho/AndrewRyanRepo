
//movement code
if alarmMove > 0
	alarmMove --
else {
	randomize()
	vx = (random(2) + 1)*randomPlusMinus()
	randomize()
	vy = (random(2) + 1)*randomPlusMinus()
	alarmMove = room_speed*random(2) + room_speed*2
}
if point_distance(x, y, oPlayer.x, oPlayer.y) > 1000
	vx = (oPlayer.x - x)/140
if y > oPlayer.y + 350 or y < oPlayer.y - 350
	vy = (random(2) + 1)*randomPlusMinus() - sign(vy)
x += vx
//flipping angle
if vx <= 0
	image_xscale = -3.001
if vx > 0
	image_xscale = 3.001
y += vy

if alarmAttack > 0
	alarmAttack --
else {
	selection = random(2)
	if selection > 1 {
		//orb attack
		if alarmOrb > 0
			alarmOrb --
		else if count > 0 {
			//fires projectile and resets the intervals
			instance_create_depth(x, y, -10, eProjectile)
			count --
			alarmOrb = room_speed*1
		}
		else {
			//resets the attack timer
			selection = random(2)
			alarmAttack = 0
		}
				
	}
}
