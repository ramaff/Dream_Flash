with instance_create(x,y,obj_Laser_Beam) {
            
            bulletID = id;
            projectile_hit_id = noone;
            projectile_hits = ds_list_create();
            bossPart = 0;
            soulshotblock = other.soulshotblock;
            baseDepth = 0;

            image_speed = other.image_speed;
            bulletsize = other.image_xscale;
            image_xscale = bulletsize;
            image_yscale = bulletsize;
            bulletspeed = other.bulletspeed;
            bulletpower = other.bulletpower;
            speed = bulletspeed;
            direction = other.direction;
            image_angle = other.image_angle;
        }
        
instance_destroy();

