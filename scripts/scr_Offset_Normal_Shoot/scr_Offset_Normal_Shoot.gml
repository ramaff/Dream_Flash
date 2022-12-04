function scr_Offset_Normal_Shoot() {
	scr_Spirit_Boss_BullFX_Pre()
	    dir = -(bullet_spread * (bullet_count - 1) / 2);
	    repeat(bullet_count) {
	        with instance_create(x + boss_xoffset,y + boss_yoffset,bullet_type) {
	            scr_Bullet_Shoot_Properties();
	            //direction = other.bullet_direction + (other.dir) * ((40 + random(global.soulparanoia)) / 40);
				direction = other.bullet_direction + other.dir;
				scr_Spiritual_Stats_Boss_Bullet_Effects();
	        }
	        dir += bullet_spread;
	    }



}
