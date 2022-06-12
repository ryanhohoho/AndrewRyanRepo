tpID = instance_number(oTeleporter)
//determining index of brother
if tpID % 2 = 1
	brother = tpID + 1
else
	brother = tpID - 1
teleport = -1
//determining colour of portals

//creating safety net under
instance_create_depth(x, y + 80, 0, oWall)
