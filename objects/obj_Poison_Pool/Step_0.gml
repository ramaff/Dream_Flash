/// @description Insert description here
// You can write your code in this editor

maxPoolSize = bulletsize;

poolSize += 0.1 + ((1 - poolSize) / 10);

depth = 125;


if poolSize > maxPoolSize {
	poolSize = maxPoolSize;
}
	image_xscale = poolSize;
	image_yscale = poolSize;
	
if alarm[0] <= 15 {
	sizeF -= 0.066;
	bulletpower = 0;
		
	var tsize = poolSize * sizeF;
	
	image_xscale = tsize;
	image_yscale = tsize;
} 
	
	
	if bulletblend != 0 {
		scr_Bullet_Blend(bulletblend);	
	}