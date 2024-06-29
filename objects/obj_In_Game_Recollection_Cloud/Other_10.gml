/// @description Insert description here
// You can write your code in this editor

var ang = point_direction(x,y,object_index.x, object_index.y);
while distance_to_object(object_index) < 100 {
	x += lengthdir_x(10, ang + 180);
	y += lengthdir_y(10, ang + 180);
	ang = point_direction(x,y,object_index.x, object_index.y);
}


if instance_exists(obj_Soul_Parent) {
	x = obj_Soul_Parent.x + 200;
	y = obj_Soul_Parent.y - 150;
}

with instance_create(x - 100, y + 50, obj_In_Game_Recollection_Leadup_Cloud) {
	sprite_index = spr_Recollection_Cloud_v2_p2;
	image_alpha = other.image_alpha;
	image_xscale = other.image_xscale;
	image_yscale = other.image_yscale;
	alarm[0] = other.alarm[0];
}

with instance_create(x - 150, y + 75, obj_In_Game_Recollection_Leadup_Cloud) {
	sprite_index = spr_Recollection_Cloud_v2_p1;
	image_alpha = other.image_alpha;
	image_xscale = other.image_xscale;
	image_yscale = other.image_yscale;
	alarm[0] = other.alarm[0];
}
