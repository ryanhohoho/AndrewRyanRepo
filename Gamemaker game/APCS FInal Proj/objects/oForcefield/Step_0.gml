//stay one image and on player
image_index = 0
x = oPlayer.x
y = oPlayer.y

if spawned {
	spawned = -1
	image_xscale = 0.001
	image_yscale = 0.001
	image_alpha = 0.6
}
//growing and shrinking
if ! capped {
	image_xscale += 1
	image_yscale += 1
	if image_xscale >= 5*oPlayer.sizeX
		capped = 1
}
else {
	image_xscale -= 0.5
	image_yscale -= 0.5
}
//erasing itself
if image_xscale <= 0 {
	instance_destroy()
}