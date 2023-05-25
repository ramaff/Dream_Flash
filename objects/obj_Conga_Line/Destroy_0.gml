/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event

var total_num = 1
if Floor_Layout_Control.Flash[global.currentroom,23] = 2 {
	total_num = 2;	
}


if instance_number(obj_Conga_Line) <= total_num {
	event_inherited();
}

