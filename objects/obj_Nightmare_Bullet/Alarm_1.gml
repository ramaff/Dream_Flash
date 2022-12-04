
    repeat(1) {
        with instance_create(x,y,obj_Basic_Bullet) {
            scr_Bullet_Replicate_Properties();
            sprite_index = spr_Glowy_Enemy_Shot;
            bulletspeed = other.bulletspeed * (0.3 + random(0.2));
            bulletpower = other.bulletpower * 0.5;
            bulletsize = 0.5;
            image_xscale = bulletsize;
            image_yscale = bulletsize;
            speed = bulletspeed;
            direction = other.direction - 120 + random(120);
        }
    }
alarm[1] = 18 + irandom(8);

