dir = -45 + (-22.5 + random(45));
    repeat(8) {
        dir += 45;
        with instance_create_depth(x,y,0,obj_Basic_Bullet) {
            scr_Bullet_Replicate_Properties();
            sprite_index = spr_Glowy_Pink_Shot;
            bulletspeed = other.bulletspeed * 0.8;
            bulletpower = other.bulletpowermax * 0.5;
            speed = bulletspeed;
            direction = other.direction + other.dir;
        }
}

event_inherited();

