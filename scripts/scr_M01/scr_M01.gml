// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// Soul Step After Event

function scr_M01(){

	if global.M[1] > 0 and (global.roomtime = 360 || global.roomtime = 720) {
		repeat(global.M[1]) {
		    with instance_create(x,y, obj_Wandering_Soul) {
				followtarget = noone;
				scr_Minion_Follow_Adjust()
			}
		}
	}

}