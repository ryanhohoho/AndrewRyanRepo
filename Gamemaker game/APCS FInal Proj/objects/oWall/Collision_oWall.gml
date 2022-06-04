/*
randomize()
do {
	rando = randomPlusMinus()
	x += 10*rando
	rando = randomPlusMinus()
	y += 10*rando
	count++
}
until !place_meeting(x + 200, y + 200, oWall)
show_debug_message(count)
