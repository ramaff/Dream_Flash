dir += bulletspeed * 0.33 / 90 * 30;
repeat(4) {

    dir += 1;

    with instance_create(x,y,obj_Orbital_Bullet) {
            scr_Bullet_Replicate_Properties();
			target = other.id;
            soulshotblock = 0;
            sprite_index = spr_Glowy_Cyan_Shot;
			bulletsize = 0.5;
            bulletspeed = other.bulletspeed * 0.166;
            bulletpower = other.bulletpower * 0.166;
            speed = bulletspeed;
            direction = other.dir * 90;
            bulletOrbit = 50 * (15 - other.orbitsum);
            bulletAngle = direction;
            bulletCenterX = other.x;
            bulletCenterY = other.y;
    }
    
}

orbitsum--;

if orbitsum > 0 {
	alarm[1] = 15;
}

