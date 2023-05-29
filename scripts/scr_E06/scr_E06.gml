function scr_E06() {
	// Location: Shot Creation Script

	if global.E[6] >= 1 {
	    //if obj_Soul_Parent.senergy >= 50 {
		if shothomingtype = 0 {
	        shothomingtype = 1;
		}
	    if shothomingrange < 50 + 100 * global.E[6] {
	        shothomingrange = 50 + 100 * global.E[6];
	    } else {
	        shothomingrange += 100 * global.E[6];
	    }
		
		if shothomingspeed < 1 + (1.5 * global.E[6]) {
			shothomingspeed = 1 + (1.5 * global.E[6]);	
		} else {
			shothomingspeed += 1.5 * global.E[6]	
		}
	    //}
	}



}
