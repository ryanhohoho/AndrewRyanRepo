function move() {
	//efficient code i learned from mr Janetka! also tunes with my speed buff variable and plays wierd noise
	//if global.win=false {
		//move()
		var xv=0
		var yv=0

		if keyboard_check(ord("A"))
		    xv-=10
		if keyboard_check(ord("D")) 
		    xv+=10
		if keyboard_check(vk_space) {
			gravitas = 1
			
		}
			
		//jump code
		if gravitas {
			yv -= magnitude
			if ! position_meeting(x, y+10, oWall)
				magnitude --
			else if gravitas = 1
				gravitas = -1
					//RYAN REMEMBER TO TRASH THIS A BIT AND ADD GRAVITY INSTEAD OF JUST JUMP OK?
		}
		
		vspeed=yv
		hspeed=xv*global.speedBUFF



}
