/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_Boss_Parent) {

	image_index = 1;
	scr_Soul_Stretch("Horizontal", 0.2);
} else {
	alarm[0] = 15;	
	image_index = 0;
}