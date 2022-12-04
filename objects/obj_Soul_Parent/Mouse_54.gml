if !(instance_exists(Tutorial_Control)) {

if !instance_exists(obj_Item_Parent) {
    if (senergy >= ((20 - tenergyconservation) / tenergyconservationfactor)) and (tdelay <= 0) {
        scr_Soul_Teleport();
    }
    
    scr_Leave_Condition();
    
    if global.bosscount = 0
    if inside = 0 {
        scr_Change_Room();
    }
} else {

    if point_distance(obj_Astral_Indicator.x,obj_Astral_Indicator.y,obj_Item_Parent.x,obj_Item_Parent.y) > 50 {
        if (senergy >= ((20 - tenergyconservation) / tenergyconservationfactor)) and (tdelay <= 0) {
            scr_Soul_Teleport();
        }
    }
    
    scr_Leave_Condition();
    
    if global.bosscount = 0 and scr_Negative_Room_Check() {
	    if inside = 0 {
	        scr_Change_Room();
	    }
	}

}

}

