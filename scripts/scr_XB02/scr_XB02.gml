function scr_XB02() {
	
	// Extra Shot Stats ya dig

	if global.XB[2] > 0 {
		if scr_Chance(6 / global.XB[2]) {
			shotbursttype = 4;
			shotburstpower = shotpower / 2.5;
			shotburstspeed = shotspeed * 1.5;
			shotburstamount = 5;
			shotburstrange = 110;
			shotburstspread = 360 / other.saccuracy;
			
			shotsize += 0.1;
		    image_xscale = shotsize;
		    image_yscale = shotsize;
		
			shotduplicatesprite = sprite_index;
			image = 1;
		}
	}

}
