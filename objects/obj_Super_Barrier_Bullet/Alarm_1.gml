
dir = 0;

repeat(2) {
	
	repeat(4) {

	    dir += 1;

	    with instance_create(x,y,obj_Orbital_Bullet) {
	            scr_Bullet_Replicate_Properties();
				target = other.id;
	            soulshotblock = 0;
	            sprite_index = spr_Glowy_Enemy_Shot;
				bulletsize = 0.5;
	            bulletspeed = 0;
	            bulletpower = other.bulletpower * 0.333;
	            speed = 0;
	            direction = other.dir * 90;
	            bulletOrbit = 50 * (19 - other.orbitsum);
	            bulletAngle = direction;
	            bulletCenterX = other.x;
	            bulletCenterY = other.y;
	    }
    
	}

	orbitsum--;

}

if orbitsum > 0 {
	alarm[1] = 20;
}

