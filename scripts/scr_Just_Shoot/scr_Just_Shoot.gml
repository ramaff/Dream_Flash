function scr_Just_Shoot(absolute_pos = false) {
	scr_Spirit_Boss_BullFX_Pre();
	    dir = -(bullet_spread * (bullet_count - 1) / 2);
	    var xx = x + boss_xoffset;
		var yy = y + boss_yoffset;
		if absolute_pos {
			xx = boss_xoffset;	
			yy = boss_yoffset;	
		}
		repeat(bullet_count) {
	        with instance_create(xx, yy,bullet_type) {
	            scr_Bullet_Shoot_Properties();
	            //direction = other.bullet_direction + (other.dir) * ((40 + random(global.soulparanoia)) / 40);
				direction = other.bullet_direction + other.dir;
				scr_Spiritual_Stats_Boss_Bullet_Effects();
	        }
	        dir += bullet_spread;
	    }



}
