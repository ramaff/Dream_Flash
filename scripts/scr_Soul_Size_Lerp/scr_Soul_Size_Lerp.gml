// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Soul_Size_Lerp(lerp_speed){
	soulSizeX = lerp(soulSizeX,abs(size),lerp_speed);
	soulSizeY = lerp(soulSizeY,abs(size),lerp_speed);

	image_xscale = soulSizeX; //* (size * 2);
	image_yscale = soulSizeY;
}