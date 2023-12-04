/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event

var total_num = 1
if boost = 2 {
	total_num = 2;	
}

death_sprite = spr_Conga_Line_Dead;

if instance_number(obj_Conga_Line) <= total_num {
	event_inherited();
} else {
	scr_Dead_Boss(0)
}

