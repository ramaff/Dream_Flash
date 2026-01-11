/// @description Insert description here
// You can write your code in this editor

alarm[2] = 10;

var _exited_things_names = variable_struct_get_names(exited_things)
var _total_things = array_length(_exited_things_names)
var _i;

for(_i = 0; _i < _total_things; _i++) {
	var _exited_thing = variable_struct_get(exited_things, _exited_things_names[_i]);
	if !instance_exists(_exited_thing) {
		variable_struct_remove(exited_things, real(_exited_thing))
		continue
	}
	//if distance_to_object(_exited_thing) > 10 {
		variable_struct_remove(exited_things, real(_exited_thing))
	//}
}



