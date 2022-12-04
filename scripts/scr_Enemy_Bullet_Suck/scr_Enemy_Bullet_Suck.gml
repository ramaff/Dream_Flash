function scr_Enemy_Bullet_Suck() {
	shut = argument[0]

	    with (obj_Bullet_Parent) {
	        suckSpeed = (other.shut * 100) / (distance_to_object(other) + 50);
	        suckAngle = point_direction(x,y,other.x,other.y);
        
	        if (distance_to_object(other) < abs(25 + suckSpeed * 50)) {
	            x += lengthdir_x(suckSpeed, suckAngle);
	            y += lengthdir_y(suckSpeed, suckAngle);
	        }
        
	    }




}
