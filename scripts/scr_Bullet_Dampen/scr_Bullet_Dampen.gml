// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Bullet_Dampen(dampen = 5){
	bulletpower -= dampen
	
	if bulletpower < 2 {
		instance_destroy();	
	}
	
	bulletsize = bulletsizemax * (bulletpower / bulletpowermax);
	image_xscale = bulletsize;
	image_yscale = bulletsize;
				
	if bulletsize < 0.1 {
		bulletsize = 0.1;
	}
}