function scr_Soul_Shoot_Spread() {
	scr_Spirit_Boss_BullFX_Pre()
	    repeat(bullet_count) {
	       dir = -(bullet_spread / 2) + random(bullet_spread);
	       with instance_create(x + lengthdir_x(boss_radius, image_angle),y + lengthdir_y(boss_radius, image_angle),bullet_type) {
	            scr_Bullet_Shoot_Properties();
	            direction = scr_Soul_Point();
				speed = bulletspeed;
	            //direction = other.bullet_direction + (other.dir) * ((40 + random(global.soulparanoia)) / 40);
				direction += other.bullet_direction + other.dir;
				scr_Spiritual_Stats_Boss_Bullet_Effects();
	        }
	    }



}
