if !(instance_exists(Tutorial_Control)) {

	if !instance_exists(obj_Item_Parent) {
	   var charge = false
		if (senergy >= ((20 - tenergyconservation) / tenergyconservationfactor)) and (tdelay <= 0) {
	        charge = true
	    }
		scr_Soul_Right_Click(charge);
    
	    scr_Leave_Condition();
    
	    if global.bosscount = 0
	    if inside = 0 {
	        scr_Change_Room();
	    }
	} else {

	    if point_distance(obj_Astral_Indicator.x,obj_Astral_Indicator.y,obj_Item_Parent.x,obj_Item_Parent.y) > 50 {
	        var charge = false
			if (senergy >= ((20 - tenergyconservation) / tenergyconservationfactor)) and (tdelay <= 0) {
	            charge = true
	        }
			scr_Soul_Right_Click(charge);
	    }
    
	    scr_Leave_Condition();
    
	    if global.bosscount = 0 and scr_Negative_Room_Check() {
		    if inside = 0 {
		        scr_Change_Room();
		    }
		}

	}

}

