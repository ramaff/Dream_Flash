function scr_E06() {
	// Location: Shot Creation Script

	if global.E[6] >= 1 {
	    //if obj_Soul_Parent.senergy >= 50 {
		if shothomingtype = 0 {
	        shothomingtype = 1;
		}
	        if shothomingrange < 100 {
	            shothomingrange = 50 + 50 * global.E[6];
	        } else {
	            shothomingrange += 50 * global.E[6];
	        }
	    //}
	}



}
