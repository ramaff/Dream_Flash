function scr_Minion_Step() {
	sminknockbacktime--;

	if sminknockback != 0 and sminknockbacktime > 0 {
	    var angl = sminknockbackdirection;
	    x += lengthdir_x(sminknockback, angl);
	    y += lengthdir_y(sminknockback, angl);
	}

	if sminknockbacktime <= 0 {
	    sminknockback = 0;
	}

	scr_Soul_Outside_Check();

	/*
	if global.U[4] > 0 {
	
		//speed = smovementspeed;
		
		CenterX = obj_Soul_Parent.x;
	    CenterY = obj_Soul_Parent.y;
    
	    Angle += smovementspeed;
	    if (Angle >= 360) {
	        Angle -= 360;
	    }

	    x = lengthdir_x(Orbit, Angle) + CenterX;
	    y = lengthdir_y(Orbit, Angle) + CenterY;
	
	}
	*/


}
