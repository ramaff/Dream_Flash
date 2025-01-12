function scr_S05() {

	if global.S[5] > 0 {
		
		with instance_create(x,y, obj_cope_zone_v2) {
		}

	    repeat(2) {
			with instance_create(x,y,obj_cope_zone_v2) {
				scr_Basic_Teleport();
			}
		}	
	}


}
