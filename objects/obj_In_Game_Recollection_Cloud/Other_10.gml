/// @description Insert description here
// You can write your code in this editor

if instance_exists(target) {

	with instance_create(target.x + (xx_offset / 4), target.y + (yy_offset / 8), obj_In_Game_Recollection_Leadup_Cloud) {
		depth = other.depth
		sprite_index = spr_Recollection_Cloud_v2_p1;
		image_alpha = other.image_alpha;
		image_xscale = other.image_xscale;
		image_yscale = other.image_yscale;
		alarm[0] = 1
	}

	with instance_create(target.x + (xx_offset / 2), target.y + (yy_offset / 5), obj_In_Game_Recollection_Leadup_Cloud) {
		depth = other.depth
		sprite_index = spr_Recollection_Cloud_v2_p2;
		image_alpha = other.image_alpha;
		image_xscale = other.image_xscale;
		image_yscale = other.image_yscale;
		alarm[0] = 1
	}

	x = target.x + xx_offset;
	y = target.y + yy_offset;
}