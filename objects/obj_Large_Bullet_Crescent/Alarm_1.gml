
var dir = -75;
var dist = 250;

	
	repeat(6) {

	    with instance_create(x,y,obj_School_Bullet) {
	            scr_Bullet_Replicate_Properties();
				target = other.id;
	            soulshotblock = 0;
	            sprite_index = spr_Glowy_Blue_Shot;
				bulletsize = 0.5;
	            bulletspeed = 0.75;
	            bulletpower = other.bulletpower * 1;
	            speed = bulletspeed;
	            direction =  dir;
	            bulletOrbit = dist;
	            bulletAngle = direction;
	            bulletCenterX = lengthdir_x(dist, dir);
	            bulletCenterY = lengthdir_y(dist, dir);
	    }
		
		dir += 15;
		dist += 0;
    
	}
	
		dist -= 0;

repeat(5) {

	    with instance_create(x,y,obj_School_Bullet) {
	            scr_Bullet_Replicate_Properties();
				target = other.id;
	            soulshotblock = 0;
	            sprite_index = spr_Glowy_Blue_Shot;
				bulletsize = 0.5;
	            bulletspeed = 0.75;
	            bulletpower = other.bulletpower * 1;
	            speed = bulletspeed;
	            direction =  dir;
	            bulletOrbit = dist;
	            bulletAngle = direction;
	            bulletCenterX = lengthdir_x(dist, dir);
	            bulletCenterY = lengthdir_y(dist, dir);
	    }
		
		dir += 15;
		dist -= 0;
    
	}