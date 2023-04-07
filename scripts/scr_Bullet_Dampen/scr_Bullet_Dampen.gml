// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Bullet_Dampen(dampen = 5){
	bulletpower -= 5
	bulletsize = (bulletpower / bulletpowermax);
	image_xscale = bulletsize;
	image_yscale = bulletsize;
				
	if bulletsize < 0.05 {
		bulletsize = 0.05;	
	}
	if bulletpower < 1 {
		instance_destroy();	
	}
}