/// @description Insert description here
// You can write your code in this editor

image_xscale -= size / life;
image_yscale -= size / life;

if instance_exists(target) {
	direction = point_direction(x,y,target.x + xxx,target.y + yyy);
	speed = point_distance(x,y,target.x + xxx,target.y + yyy) / alarm[0];
}