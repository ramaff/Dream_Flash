/// @description Insert description here
// You can write your code in this editor

if instance_exists(obj_Soul_Parent) {
	x = obj_Soul_Parent.x;
	y = obj_Soul_Parent.y;
}
var ang = point_direction(x,y,obj_Recollection_Cloud.x, obj_Recollection_Cloud.y);
while distance_to_object(obj_Recollection_Cloud) < 100 {
	x += lengthdir_x(10, ang + 180);
	y += lengthdir_y(10, ang + 180);
	ang = point_direction(x,y,obj_Recollection_Cloud.x, obj_Recollection_Cloud.y);
}
