if other.sprite_index = sBoss {
	maxSize += 0.3
	hp ++
	instance_destroy(other)
}
else if other.sprite_index = sOrb {
	hp --
	instance_destroy(other)
}
else if other.sprite_index = sBlazeExplode {
	hp -= 2
	other.mask_index = -1
}
else if other.sprite_index = sLaser {
	hp -= 4
	other.mask_index = -1
}