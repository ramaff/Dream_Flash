// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Boss_Morphing(){
	if instance_exists(obj_Boss_Overlay) {
		with(obj_Boss_Overlay) {
			if bossd = id {
				other.state = states.phasing;
			}
		}
	}
	
	if state = states.phasing and object_get_name(other.object_index) != obj_Cursed_Clapper and object_get_name(other.object_index) != obj_Veil_Mask {
		speed = 0;	
		//path_speed = 0;
		path_position = init_path_position;
	}
}