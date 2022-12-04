function scr_Just_Shoot_No_Paranoia() {
	scr_Spirit_Boss_BullFX_Pre();
	
	    dir = -(bullet_spread * (bullet_count - 1) / 2);
	    repeat(bullet_count) {
	        with instance_create(x + lengthdir_x(boss_radius, image_angle),y + lengthdir_y(boss_radius, image_angle),bullet_type) {
	            scr_Bullet_Shoot_Properties();
	            direction = (other.bullet_direction + other.dir);
	        }
	        dir += bullet_spread;
	    }



}
