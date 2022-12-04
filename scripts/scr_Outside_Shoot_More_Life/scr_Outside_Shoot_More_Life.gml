function scr_Outside_Shoot_More_Life() {
	scr_Spirit_Boss_BullFX_Pre();
	    dir = -(bullet_spread * (bullet_count - 1) / 2);
	    repeat(bullet_count) {
	        with instance_create(x + lengthdir_x(boss_radius, image_angle),y + lengthdir_y(boss_radius, image_angle),bullet_type) {
	            scr_Proj_Teleport();
	            while(distance_to_point(other.bossX,other.bossY) > 2500) {
	                scr_Proj_Teleport();
	            }
	            bullet_direction = point_direction(x,y,other.bossX,other.bossY);
	            scr_Bullet_Shoot_Properties();
	            direction = (bullet_direction + other.dir)
				scr_Spiritual_Stats_Boss_Bullet_Effects();
	        }
	        dir += bullet_spread;
	    }



}
