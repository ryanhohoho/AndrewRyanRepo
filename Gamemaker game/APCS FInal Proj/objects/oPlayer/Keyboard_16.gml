//SHRINKING!!!
if sizeX > 0 {
	sizeX -= 0.1
	sizeY -= 0.1
	image_xscale = sign(image_xscale)*sizeX
	image_yscale = sign(image_yscale)*sizeY
}