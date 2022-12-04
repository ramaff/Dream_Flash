
var dir = -45;
var dist = 150;

	
	repeat(4) {

	    with instance_create(x,y,obj_School_Bullet) {
	            scr_Bullet_Replicate_Properties();
				target = other.id;
	            soulshotblock = 0;
	            sprite_index = other.sprite_index;
				bulletsize = other.bulletsize;
				image_xscale = bulletsize;
				image_yscale = bulletsize;
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

repeat(3) {

	    with instance_create(x,y,obj_School_Bullet) {
	            scr_Bullet_Replicate_Properties();
				target = other.id;
	            soulshotblock = 0;
	            sprite_index = other.sprite_index;
				bulletsize = other.bulletsize;
				image_xscale = bulletsize;
				image_yscale = bulletsize;
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