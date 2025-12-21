function scr_Soul_Right_Click(teleport_charge = false) {
	var xv = room_width / 2;
	var yv = room_height / 2;

	var xval = obj_Astral_Indicator.x - xv;
	var yval = obj_Astral_Indicator.y - yv;
	var inside = 0;
	var onsoul = 0;

	if abs(xval) < ((global.roomSizeX / 2) - abs(yval)) and abs(yval) < ((global.roomSizeY / 2) - abs(xval)) {
	    inside = 1;
	}
	
	if (point_distance(obj_Astral_Indicator.x, obj_Astral_Indicator.y, obj_Soul_Parent.x, obj_Soul_Parent.y) <= 80) and (obj_Soul_Parent.sstatecharge >= obj_Soul_Parent.smaxstate) {
		onsoul = 1;	
	}

	if /*inside = 1 and */teleport_charge = true {
	    scr_Soul_Teleport();
	}
	if onsoul = 1 {
		scr_State_Power_Up();
	}


}
