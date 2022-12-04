
        with instance_create(x,y,obj_Despair_Orbit_Bullet) {
            scr_Bullet_Replicate_Properties();
            sprite_index = spr_Despair_Bullet;
            bulletspeed = other.bulletspeed * 0.65;
            bulletpower = other.bulletpower;
            bulletsize = 0.5;
            image_xscale = bulletsize;
            image_yscale = bulletsize;
            originX = other.startX
            originY = other.startY
            bulletOrbit = distance_to_point(other.startX,other.startY);
            bulletAngle = point_direction(x,y,other.startX,other.startY);
            bulletCenterX = originX;
            bulletCenterY = originY;
            speed = bulletspeed;
            direction = other.direction;
        }
    
    instance_destroy();

