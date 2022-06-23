
if !global.stopStep and (oPlayer.hp > 0  and !global.win) {
	
	//drawing gui for forcefield and hp
	if instance_exists(oPlayer) {
		draw_sprite(sHealthbar, 0, -140, -310)
		//forcefield
		draw_set_alpha(1)
		for(var f = oPlayer.forceFields; f > 0; f--) {
			draw_circle_color(f*65, 160, 30, c_green, c_aqua, false)
		}
		for(var h = 1; h < oPlayer.hp + 1; h++) {
			//if you're big enough to kill the boss
			if oPlayer.sizeX > 10 {
				draw_set_color(c_yellow)
				draw_rectangle(36, 26, 80 + h*80.3, 89, false)
			}
			else if h <= 10 {
			//determining extra health or regular health
				draw_set_color(c_red)
				draw_rectangle(36, 26, 80 + h*80.3, 89, false)
			}
			else {
				draw_set_color(c_green)
				draw_rectangle(36, 26, 80 + h*20, 89, false)
			}
			
		}
	}
	//scores
	draw_text_color(40, 200, "SCORE: " + string(global.score), c_yellow, c_white, c_yellow, c_white, 1)
	draw_text_color(40, 220, "HGHSCORE: " + string(global.highscore), c_yellow, c_aqua, c_yellow, c_aqua, 1)
}
else {
	draw_text_ext_transformed_color(500, 50, "SCORE: "+ string(global.score), -100, 120, 5.001, 5.001, 0, c_aqua, c_purple, c_aqua, c_purple, 1)
	//you died
	if oPlayer.hp <= 0 and !global.win {
		draw_set_alpha(opacity)
		draw_sprite(sDeath, 0, 0, 150)
		draw_set_alpha(1)
	
	}
}