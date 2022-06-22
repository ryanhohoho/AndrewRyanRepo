if global.stopStep = false {	
	//ORB ATTACK
	if selected > 3  {
		//laser attack
		//make the boss morb in place 
		oEntity.x = baseX
		oEntity.y = baseY + 50
		oEntity.image_xscale = - image_xscale
		//laser materializing
		if alarmBeam > 0 {
			if ! audio_is_playing(nLaserPrep)
				audio_play_sound(nLaserPrep, 4, false)
			alarmBeam --
		}
		else {
			if ! audio_is_playing(nLaser) {
				audio_stop_sound(nLaserPrep)
				audio_play_sound(nLaser, 3, false)
			}
			sprite_index = sLaser
		}
	
	}
	else if selected > 2 {
		//explosion attack
		x = newX
		y = newY
		if alarmExplode <= 0 {
			audio_play_sound(nBlazeExplode2, 2, false)
			sprite_index = sBlazeExplode
			image_xscale = 2
			image_yscale = 2
		}
		else
			alarmExplode --
	}
	else if selected > 1 {
		//egg attack
		newY += 10
		vx = (newX - baseX)/100
		vy = (newY - 3000)/100
	
		x += vx
		y += vy
	}
	else if selected > 0 {
		//orb attack
		vx = (newX - baseX)/50
		vy = (newY - baseY)/50
	
		x += vx
		y += vy
	}
	
	//destroy code
	if point_distance(x, y, oPlayer.x, oPlayer.y) > 15000
		instance_destroy()
	if sprite_index = sLaser and image_index > 39 {
		audio_stop_sound(nLaser)
		instance_destroy()
	}
	if sprite_index = sBlazeExplode and image_index > 27
		instance_destroy()
}
else
	instance_destroy()