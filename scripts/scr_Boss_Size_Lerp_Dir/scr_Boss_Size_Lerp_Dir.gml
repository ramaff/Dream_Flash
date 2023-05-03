function scr_Boss_Size_Lerp_Dir(amount = 0.15, mirror = false) {
	bossSizeX = lerp(bossSizeX,bossSize, amount);
	bossSizeY = lerp(bossSizeY,bossSize, amount);

	if hspeed > 0 {
	    facing_direction = -1;
	} else if hspeed < 0 {
	    facing_direction = 1;
	}
	
	if mirror and hspeed != 0 {
		facing_direction = facing_direction * -1;	
	}

	image_xscale = facing_direction * abs(bossSizeX);
	image_yscale = bossSizeY;

}
