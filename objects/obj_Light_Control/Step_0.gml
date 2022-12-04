/// @description Insert description here
// You can write your code in this editor

exit;

if (!instance_exists(obj_light_renderer)) {
	with instance_create(x,y,obj_light_renderer) {
		//depth = -99;	
	}	
}