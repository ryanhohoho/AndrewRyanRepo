// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function floorCreate(x, y, val){
	instance_create_depth(x, y, 1, oWall)
	val-= sign(val)
	if val!=0
	  floorCreate(x+sign(val)*32, y, val)
}