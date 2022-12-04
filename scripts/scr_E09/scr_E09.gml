function scr_E09() {
	// Location Soul Teleport

	if global.E[9] > 0 {
	    repeat(7) {
	        with instance_create(x,y,obj_Time_Warp) {
	            speed = 2 + random(2);
	            direction = random(360);
	            alarm[0] = 20 + irandom(20);
	        }
	    }
	    repeat(global.E[9]) {
	        with(obj_Boss_Parent) {
				if (point_distance(x,y,other.x,other.y) <= 200 + 50 * global.E[9]) {
		            var wasFrozen = 1;
		            if bossfreezetype = 0 {
		                wasFrozen = 0;
		            }
		            bossfreezetype = 0.3;
		            bossfreeze = 3;
		            bossfreezedown = 1;
		            if wasFrozen = 0 {
		                bossattackspeed = bossattackspeed * (0.7 / (1 + global.teleportboost));
		                bossmovespeed = bossmovespeed * (0.7 / (1 + global.teleportboost));
		                speed = speed * (0.7 / (1 + global.teleportboost));
		                path_speed = path_speed * (0.7 / (1 + global.teleportboost));
		            }
				}
	        }
	        with(obj_Bullet_Parent) {
				if (point_distance(x,y,other.x,other.y) <= 230 + 50 * global.E[9]) {
					bulletspeed = bulletspeed / (2 * (1 + global.teleportboost));
					speed = speed / (2 * (1 + global.teleportboost));
				}
	        }
	    }
	}




}
