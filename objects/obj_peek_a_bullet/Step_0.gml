/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

var _dist = scr_Soul_Distance()
if _dist > 300 {
	image_alpha = lerp(image_alpha, 0, 0.25);
	if _dist > 400 {
		image_alpha = 0;	
	}
} else {
	image_alpha = lerp(image_alpha, 1, 0.25);
	//if _dist < 150 {
	//	image_alpha = 1;	
	//}
}
if image_alpha < 1 {
	bullet_stats.bullet_power = 0;	
} else {
	bullet_stats.bullet_power = bullet_stats.bullet_power_max;	
}
