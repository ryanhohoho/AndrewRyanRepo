if oPlayer.hp <= 0 {
	draw_set_alpha(opacity)
	draw_sprite(sDeath, 0, 0, 150)
	
}
//drawing gui for forcefield and hp
if instance_exists(oPlayer) {
	draw_sprite(sHealthbar, 0, -140, -310)
	//forcefield
	draw_set_alpha(1)
	for(var f = oPlayer.forceFields; f > 0; f--) {
		draw_circle_color(f*65, 160, 30, c_green, c_aqua, false)
	}
	for(var h = oPlayer.hp; h > 0; h--) {
		//if you're big enough to kill the boss
		if oPlayer.sizeX > 10 {
			draw_set_color(c_yellow)
		}
		else if h <= 10 {
		//determining extra health or regular health
			draw_set_color(c_red)
		}
		else
			draw_set_color(c_green)
			
		draw_rectangle(36, 26, 80 + h*20, 89, false)
	}
}
//scores
draw_text_color(40, 200, "SCORE: " + string(global.score), c_yellow, c_white, c_yellow, c_white, 1)
draw_text_color(40, 220, "HGHSCORE: " + string(global.highscore), c_yellow, c_aqua, c_yellow, c_aqua, 1)

