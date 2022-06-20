//SHRINKING!!!
if not position_meeting(x, y + 0.5, oWall) {
	if sizeX > .10000001 {
		sizeX -= 0.1000000001
		sizeY -= 0.1000000001
		image_xscale = sign(image_xscale)*sizeX
		image_yscale = sign(image_yscale)*sizeY
	}
}