function scr_Outside_Shoot_Spread() {

	scr_Spirit_Boss_BullFX_Pre();
		dir = -(bullet_spread * (bullet_count - 1) / 2);
	    repeat(bullet_count) {
	        with instance_create(x + lengthdir_x(boss_radius, image_angle),y + lengthdir_y(boss_radius, image_angle),bullet_type) {
	            //direction = random(360)
			
				var dirr = (other.bullet_direction + other.dir);
			
				x += lengthdir_x(1500,dirr);
				y += lengthdir_y(1500,dirr);
			
	            bullet_direction = point_direction(x,y,other.bossX,other.bossY);
	            scr_Bullet_Shoot_Properties();
	            bulletlifespan = distance_to_point(other.bossX,other.bossY) / bulletspeed;
	            alarm[0] = bulletlifespan;
	            //direction = other.bullet_direction + (other.dir) * ((40 + random(global.soulparanoia)) / 40);
				direction = bullet_direction
				scr_Spiritual_Stats_Boss_Bullet_Effects();
			
	        }
	        dir += bullet_spread;
	    }



}
