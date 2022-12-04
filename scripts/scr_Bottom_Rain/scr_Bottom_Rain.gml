function scr_Bottom_Rain() {
	scr_Spirit_Boss_BullFX_Pre();
	    dir = -(bullet_spread * (bullet_count - 1) / 2);
	    repeat(bullet_count) {
	        dir = -(bullet_spread / 2) + random(bullet_spread);
	        with instance_create((room_width / 2) - (global.roomSizeX / 2) + random(global.roomSizeX),3 * room_height / 4,bullet_type) {
	            scr_Bullet_Shoot_Properties();
	            //direction = other.bullet_direction + (other.dir) * ((40 + random(global.soulparanoia)) / 40);
				direction = other.bullet_direction + other.dir;
				scr_Spiritual_Stats_Boss_Bullet_Effects();
	        }
	    }



}
