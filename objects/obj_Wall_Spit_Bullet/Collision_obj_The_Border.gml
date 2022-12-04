/*
dir = -25 + (-3 + random(6));
    repeat(2) {
        with instance_create(x,y,obj_Basic_Bullet) {
            scr_Bullet_Replicate_Properties();
            sprite_index = spr_Ache_Bullet;
            bulletspeed = other.bulletspeed * 1;
            //bulletlife = 150;
            //alarm[0] = 150;
            bulletsize = 1;
            image_xscale = bulletsize;
            image_yscale = bulletsize;
            bulletpower = other.bulletpower;
            speed = bulletspeed;
            direction = other.direction + 180 + other.dir;
        }
        dir += 50;
    }
	*/
instance_destroy();

