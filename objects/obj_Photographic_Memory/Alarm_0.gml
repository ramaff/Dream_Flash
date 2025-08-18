/// @description Insert description here
// You can write your code in this editor

alarm[0] = frequency
alarm[1] = alarm[0] - 120;

image_alpha = 0;
var _frame_id = noone;

scr_Sound_Effect(snd_Camera_Flash)

with instance_create_depth(x, y, depth, obj_photo_frame) {
	image_angle = other.image_angle
	image_xscale = 1;
	image_yscale = 1;
	_frame_id = id;
}

with instance_create_depth(x, y, depth - 1, obj_photo_flash) {
	image_angle = other.image_angle
	image_xscale = 1.2;
	image_yscale = 1.2;
	image_index = 1;
	alarm[0] = 10;

	frozen_bullets = {}
	frozen_shots = {}
	
	frame = _frame_id
}