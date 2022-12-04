dir = -45 + (-10 + random(20));
    repeat(4) {
        dir += 90;
        with instance_create(x,y,obj_Basic_Laser_Bullet) {
            scr_Bullet_Replicate_Properties();
            sprite_index = spr_Small_Green_Laser;
            bulletspeed = other.bulletspeed * 1.5;
            bulletpower = other.bulletpower * 0.5;
            speed = bulletspeed;
            direction = other.direction + other.dir;
        }
    }
instance_destroy();

