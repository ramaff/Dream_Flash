/// @description Insert description here
// You can write your code in this editor

alarm[0] = 360;
alarm[1] = 300;

frozen_bullets = {}
frozen_shots = {}

with instance_create_depth(x, y, depth, obj_photo_flash) {
	image_angle = other.image_angle
	image_xscale = 1.2;
	image_yscale = 1.2;
	image_index = 1;
	alarm[0] = 10;

	frozen_bullets = {}
	frozen_shots = {}
	
	frame = other.id
}


