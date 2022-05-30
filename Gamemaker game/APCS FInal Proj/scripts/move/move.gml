function move(xv, yv) {
	//efficient code i learned from mr Janetka! also tunes with my speed buff variable and plays wierd noise
	//if global.win=false {
		//move()

		if keyboard_check(ord("A"))
		    xv-=10
		if keyboard_check(ord("D")) 
		    xv+=10
		if keyboard_check(vk_space)  {
			gravitas = 1
			yv = 0
			
		}
			
		//jump code
		if gravitas {
			yv -= magnitude 
		}
					//RYAN REMEMBER TO TRASH THIS A BIT AND ADD GRAVITY INSTEAD OF JUST JUMP OK?
		
		
		vspeed=yv
		hspeed=xv*global.speedBUFF
		
		if hspeed >= 0
			image_xscale = 1
		else
			image_xscale = -1


}
