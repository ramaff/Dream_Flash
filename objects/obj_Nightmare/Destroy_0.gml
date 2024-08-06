/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if global.currentchapter < 4 {
	scr_Change_Chapter();
} else {
	//instance_create(x,y,Demo_15_Note);	
	scr_Tutorial_Note_Spawn("placeholder_run_end_note")
}

