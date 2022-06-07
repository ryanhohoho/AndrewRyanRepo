//spawn enemy everytime there's less than 100 on screen, can resize
enemyCount = instance_number(oEnemy)
	if enemyCount <= 100 {
		instance_create_depth(x,y, 0, oEnemyInitiator)
	}