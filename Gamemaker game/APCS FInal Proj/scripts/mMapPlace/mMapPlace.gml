
function mMapPlace(color, alpha, count, object, id, size) {
	//mMapPlace(color,  alpha,  var name,  obj,  id name)
	//draws a circle in a pos in the minimap
	draw_set_color(color)
	draw_set_alpha(alpha)

	//var argument2;
	count = instance_number(object)
	for(k=0; k<count; k=k+1) {
		id = instance_find(object,k)
		var wherex = xp + id.x * (xscale)
		var wherey = yp + id.y * (yscale)
		//teleporter differnet colors 
		if object = oTeleporter
			draw_set_color(c_aqua + id.balls*90)
		draw_circle(wherex,wherey,size,false)
	}

}
//255/id.balls