function scr_Mouse_Follow_AI() {
	disx = abs(obj_Astral_Indicator.x - x);
	disy = abs(obj_Astral_Indicator.y - y);
	dis = sqrt((disx * disx) + (disy * disy));

	if dis < smovementspeed {
	    x = obj_Astral_Indicator.x;
	    y = obj_Astral_Indicator.y;
	} else {
	    move_towards_point(obj_Astral_Indicator.x,obj_Astral_Indicator.y,smovementspeed);
	}




}
