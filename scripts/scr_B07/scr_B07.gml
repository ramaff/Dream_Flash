function scr_B07() {
	// Location Soul Step Event


		
	var interval = round(360 / global.B[7])
	if (global.roomtime mod interval == 0) and instance_number(obj_Encouragement_Bubble) < (2 + global.B[7]) {
		with instance_create(x,y,obj_Encouragement_Bubble) {
			size = 0.01;	
			scr_Basic_Teleport();
		}	
	}	

}
