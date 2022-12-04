
      with instance_create(x,y,obj_Accel_Spin_Bullet) {
            scr_Bullet_Replicate_Properties();
            bulletlifespan = 190;
            alarm[0] = bulletlifespan;
            sprite_index = other.sprite_index;
            bulletspeed = other.bulletspeed * 0.666;
            bulletpower = other.bulletpower;
            bulletsize = 0.5;
            image_xscale = bulletsize;
            image_yscale = bulletsize;
            speed = 0;
            direction = other.direction;
        }
    
    instance_destroy();

