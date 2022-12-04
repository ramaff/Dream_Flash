function scr_Soul_Push_Pull_Offset(xo, yo, suckSpeed) {

	    with (obj_Soul) {
	        var suckAngle = point_direction(x,y,other.x+xo,other.y+yo);
        
	        x += lengthdir_x(suckSpeed, suckAngle);
	        y += lengthdir_y(suckSpeed, suckAngle);
        
	    }
    
	    with (obj_Projectile_Parent) {
	        var suckAngle = point_direction(x,y,other.x+xo,other.y+yo);
        
	        x += lengthdir_x(suckSpeed * 0.75, suckAngle);
	        y += lengthdir_y(suckSpeed * 0.75, suckAngle);
        
	    }



}
