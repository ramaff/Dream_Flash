/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_Boss_Parent) {
	alarm[1] = 15;

	sprite_index = spr_Fighter_Soul_Shoot;
	scr_Soul_Stretch("Horizontal", 0.2);
} else {
	alarm[0] = 15;	
	sprite_index = spr_Fighter_Soul;
}