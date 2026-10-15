function scr_Boss_Bullet_Pull(xo,yo,suckSpeed) {

        var _x = x + xo
        var _y = y + yo
    
	    with (obj_Soul) {
	        var suckAngle = point_direction(x,y,_x,_y);
        
	        x += lengthdir_x(suckSpeed * 0.5, suckAngle);
	        y += lengthdir_y(suckSpeed * 0.5, suckAngle);
        
	    }
    
	    with (obj_Projectile_Parent) {
	        var suckAngle = point_direction(x,y,_x,_y);
        
	        x += lengthdir_x(suckSpeed * 0.5, suckAngle);
	        y += lengthdir_y(suckSpeed * 0.5, suckAngle);
        
	    }

		with (obj_Bullet_Parent) {
	        var suckAngle = point_direction(x,y,_x,_y);
        
	        x += lengthdir_x(suckSpeed * 4, suckAngle);
	        y += lengthdir_y(suckSpeed * 4, suckAngle);
        
	    }


}
