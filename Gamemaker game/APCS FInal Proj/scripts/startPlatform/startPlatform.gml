//makes a teleport to the map from the player.
function startPlatform(){
	starter = instance_create_depth(oPlayer.x + 200,oPlayer.y, 1, oTeleporter)
	instance_create_depth(starter.x, starter.y +200, 10, oWall)
	randomize()
	wallID = instance_find(oWall, random(instance_number-1))
	instance_create_depth(wallID.x,wallID.y + 200, 1, oTeleporter)
	//test is just for testing
	instance_create_depth(starter.x - 200,oPlayer.y, 1, oTest)
}