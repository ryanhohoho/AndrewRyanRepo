//random location
do  {
	x = random(50000)
	//so it's not at spawn
	y = random(49500) + 500
}
until place_meeting(x,y, oWall)
vx = 2
vy = 2
newX = 0
newY = 0
morbinMode = 0
alarmy = 0
alarmMorb = 0
depth = -1
y = y -200
alarmExpand = room_speed*2
alarmStill = room_speed*1.6
