function scr_Boss_Wind(suckSpeed, suckAngle) {

	    with (obj_Soul) {
	        x += lengthdir_x(suckSpeed, suckAngle);
	        y += lengthdir_y(suckSpeed, suckAngle);
        
	    }
    
	    with (obj_Projectile_Parent) {
	        x += lengthdir_x(suckSpeed * 0.75, suckAngle);
	        y += lengthdir_y(suckSpeed * 0.75, suckAngle);
	    }
		
		with (obj_Bullet_Parent) {
	        x += lengthdir_x(suckSpeed, suckAngle);
	        y += lengthdir_y(suckSpeed, suckAngle);
	    }



}
