
function damaged(val){
	if val = 500 {
		oPlayer.downed = -1
		health--
	}
	if val > 250
		val = -val
	
	image_blend = make_color_rgb(val, 0, 0)
	image_alpha -= val*0.05
}