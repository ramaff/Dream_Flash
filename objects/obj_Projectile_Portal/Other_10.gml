/// @description Insert description here
// You can write your code in this editor

if !instance_exists(link) {
	instance_destroy();
	exit;
}

if !variable_struct_exists(exited_things, real(other.id)) {
	var _link_x = link.x;
	var _link_y = link.y;
	if object_index = obj_Astral_Link and other.object_index = obj_Basic_Soul {
		with (other.id) {
			scr_Soul_Teleport(false, false, _link_x, _link_y, true)
		}
		event_user(1);
		with(link) {
			event_user(1);	
		}
	} else {
		other.x = _link_x;
		other.y = _link_y;
	}
	
	if variable_struct_exists(link.exited_things, real(other.id)) {
		variable_struct_remove(exited_things, real(other.id))
	} else {
		variable_struct_set(link.exited_things, real(other.id), other.id)
	}
	
}




