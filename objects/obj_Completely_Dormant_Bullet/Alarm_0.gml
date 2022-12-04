
      with instance_create(x,y,obj_Basic_Bullet) {
            scr_Bullet_Replicate_Properties();
            bulletlifespan = 190;
            alarm[0] = bulletlifespan;
            sprite_index = other.sprite_index;
            bulletspeed = other.bulletspeed;
            bulletpower = other.bulletpower;
            bulletsize = other.bulletsize;
            image_xscale = bulletsize;
            image_yscale = bulletsize;
            speed = bulletspeed;
            direction = other.direction;
        }
    
    instance_destroy();

