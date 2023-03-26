function scr_Boss_Shoot(absolute_pos = false) {
	scr_Spirit_Boss_BullFX_Pre();
	    var dir = -(bullet_spread * (bullet_count - 1) / 2);
	    var xx = x + boss_xoffset;
		var yy = y + boss_yoffset;
		if absolute_pos {
			xx = boss_xoffset;	
			yy = boss_yoffset;	
		}
		var bull = bullet_type;
		if bullet_charged {
			bull = obj_Grow_Bullet_Ball;	
		}
		repeat(bullet_count) {
	        with instance_create(xx, yy, bull) {
	            scr_Bullet_Shoot_Properties();
				if other.bullet_charged {
					bulletgrowinto = other.bullet_type;
				}
	            //direction = other.bullet_direction + (other.dir) * ((40 + random(global.soulparanoia)) / 40);
				direction = other.bullet_direction + dir;
				scr_Spiritual_Stats_Boss_Bullet_Effects();
	        }
	        dir += bullet_spread;
	    }



}
