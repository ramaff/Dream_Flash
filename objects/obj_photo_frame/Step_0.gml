/// @description Insert description here
// You can write your code in this editor

var _bullet_ids = struct_get_names(frozen_bullets);
var _bullets = array_length(_bullet_ids)

var _i;

for(_i = 0; _i < _bullets; _i++) {
	with(variable_struct_get(frozen_bullets, frozen_bullets[_bullet_ids[_i]])) {
		alarm[0] += 1
		speed = 0
	}
}




