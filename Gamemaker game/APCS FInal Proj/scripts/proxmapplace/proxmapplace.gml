
function proxMapPlace(color, alpha, count, object, id, size) {
	//mMapPlace(color,  alpha,  var name,  obj,  id name)
	//draws a circle in a pos in the minimap
	draw_set_color(color)
	draw_set_alpha(1)
	//var argument2;
	count = instance_number(object)
	for(k=0; k<count; k=k+1) {
		id = instance_find(object,k)
		var wherex = xp + id.x * (xscale)
		var wherey = yp + id.y * (yscale)
		//finding if within proximity
		if position_meeting(id.x, id.y, oProx)
			draw_circle(wherex,wherey,size,false)
		
		//if id.x - oPlayer.x < 2500 and id.x - oPlayer.x > -2500 {
		//	if id.y - oPlayer.y < 2500 and id.y - oPlayer.y > -2500 {
			//	draw_circle(wherex,wherey,size,false)
		//	}
		//}
	}


}
