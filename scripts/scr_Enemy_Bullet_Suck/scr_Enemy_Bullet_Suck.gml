function scr_Bull_Suck(shut, shut_mult) {
	var suckSpeed = (shut * shut_mult) / (distance_to_object(other) + 100);
	var suckAngle = point_direction(x,y,other.x,other.y);
        
	if (distance_to_object(other) < (100 + abs(suckSpeed * 50))) {
	    x += lengthdir_x(suckSpeed, suckAngle);
	    y += lengthdir_y(suckSpeed, suckAngle);
	}
}

function scr_Enemy_Bullet_Suck(shut = shot_stats.Shot_Suck) {

	with (obj_Bullet_Parent) {
	    scr_Bull_Suck(shut, 150)
	}
	with (obj_bullet_parent_v2) {
	    scr_Bull_Suck(shut, 150)
	}
	
	with (obj_Soul_Parent) {
	    scr_Bull_Suck(shut, 75)
        
	}
	
	with (obj_Projectile_Parent) {
	    scr_Bull_Suck(shut, 100)
	}




}
