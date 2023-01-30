function scr_B07() {
	// Location Soul Step Event


	if global.B[7] > 0 {
		
		var chance = irandom(360);
		
	    if chance = 1 and instance_number(obj_Encouragement_Bubble) < 3 {
			with instance_create(x,y,obj_Encouragement_Bubble) {
				size = 0.01;	
				scr_Basic_Teleport();
			}	
		}	
	}

}
