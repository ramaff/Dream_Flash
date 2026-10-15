
// Global Right Pressed

if !(instance_exists(Tutorial_Control)) {
	
	xstar = x;
	ystar = y;
	
	var _xadd = obj_Astral_Indicator.x - xstar;
	var _yadd = obj_Astral_Indicator.y - ystar;
	
	var charge = false
	
	var _item_selected = false

	if instance_exists(obj_Item_Like) {
		with(obj_Item_Like) {
			if point_distance(x, y, obj_Astral_Indicator.x,obj_Astral_Indicator.y) < ITEM_HOVER_RANGE {
				_item_selected = true;
			}
		}
	} 
	if _item_selected == false {
		if senergy >= 0 and tdelay <= 0 {
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
	
	if InputPressed(INPUT_VERB.WARP) and charge == true and _item_selected == false {
		obj_Astral_Indicator.x = obj_Soul_Parent.x + _xadd;
		obj_Astral_Indicator.y = obj_Soul_Parent.y + _yadd;
	}

}


