g=1
vx=0
vy=0
xmax=8
jump=-18
health = 3
downed = -1
drX = 0
drY = 0
sizeX = 1
sizeY = 1
lowestY = 0
enterTP = -1
count = instance_number(oWall)
for(k=0; k<count; k=k+1) {
	tempY = instance_find(oWall,k).y
	if tempY > lowestY 
		lowestY = tempY
}
deathY = lowestY