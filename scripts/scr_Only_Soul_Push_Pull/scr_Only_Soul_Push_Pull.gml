function scr_Only_Soul_Push_Pull() {
	suckSpeed = argument[0];

	    with (obj_Soul) {
	        var suckAngle = point_direction(x,y,other.x,other.y);
        
	        x += lengthdir_x(other.suckSpeed, suckAngle);
	        y += lengthdir_y(other.suckSpeed, suckAngle);
        
	    }


}
