function scr_Boss_Size_Lerp_DirAlt(argument0) {
	bossSizeX = lerp(bossSizeX,bossSize,argument0);
	bossSizeY = lerp(bossSizeY,bossSize,argument0);

	if direction > 90 and direction < 270 {
	    image_xscale = bossSizeX;
	} else {
	    image_xscale = -bossSizeX;
	}

	image_yscale = bossSizeY;


}
