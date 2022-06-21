if ! other.beenHit and hp > 0 {
	if other.sprite_index = sBoss {
		maxSize += 0.3
		hp ++
		global.score += 3000
		instance_destroy(other)
	}
	else if other.sprite_index = sOrb {
		hp --
		instance_destroy(other)
	}
	else if other.sprite_index = sBlazeExplode {
		hp -= 2
		other.beenHit = 1
	}
	else if other.sprite_index = sLaser {
		hp -= 4
		other.beenHit = 1
	}
}