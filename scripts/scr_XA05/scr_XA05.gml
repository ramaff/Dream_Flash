function scr_XA05() {
	// Location item step after


		
		var chance = irandom(270 / global.XA[5]);
		
	    if chance = 1 and instance_number(obj_Rub_It_In_Bubble) < 9 {
			with instance_create(x,y,obj_Rub_It_In_Bubble) {
				size = 0.01;	
				scr_Basic_Teleport();
			}	
		}	

}
