/// @description Insert description here
// You can write your code in this editor
if alarm[0] < 570 {
	x = lerp(x, target.x, 0.05)
	y = lerp(y, target.y, 0.05)
	
	image_angle = lerp(image_angle, -90, 0.05)
	
	image_yscale = lerp(image_yscale, 0.5, 0.05);
	image_xscale = lerp(image_xscale, 0.5, 0.05);
}

if speed > 2 and alarm[0] mod 10 = 0 {
	scr_After_Image(20, false, true)	
}