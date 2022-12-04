function scr_Soul_Top_Rain() {
	scr_Spirit_Boss_BullFX_Pre();
	    dir = -(bullet_spread * (bullet_count - 1) / 2);
	    repeat(bullet_count) {
	        with instance_create(obj_Soul_Parent.x,(room_height / 2) - (global.roomSizeY / 2) - 500,bullet_type) {
	            scr_Bullet_Shoot_Properties();
	            //direction = other.bullet_direction + (other.dir) * ((40 + random(global.soulparanoia)) / 40);
				direction = other.bullet_direction + other.dir;
				scr_Spiritual_Stats_Boss_Bullet_Effects();
	        }
	        dir += bullet_spread;
	    }



}
