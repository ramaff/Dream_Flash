function scr_P01() {
	//soul step
	/// Soul Create Mod

	var essenceCap = smaxenergy + (1.25 * (global.soulessence + global.soulessenceTemp));
		if essLowCap = 1 {
		if global.bosscount > 0 {
			senergy += 0.425 * currentenergyregenfactor * ((60 + global.soulessence + global.soulessenceTemp) / 60);
		} else {
		    senergy += 4.25 * currentenergyregenfactor * ((60 + global.soulessence + global.soulessenceTemp) / 60);
		}
		}

		if essLowCap = 1 {
		if senergy > essenceCap {
		    senergy = essenceCap;
		}
		}
	
		if senergy < essenceCap {
			essLowCap = 1;
		}


}
