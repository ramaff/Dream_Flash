function scr_Boss_Size_Lerp(argument0) {
	bossSizeX = lerp(bossSizeX,bossSize,argument0);
	bossSizeY = lerp(bossSizeY,bossSize,argument0);

	image_xscale = bossSizeX;
	image_yscale = bossSizeY;


}
