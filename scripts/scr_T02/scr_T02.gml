function scr_T02() {
	// Soul Hit Reactions

	if global.T[2] > 0 {

	    repeat(global.T[2]) {
			with instance_create(x,y,obj_Cope_Zone) {
				size = 0.01;	
				scr_Basic_Teleport();
			}	
		}	
	}


}
