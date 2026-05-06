// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Boss_Morphing(){
	
	var _obj_name = object_get_name(object_index)
	
	if state = states.phasing and _obj_name != obj_Cursed_Clapper and _obj_name != obj_Veil_Mask {
		speed = 0;
		//path_speed = 0;
		path_position = init_path_position;
	}
}