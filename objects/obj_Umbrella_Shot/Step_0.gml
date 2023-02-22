/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if image_index >= 1 {
	image_index = 1;	
}

if global.currentweapon != 603 {
	shotpierce -= 0.2;
	if shotpierce < 1 {
		instance_destroy()	
	}
}
