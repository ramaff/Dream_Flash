 
if shot_stats.Shot_Bounce >= 1 and shot_stats.Shot_Air_Target = 0 and shot_stats.Shot_Melee = 0 {
    
    backSpeed = speed;

	if(place_meeting(x + hspeed, y, obj_The_Border)) {
	    direction = -direction + 180;
	}

	//Vertical bounce
	if(place_meeting(x, y + vspeed, obj_The_Border)) {
	    direction = -direction;
    }
	
	if shot_stats.Shot_Looping = 0 {
		scr_Soul_Outside_Check();
	}
	shot_stats.Shot_Bounce--;
}
