// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Bullet_Power_Size(scale){
	var size = bulletpower / bulletpowermax;
    bulletsize = 0.1 + (size * (scale - 0.1));
	
	bulletsize = clamp(bulletsize,0.1,1);
}