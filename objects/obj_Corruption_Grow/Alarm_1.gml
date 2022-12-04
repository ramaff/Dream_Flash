var dir = 0;
repeat(4) {
    with instance_create(x,y,obj_Corruption_Bomb) {
        scr_Bullet_Replicate_Properties();
		bulletlifespan = 120;
		alarm[0] = bulletlifespan;
		bulletbounceY = 120;
        bulletbouncespeed = 10;
        bulletbouncedirection = -1;
		image_speed = 0.33;
        bulletsize = 0.6 + random(0.1);
        image_xscale = bulletsize;
        image_yscale = bulletsize;
        soulshotblock = 0;
        sprite_index = spr_Big_Glowy_Green_Shot;
        bulletspeed = other.bulletspeed * (0.9);
        bulletpower = other.bulletpower;
        direction = dir;
        //direction += other.dir;
        speed = bulletspeed;
    }   
    dir += 360 / 4;
}
	dir = 0;
	repeat(30) {
        with instance_create(x,y,obj_Basic_Bullet) {
            scr_Bullet_Replicate_Properties();
			bullet_lifespan = 240;
			bulletsize = 0.5;
			image_xscale = bulletsize;
			image_yscale = bulletsize;
            sprite_index = spr_Glowy_Green_Shot;
            bulletspeed = other.bulletspeed * (0.6);
            bulletpower = other.bulletpower * 0.5;
            speed = bulletspeed;
            direction = dir;
        }
		dir += 360 / 30;
    }

instance_destroy();

