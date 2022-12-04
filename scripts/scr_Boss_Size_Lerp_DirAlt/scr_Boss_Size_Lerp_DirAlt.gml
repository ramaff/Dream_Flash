function scr_Boss_Size_Lerp_DirAlt(argument0) {
	bossSizeX = lerp(bossSizeX,bossSize,argument0);
	bossSizeY = lerp(bossSizeY,bossSize,argument0);

	if hspeed > 0 {
	    image_xscale = bossSizeX;
	} else if hspeed < 0 {
	    image_xscale = -bossSizeX;
	}

	image_yscale = bossSizeY;


}
