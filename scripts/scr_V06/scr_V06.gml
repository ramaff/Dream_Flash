function scr_V06() {

	if global.V06Overwhelm > (8 - global.V[6]) {
		shotbursttype = 4;
		shotburstpower = shotpower;
		shotburstspeed = shotspeed * 2;
		shotburstamount = 4;
		shotburstrange = 110;
		shotburstspread = 60 / other.saccuracy;
		
		shotsize += 0.25;
	    image_xscale = shotsize;
	    image_yscale = shotsize;
		
		shotduplicatesprite = sprite_index;
		image = 1;
	
		shotpower = shotpower * 2;
		shotpowermax = shotpowermax * 2;
		shotPowelLevel = shotPowerLevel * 2;
	}
	
	if global.V06Overwhelm > 7 {
		global.V06Overwhelm = 0;	
	}
	
	if global.V[6] > 0 {
		global.V06Overwhelm++;
	}

}
