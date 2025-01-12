function scr_S05() {
	// Soul Hit Reactions

	if global.S[5] > 0 {

	    repeat(global.S[5]) {
			with instance_create(x,y,obj_Cope_Zone) {
				size = 0.01;	
				scr_Basic_Teleport();
			}	
		}	
	}


}
