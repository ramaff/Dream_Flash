    /*
    dir = point_direction(x,y,obj_Soul_Parent.x,obj_Soul_Parent.y) - 60 + random(120);
    
    repeat(7) {
        ddir = -25 + random(50);
        with instance_create(x,y,obj_Direction_Bullet) {
            scr_Bullet_Replicate_Properties();
            sprite_index = spr_Periwinkle_Shot;
            bulletspeed = other.bulletspeed * (0.95 + random(0.43));
            bulletpower = other.bulletpower * 0.5;
            speed = bulletspeed;
            direction = other.dir + other.ddir;
        }
    }
    */
instance_destroy();

