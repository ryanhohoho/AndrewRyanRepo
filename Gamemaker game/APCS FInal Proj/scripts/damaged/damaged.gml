
function damaged(val){
	if val = 50
		oPlayer.downed = -1
	if val > 25 
		val = -val
	
	image_blend = make_color_rgb(val, 0, 0)
	image_alpha -= val*0.05
}