maxSize = 2
g=1
vx=0
vy=0
xmax=8
jump=-18
hp = 10
downed = -1
drY = 0
sizeX = 1.001
sizeY = 1.001
lowestY = 0
enterTP = -1
depth-=1
//finding lowest for death
count = instance_number(oWall)
for(k=0; k<count; k=k+1) {
	tempY = instance_find(oWall,k).y
	if tempY > lowestY 
		lowestY = tempY
}
deathY = lowestY

instance_create_depth(x,y, 50, oProx)
if place_meeting(x,y, oWall) 
	instance_destroy(other)

