function scr_S05() {

	if global.S[5] > 0 {
		
		with instance_create_depth(x,y,0, obj_cope_zone_v2) {
		}

	    repeat(2) {
			with instance_create_depth(x,y,0,obj_cope_zone_v2) {
				scr_Basic_Teleport();
			}
		}	
	}


}
