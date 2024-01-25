function scr_D10_Shot_Mod() {
	// Location: Extra Shot Stats

	if global.D[10] >= 1 {
	    /*shotpowermax = shotpowermax * (0.6);
		shotpower = shotpowermax;
		shotPowerLevel = shotPowerLevel * (0.6);
		
		shotsize = shotsize * 0.75;
		image_xscale = shotsize;
		image_yscale = shotsize; */
		current_weapon_stats.Shot_Power = current_weapon_stats.Shot_Power * 0.6;
		current_weapon_stats.Shot_Size = current_weapon_stats.Shot_Size * 0.75;
	}



}
