tpID = instance_number(oTeleporter)
//determining index of brother
if tpID % 2 = 1
	brother = tpID + 1
else
	brother = tpID - 1
teleport = -1
//determining colour of portals
balls = round(tpID/2 + 0.49)
image_blend = make_color_hsv(255/balls, 255, 255 )
//creating safety net under
instance_create_depth(x, y + 200, 0, oWall)
