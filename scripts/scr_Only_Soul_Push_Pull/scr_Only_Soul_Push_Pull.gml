function scr_Only_Soul_Push_Pull(suckSpeed) {
        var _x = x
        var _y = y
	    with (obj_Soul) {
	        var suckAngle = point_direction(x,y,_x,_y);
        
	        x += lengthdir_x(other.suckSpeed, suckAngle);
	        y += lengthdir_y(other.suckSpeed, suckAngle);
        
	    }
}
