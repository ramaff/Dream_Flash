function scr_Soul_Push_Pull() {
	suckSpeed = argument[0];

	with (obj_Soul) {
	    var suckAngle = point_direction(x,y,other.x,other.y);
        
	    x += lengthdir_x(other.suckSpeed, suckAngle);
	    y += lengthdir_y(other.suckSpeed, suckAngle);
        
	}
    
	with (obj_Projectile_Parent) {
	    var suckAngle = point_direction(x,y,other.x,other.y);
        
	    x += lengthdir_x(other.suckSpeed, suckAngle);
	    y += lengthdir_y(other.suckSpeed, suckAngle);
        
	}

	with (obj_Bullet_Parent) {
		if id = other.id {
			exit;	
		}
	    var suckAngle = point_direction(x,y,other.x,other.y);
        
	    x += lengthdir_x(other.suckSpeed, suckAngle);
	    y += lengthdir_y(other.suckSpeed, suckAngle);
        
	    }


}
