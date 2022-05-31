// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function gravityTick(){
	
	
	//limit gravity is 30
	if yv <= 30 {
		if place_meeting(x, y + 1, oWall) {
			yv = 0
			gravitas = -1
			
		}
		else {
			yv += 1
		
		}
	}
}