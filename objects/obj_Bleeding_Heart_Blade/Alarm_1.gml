/// @description Insert description here
// You can write your code in this editor
if alarm[2] > 0 {
	alarm[1] = 1;
	
	direction = point_direction(x, y, obj_Indicator_Parent.x, obj_Indicator_Parent.y);
	
	image_angle = lerp(image_angle, direction, 0.5);
	image_yscale = lerp(image_yscale, 0.4, 0.15);
	image_xscale = lerp(image_xscale, 0.65, 0.15);
	
}