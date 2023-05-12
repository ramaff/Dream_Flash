dir = bullDir;
    repeat(4) {
        dir += 90;
        with instance_create(x,y,obj_Basic_Bullet) {
            scr_Bullet_Replicate_Properties();
            sprite_index = spr_Glowy_Pink_Shot;
            bulletspeed = other.bulletspeed * 2.25;
            bulletpower = other.bulletpower * 0.5;
            bulletsize = 0.5;
            image_xscale = bulletsize;
            image_yscale = bulletsize;
            speed = bulletspeed;
            direction = other.direction + other.dir - 7.5 + random(15);
        }
    }
alarm[1] = 30 + irandom(6);

