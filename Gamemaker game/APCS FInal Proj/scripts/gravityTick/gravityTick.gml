// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function gravityTick(){
	if !place_meeting(x, y+1, oWall) {
		yv += 1
	}
	else {
		yv = 0
		gravitas = -1
	}
}