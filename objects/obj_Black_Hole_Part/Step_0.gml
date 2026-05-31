/// @description Insert description here
// You can write your code in this editor

image_xscale -= size / life;
image_yscale -= size / life;

if instance_exists(target) {
	direction = point_direction(x,y,target.x,target.y) + 60;
	speed = point_distance(x,y,target.x,target.y) / (alarm[0]);
	
	//x += lengthdir_x(5 + speed * 2, direction + 90);
	//y += lengthdir_y(5 + speed * 4, direction + 90);
}

scr_After_Image(10, true, false, image_blend, sprite_index)
