/// @description Insert description here
// You can write your code in this editor

	var _scale = scr_Wave(1, 1.25, 0.25, 0)

    image_xscale = bulletsize * _scale;
    image_yscale = bulletsize * _scale;

	if bulletblend != 0 {
		scr_Bullet_Blend(bulletblend);	
	}