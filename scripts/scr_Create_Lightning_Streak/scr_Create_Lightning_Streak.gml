// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Create_Lightning_Streak(xst = x, yst = y, aim_angle = 0, streak_color = c_white, lightning_sprite = spr_Lightning_Streak, lightning_alpha = 1){
	with instance_create(xst, yst, obj_Lightning_Streak) {
		image_angle = aim_angle;
		image_blend = streak_color;
		sprite_index = lightning_sprite;
		image_alpha = lightning_alpha;
	}
}