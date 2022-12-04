function scr_Spread_Screen_Wipe() {
	    xStart = (room_width / 2) - global.roomSizeX;
    
	    if bossPatternDirection = 180 {
	        xStart += 2 * global.roomSizeX;
	    }
    
	    rightStartY = (room_height / 2) - (global.roomSizeY / 2) + 0.5 * (global.roomSizeY / bullet_count);
	    bulletRightY = rightStartY;
		scr_Spirit_Boss_BullFX_Pre();
	    dir = -(bullet_spread * (bullet_count - 1) / 2);
	    repeat(bullet_count) {
	        dir = -(bullet_spread / 2) + random(bullet_spread);
	        with instance_create(xStart,bulletRightY,bullet_type) {
	            scr_Bullet_Shoot_Properties();
	            speed = speed;
	            //direction = other.bullet_direction + (other.dir) * ((40 + random(global.soulparanoia)) / 40);
				direction = other.bullet_direction + other.dir;
				scr_Spiritual_Stats_Boss_Bullet_Effects();
	        }
	        //dir += -0.2 + random(0.4)
	        bulletRightY += (global.roomSizeY / bullet_count);
	    }



}
