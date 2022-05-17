function move() {
	//efficient code i learned from mr Janetka! also tunes with my speed buff variable and plays wierd noise
	//if global.win=false {
		//move()
		var xv=0
		var yv=0

		if keyboard_check(ord("W"))
		    yv-=10 
		if keyboard_check(ord("A"))
		    xv-=10
		if keyboard_check(ord("S"))
		    yv+=10
		if keyboard_check(ord("D"))
		    xv+=10
	
		vspeed=yv*global.speedBUFF
		hspeed=xv*global.speedBUFF
	//}


}
