function scr_Enemy_Bullet_Suck(shut = shot_stats.Shot_Suck) {

	with (obj_Bullet_Parent) {
	    var suckSpeed = (shut * 150) / (distance_to_object(other) + 100);
	    var suckAngle = point_direction(x,y,other.x,other.y);
        
	    if (distance_to_object(other) < (100 + abs(suckSpeed * 50))) {
	        x += lengthdir_x(suckSpeed, suckAngle);
	        y += lengthdir_y(suckSpeed, suckAngle);
	    }
        
	}
	
	with (obj_Soul_Parent) {
	    var suckSpeed = (shut * 75) / (distance_to_object(other) + 100);
	    var suckAngle = point_direction(x,y,other.x,other.y);
        
	    if (distance_to_object(other) < (100 + abs(suckSpeed * 50))) {
	        x += lengthdir_x(suckSpeed, suckAngle);
	        y += lengthdir_y(suckSpeed, suckAngle);
	    }
        
	}
	
	with (obj_Projectile_Parent) {
	    var suckSpeed = (shut * 100) / (distance_to_object(other) + 100);
	    var suckAngle = point_direction(x,y,other.x,other.y);
        
	    if (distance_to_object(other) < (100 + abs(suckSpeed * 50))) {
	        x += lengthdir_x(suckSpeed, suckAngle);
	        y += lengthdir_y(suckSpeed, suckAngle);
	    }
        
	}




}
