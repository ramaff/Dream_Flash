/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if image_index >= 1 {
	image_index = 1;	
}

if global.currentweapon != 603 {
	shot_stats.Shot_Pierce -= 0.2;
	if shot_stats.Shot_Pierce < 1 {
		instance_destroy()	
	}
}
