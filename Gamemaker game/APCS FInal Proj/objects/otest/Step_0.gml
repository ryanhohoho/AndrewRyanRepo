//checking if player is in boss
x1 = oPlayer.bbox_left;
y1 = oPlayer.bbox_top;
x2 = oPlayer.bbox_right;
y2 = oPlayer.bbox_bottom;
if rectangle_in_circle(x1, y1, x2, y2, x, y, 150) = 1 and global.stopStep =  false {
	//disablign all objects for a cutscene
	global.stopStep = true
	instance_deactivate_all(1)
	instance_activate_object(oPlayer)
	instance_activate_object(oGlobal)
	instance_create_depth(x,y, -1, oWhite)
	oPlayer.depth = 1
	audio_play_sound(nCutscene, 1, false)
}
//CUTSCENE TO BOSS STAGE
if global.stopStep = true {
	if alarmExpand > 0 {
		alarmExpand --
		//expand the slime to huge mmmm
		image_xscale += 0.02
		image_yscale += 0.02
	}
	else {
		
		//next alarm is him turning purple
		if alarmStill > 0 {
			alarmStill --
			image_blend += 2
		}
		else {
			//fading to white
			if oWhite.image_alpha < 1 {
				oWhite.image_alpha += 0.008
			}
			else {
				global.stopStep = false
				room_goto(rBOSS)
			}
		}
	}
}