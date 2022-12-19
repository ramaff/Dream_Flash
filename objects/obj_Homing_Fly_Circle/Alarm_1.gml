
dir += bulletspeed * 0.33 / 90 * 30;

	
	repeat(6) {

	    dir += 1;

	    with instance_create(x,y,obj_Follower_Orbital_Bullet) {
	            scr_Bullet_Replicate_Properties();
				target = other.id;
	            soulshotblock = 0;
	            sprite_index = spr_Fly_Bullet;
				bulletsize = 0.5;
	            bulletspeed = other.bulletspeed * 0.2;
	            bulletpower = other.bulletpower * 1;
	            speed = bulletspeed;
	            direction = other.dir * 60;
	            bulletOrbit = 250;
	            bulletAngle = direction;
	            bulletCenterX = other.x;
	            bulletCenterY = other.y;
	    }
    
	}

