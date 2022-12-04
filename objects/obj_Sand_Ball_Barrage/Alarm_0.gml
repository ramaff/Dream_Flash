dir = -45 + (random(90));
    repeat(8) {
        dir += 45;
        with instance_create(x,y,obj_Basic_Bullet) {
            bulletlifespan = 300;
            scr_Bullet_Replicate_Properties();
            sprite_index = spr_Glowy_Enemy_Shot;
            bulletspeed = other.bulletspeed * (0.75 + random(0.25));
            bulletpower = other.bulletpower * 0.5;
            alarm[0] = 300;
            bulletsize = 0.5;
            image_xscale = bulletsize;
            image_yscale = bulletsize;
            speed = bulletspeed;
            direction = other.direction + other.dir;
        }
    }
    
instance_destroy();

