dir = -18 + (-9 + random(18));
    repeat(20) {
        dir += 18;
        circle = 0;
        repeat(3) {
            with instance_create(x,y,obj_Basic_Bullet) {
                scr_Bullet_Replicate_Properties();
                sprite_index = spr_Glowy_Enemy_Shot;
                bulletspeed = other.bulletspeed * (0.65 + other.circle * 0.1);
                bulletpower = other.bulletpower * 0.5;
                bulletsize = 0.5;
                image_xscale = bulletsize;
                image_yscale = bulletsize;
                speed = bulletspeed;
                direction = other.direction + other.dir;
            }
            circle += 1;
        }
    }
    
instance_destroy();

