//spawnBullet(type of bullet, firerate)
function spawnBullet(type, rate){
if selection > type {
		//orb attack
		if alarm1 > 0
			alarm1 --
		else if count > 0 {
			//fires projectile and resets the intervals
			instance_create_depth(x, y -50, -10, oProjectile)
			count -= 1
			alarm1 = room_speed*rate
		}
		if count <= 0 {
			//resets the attack timer
			alarmAttack = room_speed*1
			toggleBullet = -1
		}
				
	}
}
/*
if selection > 1 {
		//orb attack
		if alarmOrb > 0
			alarmOrb --
		else if counter > 0 {
			//fires projectile and resets the intervals
			instance_create_depth(x, y, -10, eProjectile)
			counter --
			alarmOrb = room_speed*.2
		}
		else {
			//resets the attack timer
			randomize()
			selection = random(2)
			alarmAttack = room_speed*5
		}
				
	}