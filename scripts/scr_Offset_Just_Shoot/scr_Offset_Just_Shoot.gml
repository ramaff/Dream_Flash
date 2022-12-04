function scr_Offset_Just_Shoot() {
	    distance = argument[0];
    
	scr_Spirit_Boss_BullFX_Pre();
	    dir = -(bullet_spread * (bullet_count - 1) / 2);
	    repeat(bullet_count) {
	        var dd = (bullet_direction + dir)
			direction = other.bullet_direction + other.dir;
	        boss_xoffset = lengthdir_x(distance,dd);
	        boss_yoffset = lengthdir_y(distance,dd);
	        with instance_create(x + boss_xoffset,y + boss_yoffset,bullet_type) {
	            scr_Bullet_Shoot_Properties();
	            speed = other.speed;
	            direction = dd;
				if other.bullet_direction_angle = 1 {
					image_angle = direction;	
				}
				scr_Spiritual_Stats_Boss_Bullet_Effects();
	        }
	        dir += bullet_spread;
	    }



}
