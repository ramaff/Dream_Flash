function scr_Wall_Bounce_Ext() {
	var bnc = 0;

	if(place_meeting(x + hspeed, y, obj_The_Border)) {
	    direction = -direction + 180;
		bnc = 1;
	}

	//Vertical bounce
	if(place_meeting(x, y + vspeed, obj_The_Border)) {
	    direction = -direction;
		bnc = 1;
	}

	if shot_stats.Shot_Speed = 0 || speed = 0 {
		bnc = 0;
	}

	if bnc = 1 {
		shot_stats.Shot_ID_Offset++;
	}


}
