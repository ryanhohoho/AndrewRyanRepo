baseX = x
baseY = y
beenHit = -1
selected = oEntity.selection
if selected > 3  {
	//laser attack
	sprite_index = sLaserPrep
	image_alpha = 0.4
	image_xscale = 2
	image_yscale = 2
	randomize()
	image_angle = random(360)
	alarmBeam = room_speed*3
}
else if selected > 2 {
	//explosion attack
	sprite_index = sBlaze
	image_xscale = .9
	image_yscale = .9
	randomize()
	newX = oPlayer.x + (random(550) + 100)*randomPlusMinus()
	newY = oPlayer.y + random(220)*randomPlusMinus()
	image_angle = random(360)
	alarmExplode = room_speed*2
}
else if selected > 1 {
	//egg attack
	audio_stop_sound(nBossBullet)
	sprite_index = sBoss
	image_xscale = 0.5
	image_yscale = 0.5
	newX = oPlayer.x
	newY = oPlayer.y - 300
	image_angle = point_direction(x, y, oPlayer.x, oPlayer.y)
}
else if selected > 0 {
	//ORB ATTACK
	audio_stop_sound(nBossBullet)
	sprite_index = sOrb
	image_xscale = 0.5
	image_yscale = 0.5
	newX = oPlayer.x
	newY = oPlayer.y
	image_angle = point_direction(x, y, oPlayer.x, oPlayer.y)
}