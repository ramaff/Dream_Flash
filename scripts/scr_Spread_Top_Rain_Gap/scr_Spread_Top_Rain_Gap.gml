function scr_Spread_Top_Rain_Gap(argument0) {
	    var gap = argument0;
	
		topStartX = (room_width / 2) - (global.roomSizeX / 2) + 0.5 * (global.roomSizeX / bullet_count);
	    bulletTopX = topStartX;
		scr_Spirit_Boss_BullFX_Pre();
	    dir = -(bullet_spread * (bullet_count - 1) / 2);
	    //bulletTopX += -((global.roomSizeX / bullet_count) / 2) + random(global.roomSizeX / bullet_count);
		var bcount = 0;
	    repeat(bullet_count) {
			bcount++;
	        dir = -(bullet_spread / 2) + random(bullet_spread);
			if ((bcount != gap) and  (bcount != gap + 1) and (bcount != gap + 2) and (bcount != gap + 3) and (bcount != gap + 4) and (bcount != gap + 5) and (bcount != gap + 6) and (bcount != gap + 7) and (bcount != gap + 8)) {
		        with instance_create(bulletTopX,(room_height / 2) - (global.roomSizeY / 2) - 500,bullet_type) {
		            scr_Bullet_Shoot_Properties();
		            speed = speed * (0.85 + random(0.25));
		            //direction = other.bullet_direction + (other.dir) * ((40 + random(global.soulparanoia)) / 40);
					direction = other.bullet_direction + other.dir;
					scr_Spiritual_Stats_Boss_Bullet_Effects();
		        }
			}
	        //dir += -0.2 + random(0.4)
	        bulletTopX += (global.roomSizeX / bullet_count);
	    }



}
