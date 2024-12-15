function scr_E08_v2(_bullet_stats) {
	// Location: Boss Bullet Creation

	if global.E[8] > 0 {
	    var _val = irandom(10 + 2 * global.E[8]);
    
	    if _val >= 10 {
	        bulletsize = bulletsize * 0.5;
			image_xscale = bulletsize;
			image_yscale = bulletsize;
	        bulletpower = bulletpower * 0.5;
			bulletpowermax = bulletpowermax * 0.5;
	    }
	}

}


function scr_E08() {
	// Location: Boss Bullet Creation

	if global.E[8] > 0 {
	    var _val = irandom(10 + 2 * global.E[8]);
    
	    if _val >= 10 {
	        bulletsize = bulletsize * 0.5;
			image_xscale = bulletsize;
			image_yscale = bulletsize;
	        bulletpower = bulletpower * 0.5;
			bulletpowermax = bulletpowermax * 0.5;
	    }
	}

}
