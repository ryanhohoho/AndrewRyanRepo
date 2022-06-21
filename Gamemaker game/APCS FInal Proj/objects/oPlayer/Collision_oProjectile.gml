//different bullets
if ! other.beenHit and hp > 0 and !view_current = view_camera[1] {
	if other.sprite_index = sBoss {
		//eggs give mass and hp
		maxSize += 0.3
		hp ++
		global.score += 3000
		instance_destroy(other)
	}
	else if other.sprite_index = sOrb {
		//just a projectile that takes hp
		hp --
		instance_destroy(other)
	}
	else if other.sprite_index = sBlazeExplode {
		//big damage
		hp -= 2
		other.beenHit = 1
	}
	else if other.sprite_index = sLaser {
		//huge damage
		hp -= 4
		other.beenHit = 1
	}
}