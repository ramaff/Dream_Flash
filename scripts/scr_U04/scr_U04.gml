function scr_U04() {
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


}
