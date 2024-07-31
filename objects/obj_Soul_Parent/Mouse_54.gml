if !(instance_exists(Tutorial_Control)) {

	if !instance_exists(obj_Item_Parent) {
	   var charge = false
		if (senergy >= ((30 - tenergyconservation) / tenergyconservationfactor)) and (tdelay <= 0) {
	        charge = true
	    }
		scr_Soul_Right_Click(charge);
    
	    var _leave = scr_Leave_Condition();
    
	    if scr_Room_Leavable() {
		    if _leave[0] == false {
		        scr_Change_Room(_leave[1], _leave[2]);
		    }
		}
	} else {

	    if point_distance(obj_Astral_Indicator.x,obj_Astral_Indicator.y,obj_Item_Parent.x,obj_Item_Parent.y) > 50 {
	        var charge = false
			if (senergy >= ((30 - tenergyconservation) / tenergyconservationfactor)) and (tdelay <= 0) {
	            charge = true
	        }
			scr_Soul_Right_Click(charge);
	    }
    
	    var _leave = scr_Leave_Condition();
    
	    if scr_Room_Leavable() {
		    if _leave[0] == false {
		        scr_Change_Room(_leave[1], _leave[2]);
		    }
		}

	}

}

