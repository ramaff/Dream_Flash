function scr_U05() {
	// Location: Shot Creation Script

	if global.U[5] >= 1 {
	    //if obj_Soul_Parent.senergy >= 50 {
		if shotchaintype = 0 {
	        shotchaintype = 1;
		}
	
		if shotchainpower < 10 {
			shotchainpower += 5 * global.U[5];
			if shotchainpower > 10 {
				shotchainpower = 10;
			}
		}
	
		if shotchainspeed < 8 {
	        shotchainspeed = 4 + 4 * global.U[5];
	    } else {
	        shotchainspeed += 4 * global.U[5];
	    }
	
		shotchain++;
    
		if shotchainrange < 150 {
	        shotchainrange = 100 + 100 * global.U[5];
	    } else {
	        shotchainrange += 100 * global.U[5];
	    }
	//}
	}



}
