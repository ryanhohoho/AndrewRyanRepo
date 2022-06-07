//move around until not hitting wall
do {
	randomize()
	rando = randomPlusMinus()
	x = oPlayer.x + (random(2500) + 2500)*rando
	randomize()
	rando = randomPlusMinus()
	y = oPlayer.y + (random(2500) + 2500)*rando
	
}
until ! place_meeting(x,y, oWall) or count > 10000 and instance_nearest(x,y, oEnemy).x > 500
//Creates enemy and destroys self if can't find space nearby
if count > 10000 {
	instance_destroy()
}
else {
	currentEnemy = instance_create_depth(x, y, 0, oEnemy)
	currentEnemy.size = mySize
	instance_destroy()
}