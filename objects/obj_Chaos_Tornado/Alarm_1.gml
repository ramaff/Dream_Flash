dir = bullDir;
    repeat(4) {
        dir += 90;
        with instance_create(x,y,obj_Basic_Bullet) {
            scr_Bullet_Replicate_Properties();
            sprite_index = spr_Glowy_Enemy_Shot;
            bulletspeed = other.bulletspeed * 2;
            bulletpower = other.bulletpower * 0.5;
            bulletsize = other.bulletsize;
            image_xscale = bulletsize;
            image_yscale = bulletsize;
            speed = bulletspeed;
            direction = other.direction + other.dir;
        }
    }
alarm[1] = 40 + irandom(15);
bullDir += 45;

