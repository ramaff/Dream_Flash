function scr_D10_Shot_Mod() {
	// Location: Extra Shot Stats

	if global.D[10] >= 1 {
	    shotpowermax = shotpowermax * (0.65);
		shotpower = shotpowermax;
		shotPowerLevel = shotPowerLevel * (0.65);
		
		shotsize = shotsize * 0.8;
		image_xscale = shotsize;
		image_yscale = shotsize;
	}



}
