function scr_Suicide_Even_Shoot(bullet_count = 1, bullet_speed = 4, bullet_life = 240, bullet_direction = 0, bullet_spread = 360) {

	dir = bullet_direction + random(bullet_spread * (bullet_count - 1) / 2);
	
		
	scr_Spirit_Boss_BullFX_Pre()
		
	repeat(bullet_count) {
	    dir += bullet_spread / bullet_count;
	    with instance_create(x,y,bullet_type) {
	        scr_Bullet_Shoot_Properties();
	        bulletspeed = bullet_speed;
	        bulletlife = bullet_life * (other.bullet_timefac_min + random(other.bullet_timefac_add));
	        alarm[0] = bulletlife;
	        //direction = (other.dir) * ((40 + random(global.soulparanoia)) / 40);
			direction = other.dir
			scr_Spiritual_Stats_Boss_Bullet_Effects();
	    }
	}
}
