/// @description Insert description here
// You can write your code in this editor




// Inherit the parent event
event_inherited();

shotpower -= 50;
if shotpower < 0 {
	instance_destroy();	
}