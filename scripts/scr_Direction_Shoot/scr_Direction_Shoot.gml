function scr_Direction_Shoot() {
	scr_Spirit_Boss_BullFX_Pre()
	    dir = -(bullet_spread * (bullet_count - 1) / 2);
	    repeat(bullet_count) {
	        with instance_create(x + lengthdir_x(boss_radius, image_angle),y + lengthdir_y(boss_radius, image_angle),bullet_type) {
	            scr_Bullet_Shoot_Properties();
	            //direction = other.bullet_direction + (other.dir) * ((40 + random(global.soulparanoia)) / 40);
				direction = other.direction + other.bullet_direction + other.dir;
				scr_Spiritual_Stats_Boss_Bullet_Effects();
	        }
	        dir += bullet_spread;
	    }



}
