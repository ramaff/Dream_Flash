function scr_Boss_Size_Lerp_DirAlt(argument0) {
	bossSizeX = lerp(bossSizeX,bossSize,argument0);
	bossSizeY = lerp(bossSizeY,bossSize,argument0);

	if direction > 90 and direction < 270 {
	    facing_direction = 1;
	} else {
	    facing_direction = -1;
	}

	image_xscale = facing_direction * bossSizeX;
	image_yscale = bossSizeY;


}
