function scr_Boss_Size_Lerp_Dir(argument0) {
	bossSizeX = lerp(bossSizeX,bossSize,argument0);
	bossSizeY = lerp(bossSizeY,bossSize,argument0);

	if hspeed > 0 {
	    facing_direction = -1;
	} else if hspeed < 0 {
	    facing_direction = 1;
	}

	image_xscale = facing_direction * bossSizeX;
	image_yscale = bossSizeY;

}
