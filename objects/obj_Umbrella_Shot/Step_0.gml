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

if InputCheck(INPUT_VERB.SHOOT) {
	event_perform(ev_mouse, ev_global_left_button)
}
if InputReleased(INPUT_VERB.SHOOT) {
	event_perform(ev_mouse, ev_global_left_release)
}