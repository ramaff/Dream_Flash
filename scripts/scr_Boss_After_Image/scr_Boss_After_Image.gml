// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Boss_After_Image(aftertime){
	with instance_create(x,y,obj_Boss_After_Image) {
		sprite_index = other.sprite_index;
		image_index = other.image_index
		image_speed = 0;
		time = aftertime;
		size = other.bossSize * 0.9;
		image_xscale = size;
		image_yscale = size;
		
		depth = other.depth + 50;
		image_alpha = 0.5;
	}
}