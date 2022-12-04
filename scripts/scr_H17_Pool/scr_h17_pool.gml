// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_H17_Pool(){

	with instance_create(x,y,obj_Soap_Pool_Parent) {
		alarm[0] = 25 + random(10);
		maxPoolSize = 0.35 + random(0.1);
	}
	
}