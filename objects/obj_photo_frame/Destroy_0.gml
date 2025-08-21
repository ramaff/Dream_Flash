/// @description Insert description here
// You can write your code in this editor

var _bullet_ids = struct_get_names(frozen_bullets);
var _bullets = array_length(_bullet_ids)

var _i;

for(_i = 0; _i < _bullets; _i++) {
	var _bullet_id = _bullet_ids[_i]
	instance_activate_object(variable_struct_get(frozen_bullets, _bullet_id))
}

var _shot_ids = struct_get_names(frozen_shots);
var _shots = array_length(_shot_ids)

for(_i = 0; _i < _shots; _i++) {
	var _shot_id = _shot_ids[_i]
	instance_activate_object(variable_struct_get(frozen_shots, _shot_id))
}


