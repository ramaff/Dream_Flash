function scr_Boss_Bullet_Pull() {
	var suckSpeed = argument[2];
	var xo = argument[0];
	var yo = argument[1];

	    with (obj_Soul) {
	        var suckAngle = point_direction(x,y,other.x + xo,other.y + yo);
        
	        x += lengthdir_x(suckSpeed * 0.5, suckAngle);
	        y += lengthdir_y(suckSpeed * 0.5, suckAngle);
        
	    }
    
	    with (obj_Projectile_Parent) {
	        var suckAngle = point_direction(x,y,other.x + xo,other.y + yo);
        
	        x += lengthdir_x(suckSpeed * 0.5, suckAngle);
	        y += lengthdir_y(suckSpeed * 0.5, suckAngle);
        
	    }

		with (obj_Bullet_Parent) {
	        var suckAngle = point_direction(x,y,other.x + xo,other.y + yo);
        
	        x += lengthdir_x(suckSpeed * 4, suckAngle);
	        y += lengthdir_y(suckSpeed * 4, suckAngle);
        
	    }


}
