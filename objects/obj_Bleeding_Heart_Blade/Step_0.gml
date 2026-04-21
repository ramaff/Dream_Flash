/// @description Insert description here
// You can write your code in this editor
if alarm[0] < 210 {
	var _dist = point_distance(x, y, target.x, target.y)
	direction = point_direction(x, y, target.x, target.y)
	
	if _dist > 50 {
		var _amt = (_dist - 50) / 10;
		x += lengthdir_x(_amt, direction)
		y += lengthdir_y(_amt, direction)
	}
	
	image_angle = lerp(image_angle, -90, 0.05)
	
	image_yscale = lerp(image_yscale, 0.5, 0.05);
	image_xscale = lerp(image_xscale, 0.5, 0.05);
}

if speed > 2 and alarm[0] mod 2 = 0 {
	scr_After_Image(20, false, true)	
}