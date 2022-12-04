
var dir = random(1);

	
	repeat(3) {

	    dir += 1;

	    with instance_create(x,y,obj_Orbital_Increase_Bullet) {
	            scr_Bullet_Replicate_Properties();
				target = other.id;
	            soulshotblock = 0;
	            sprite_index = other.sprite_index;
				bulletsize = 0.5;
	            bulletspeed = other.bulletspeed * 0.333;
	            bulletpower = other.bulletpower * 1;
	            speed = bulletspeed;
	            direction = dir * 120;
	            bulletOrbit = 100;
	            bulletAngle = direction;
	            bulletCenterX = other.x;
	            bulletCenterY = other.y;
	    }
    
	}

