function scr_E10() {
	// Location Shot Creation

	if global.E[10] > 0 {
	    stop = (current_weapon_stats.Shot_Power / 1.5) * global.E[10] + irandom(149);
	    if stop >= 150 {
	    repeat(7) {
	        with instance_create(x,y,obj_Bullet_Conquest) {
	            speed = 7 + random(23);
	            direction = random(360);
	            alarm[0] = 5 + irandom(4);
	        }
	    }
	    }
	    with(obj_Bullet_Parent) {
	        if other.stop >= 150
	        if distance_to_object(other) <= (100 + global.E[10] * 25) {
	            bulletspeed = bulletspeed / 10;
	            speed = speed / 10;
	            }
	        }
	}




}
