// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_After_Image(lifespan = 10, shrink = true, fade = false, _blend = other.image_blend, _sprite = other.sprite_index){
	with instance_create(x,y, obj_After_Image) {
		alarm[0] = lifespan;
		shrinking = shrink;
		fading = fade;
		sprite_index = _sprite;
		image_index = other.image_index;
		image_speed = 0;
		size = other.image_xscale;
		image_xscale = other.image_xscale;
		image_yscale = other.image_yscale;
		image_blend = _blend;
		image_angle = other.image_angle;
	}
}