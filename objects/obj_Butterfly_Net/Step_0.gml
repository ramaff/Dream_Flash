/// @description Insert description here
// You can write your code in this editor


// Inherit the parent event
event_inherited();

var _soul = noone;

if instance_exists(shot_stats.Shot_Follow_Origin) {
	_soul = shot_stats.Shot_Follow_Origin
} else {
	exit;	
}

var _mouse_angle = point_direction(_soul.x, _soul.y, mouse_x, mouse_y)
var _diff = angle_difference(image_angle, _mouse_angle)

if _diff > 0 {
	shot_stats.Shot_Image_Rotation_Speed -= 2;
} else {
	shot_stats.Shot_Image_Rotation_Speed += 2;
}

var _abs_scale = abs(image_yscale)
var _abs_speed = abs(shot_stats.Shot_Image_Rotation_Speed)

if shot_stats.Shot_Image_Rotation_Speed < 0 {
	image_yscale = _abs_scale * -1	
} else {
	image_yscale = _abs_scale
}

image_index = min(2, floor(_abs_speed / 5))