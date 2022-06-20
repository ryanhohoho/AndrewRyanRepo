global.stopStep = false
global.gameBeat = false
if global.highscore < global.score 
	global.highscore = global.score
global.score = 0

room_goto(rMENU)