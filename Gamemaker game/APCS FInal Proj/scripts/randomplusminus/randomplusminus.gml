function randomPlusMinus(){
	randomize()
	rando = random(2)
	if rando > 1
		rando = -1
	else
		rando = 1
	return rando
}