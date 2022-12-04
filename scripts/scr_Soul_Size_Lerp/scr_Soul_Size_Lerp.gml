// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Soul_Size_Lerp(speed){
	soulSizeX = lerp(soulSizeX,abs(size),argument0);
	soulSizeY = lerp(soulSizeY,abs(0.5),argument0);

	image_xscale = soulSizeX * (size * 2);
	image_yscale = soulSizeY;
}