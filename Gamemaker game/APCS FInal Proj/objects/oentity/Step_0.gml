if global.stopStep = false {
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
	if y + vy > oPlayer.y + 250 or y < oPlayer.y - 250
		vy = (oPlayer.y - y)/240
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
		if toggleBullet = -1 {
			//destroying previous projectiles before firing more
			randomize()
			selection = random(5)
			count = 5
			toggleBullet = 1
		}
		//spawnBullet(type of bullet, firerate, amount of bullets)
		spawnBullet(3, 0)
		spawnBullet(2, .5)
		spawnBullet(1, .2)
		spawnBullet(0, .5)
	}
}
//death code
if dead = 1 {
	global.stopStep = true
	view_visible[0] = 0
	view_visible[1] = 1
	dead = -1
}
if global.stopStep = true {
	if image_yscale > 0 {
		image_yscale -= 0.01
		global.score += 5000
	}
	else {
		instance_create_depth(x, y, -9, oENDSCREEN)
		global.win = 1
		instance_destroy()
	}
}