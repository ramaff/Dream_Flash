    with instance_create(x,y,obj_Direction_Bullet) {
            scr_Bullet_Replicate_Properties();
            bulletsize = 0.5;
            image_xscale = bulletsize;
            image_yscale = bulletsize;
            sprite_index = spr_Yellow_Laser;
            bulletspeed = other.bulletspeed * 0.175;
            bulletpower = other.bulletpower * 0.5;
            move_towards_point(instance_nearest(x,y,obj_Soul).x,instance_nearest(x,y,obj_Soul).y, bulletspeed);
            speed = bulletspeed;
    }

alarm[2] = 120;

