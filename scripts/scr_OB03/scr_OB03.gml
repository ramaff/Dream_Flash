function scr_OB03() {
	// Soul Create

	if global.OB[3] > 0 {

	    repeat(global.OB[3]) {
			with instance_create(x,y,obj_Happy_Place) {
				size = 0.01;	
				scr_Basic_Teleport();
			}	
		}	
	}


}
