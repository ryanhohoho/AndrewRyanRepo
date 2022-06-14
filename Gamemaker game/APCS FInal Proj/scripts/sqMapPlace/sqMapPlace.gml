// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sqMapPlace(color, alpha, count, object, id){
	//mMapPlace(color,  alpha,  var name,  obj,  id name)
	//draws a circle in a pos in the minimap
	draw_set_color(color)
	draw_set_alpha(alpha)

	//var argument2; draws the squares according to their sizes
	count = instance_number(object)
	for(k=0; k<count; k=k+1) {
		id = instance_find(object,k)
		var wherex = xp + id.x * (xscale)
		var wherey = yp + id.y * (yscale)
		sizeX = id.image_xscale
		sizeY = id.image_yscale
		draw_rectangle(wherex-sizeX,wherey-sizeY,wherex+sizeX,wherey+sizeY,false)
		//regenerates if the map is too big
		if (wherex < 0 or wherex > 1366) or (wherey < 0 or wherey > 768)
			room_restart()
	}


}
