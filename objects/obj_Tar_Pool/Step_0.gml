/// @description Insert description here
// You can write your code in this editor

maxPoolSize = bulletsize;

poolSize += 0.1 + ((1 - poolSize) / 10);

depth = 10;


if poolSize > maxPoolSize {
	poolSize = maxPoolSize;
}
image_xscale = poolSize;
image_yscale = poolSize;
	
if bulletblend != 0 {
    image_blend = bulletblend
}