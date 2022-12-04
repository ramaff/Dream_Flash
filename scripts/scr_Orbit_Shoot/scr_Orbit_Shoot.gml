function scr_Orbit_Shoot(orbital_distance, orbital_target, orbital_soul_angle) {
	
	scr_Spirit_Boss_BullFX_Pre();

	    var dir = 0;
	    repeat(bullet_count) {
	        with instance_create(x,y,bullet_type) {
	            scr_Bullet_Shoot_Properties();
	            image_angle = direction;
	            target = orbital_target;
	            bulletspeed = other.bullet_speed;
	            bulletOrbit = orbital_distance;
				bulletOrbitSpeed = bulletOrbit;
				if orbital_soul_angle = true {
					bulletAngle = point_direction(x,y,obj_Soul_Parent.x,obj_Soul_Parent.y) + (180 / other.bullet_count);
					bulletAngle += dir;
				} else {
					bulletAngle = other.bullet_direction + dir;	
				}
	            bulletCenterX = other.x;
	            bulletCenterY = other.y;
	            //bulletAngle += (360 / other.bullet_count) * ((40 + random(global.soulparanoia)) / 40);
	        }
	        dir += 360 / bullet_count;
	    }



}
