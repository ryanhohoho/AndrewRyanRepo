	//toggle minimap
	if toggle {
	//mMapPlace(color,  alpha,  var name,  obj,  id name,  size)
	//minimap placement script to place it
	sqMapPlace(c_grey,1,wallCount,oWall,wallId)
	// proximity enemyCount
	proxMapPlace(c_red,1,enemyCount,oEnemy,enemyId,3)
	mMapPlace(c_aqua,1,teleCount,oTeleporter,teleId,3)
	mMapPlace(c_purple,1, orbCount,oOrb,orbId,3)
	proxMapPlace(c_fuchsia, 1, bossCount, oBoss, bossId, 4)
	mMapPlace(c_yellow,1,playerCount,oPlayer,playerId,3)
	draw_set_alpha(1)
	}