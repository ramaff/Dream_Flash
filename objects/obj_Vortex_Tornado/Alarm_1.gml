dir = bullDir;
    repeat(3) {
        dir += 120;
        with instance_create(x,y,obj_Spin_Quickest_Phase_Bullet) {
            scr_Bullet_Replicate_Properties();
			bulletlife = 90;
			alarm[0] = bulletlife;
            sprite_index = spr_Vortex_Shot;
            bulletspeed = other.bulletspeed * 4;
            bulletpower = other.bulletpower * 0.5;
            bulletsize = other.bulletsize;
            image_xscale = bulletsize;
            image_yscale = bulletsize;
            speed = bulletspeed;
            direction = other.direction + other.dir;
        }
    }
alarm[1] = 75 + random(15);
//bullDir += 12 + irandom(6);

