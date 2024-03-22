/// @description Insert description here
// You can write your code in this editor




// Inherit the parent event
event_inherited();

shot_stats.Shot_Power -= 25;
if shot_stats.Shot_Power < 0 {
	instance_destroy();	
}