if distance_to_object(obj_Soul) < 210 {
if (bulletpower > (bulletpowermax / 2)) {
    dir = -10;
    repeat(3) {
        with instance_create(x,y,obj_Basic_Bullet) {
            scr_Bullet_Replicate_Properties();
            soulshotblock = 0;
            sprite_index = spr_White_Shot;
            bulletspeed = other.bulletspeed * 1.35;
            bulletpower = other.bulletpower * 0.5;
            direction = scr_Soul_Point();
            direction += other.dir;
            speed = bulletspeed;
        }   
        dir += 10;
    }
}
}

alarm[1] = (120 + random(90)) / speed;

