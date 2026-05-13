/// @description Insert description here
// You can write your code in this editor

image_xscale -= size / life;
image_yscale -= size / life;

if instance_exists(target) {
	direction = point_direction(x,y,target.x,target.y);
	speed = point_distance(x,y,target.x,target.y) / alarm[0];
	
	x += lengthdir_x(speed, direction + 90);
	y += lengthdir_y(speed, direction + 90);
}

scr_After_Image(5, true, false, image_blend, sprite_index)