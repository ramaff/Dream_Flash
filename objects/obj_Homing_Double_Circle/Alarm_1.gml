
var dir = random(2);

	
	repeat(8) {

	    dir += 1;

	    with instance_create(x,y,obj_Orbital_Increase_Bullet) {
	            scr_Bullet_Replicate_Properties();
				target = other.id;
	            soulshotblock = 0;
	            sprite_index = spr_Glowy_Blue_Shot;
				bulletsize = 0.5;
	            bulletspeed = other.bulletspeed * 0.333;
	            bulletpower = other.bulletpower * 1;
	            speed = bulletspeed;
	            direction = dir * 45;
	            bulletOrbit = 75;
	            bulletAngle = direction;
	            bulletCenterX = other.x;
	            bulletCenterY = other.y;
	    }
    
	}

	repeat(8) {

	    dir += 1;

	    with instance_create(x,y,obj_Orbital_Increase_Bullet) {
	            scr_Bullet_Replicate_Properties();
				target = other.id;
	            soulshotblock = 0;
	            sprite_index = spr_Glowy_Blue_Shot;
				bulletsize = 0.5;
	            bulletspeed = other.bulletspeed * -0.333;
	            bulletpower = other.bulletpower * 1;
	            speed = bulletspeed;
	            direction = dir * 45;
	            bulletOrbit = 200;
	            bulletAngle = direction;
	            bulletCenterX = other.x;
	            bulletCenterY = other.y;
	    }
    
	}

