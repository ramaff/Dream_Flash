if distance_to_object(obj_Soul) < 250 {
    with instance_create(x,y,obj_Basic_Bullet) {
            scr_Bullet_Replicate_Properties();
            bulletsize = 0.5;
            image_xscale = bulletsize;
            image_yscale = bulletsize;
            sprite_index = spr_Glowy_Pink_Shot;
            bulletspeed = 1.5 + other.bulletspeed * 1.1;
            bulletpower = other.bulletpower * 0.5;
            direction = scr_Soul_Point();
            speed = bulletspeed;
    }
}

alarm[1] = 40;

