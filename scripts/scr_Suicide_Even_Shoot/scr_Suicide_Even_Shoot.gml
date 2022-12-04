function scr_Suicide_Even_Shoot(argument0, argument1, argument2) {
		bullet_count = argument0;
		bullet_spread = 360;
		bullet_speed = argument1;
		bullet_lifespan = argument2;

		dir = random(bullet_spread * (bullet_count - 1) / 2);
		
		scr_Spirit_Boss_BullFX_Pre()
		
	    repeat(bullet_count) {
	       dir += bullet_spread / bullet_count;
	       with instance_create(x,y,bullet_type) {
	            scr_Bullet_Shoot_Properties();
	            bulletspeed = argument1;
	            bulletlife = bulletlife * (other.bullet_timefac_min + random(other.bullet_timefac_add));
	            alarm[0] = bulletlife;
	            //direction = (other.dir) * ((40 + random(global.soulparanoia)) / 40);
				direction = other.dir
				scr_Spiritual_Stats_Boss_Bullet_Effects();
	        }
	    }



}
