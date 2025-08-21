/// @description Insert description here
// You can write your code in this editor

if !instance_exists(link) {
	instance_destroy();
	exit;
}

if !variable_struct_exists(exited_things, real(other.id)) {
	other.x = link.x;
	other.y = link.y;
	
	if variable_struct_exists(link.exited_things, real(other.id)) {
		variable_struct_remove(exited_things, real(other.id))
	} else {
		variable_struct_set(link.exited_things, real(other.id), other.id)
	}
	
}




