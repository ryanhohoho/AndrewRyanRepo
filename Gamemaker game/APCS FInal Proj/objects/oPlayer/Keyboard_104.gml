if global.stopStep = true  or hp <= 0 {
	global.button = 1
	exit
}
//THE EMBIGGENING OF THE ELDEN LORD 
//maybe 12.8 pixels
if not place_meeting(x + 0.5, y, oWall) and not place_meeting(x - 0.5, y, oWall) {
	if sizeX < maxSize {
		sizeX += 0.1
		sizeY += 0.1
		image_xscale = sign(image_xscale)*sizeX
		image_yscale = sign(image_yscale)*sizeY
		y -= 5
	}
}