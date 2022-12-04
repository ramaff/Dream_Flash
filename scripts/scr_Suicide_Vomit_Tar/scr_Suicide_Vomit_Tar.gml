function scr_Suicide_Vomit_Tar() {
	scr_Spirit_Boss_BullFX_Pre();
	repeat(bullet_count) {
	    dir = -(bullet_spread / 2) + random(bullet_spread);
	    with instance_create(x,y,bullet_type) {
	        scr_Bullet_Shoot_Properties();
	        bulletspeed = bulletspeed * (other.bullet_speedfac_min + random(other.bullet_speedfac_add));
	        bulletlife = bulletlife * (other.bullet_timefac_min + random(other.bullet_timefac_add));
	        alarm[0] = bulletlife;
	        direction = other.bullet_direction + ((other.dir) * ((40 + random(global.soulparanoia)) / 40));
	    }
	}
}
