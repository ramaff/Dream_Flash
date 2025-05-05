function scr_wall_bounce_v2() {
	
	if scr_Outside_Check_Bool(-speed) {
		return false;
	} else {

		var _bounce = false
		if(place_meeting(x + (hspeed * 2), y, obj_The_Border)) {
			_bounce = true;
		}

		//Vertical bounce
		if(place_meeting(x, y + (vspeed * 2), obj_The_Border)) {
			_bounce = true;
		}
	
		if _bounce {
			if y > 0 {
				if x > 0 {
					direction += 90;	
				} else {
					direction -= 90;
				}
			} else {
				if x > 0 {
					direction += 90;
				} else {
					direction -= 90;	
				}
			}
		}
		return _bounce
	}

}

function scr_Wall_Bounce() {
	if(place_meeting(x + (hspeed), y, obj_The_Border))
	    direction = -direction + 180;

	//Vertical bounce
	if(place_meeting(x, y + (vspeed), obj_The_Border))
	    direction = -direction;


}
