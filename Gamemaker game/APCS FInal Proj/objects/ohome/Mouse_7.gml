global.stopStep = false
if global.highscore < global.score 
	global.highscore = global.score
global.score = 0
global.button = -1
room_goto(rMENU)