if distance_to_object(obj_Soul) < 260 {
    with instance_create(x,y,obj_Basic_Bullet) {
            scr_Bullet_Replicate_Properties();
            soulshotblock = 0;
            sprite_index = spr_Lightning_Bullet;
            bulletspeed = other.bulletspeed * 2.25;
            bulletpower = other.bulletpower * 0.25;
            move_towards_point(instance_nearest(x,y,obj_Soul).x,instance_nearest(x,y,obj_Soul).y, bulletspeed);
            speed = bulletspeed;
    }
}

alarm[1] = 180 / speed;

