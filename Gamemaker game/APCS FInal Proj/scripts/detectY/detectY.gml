// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function detectY(yOriginal){

do {
	y = random(400) + 200
}until(y==yOriginal+1 || y==yOriginal-1 || y==yOriginal)
return y
//while y not +-1 and rates slightly sloped not too sloped so that it can be a hill generator
}