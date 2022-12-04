repeat(4) {

    dir += 1;

    with instance_create(x,y,obj_Basic_Laser_Bullet) {
            scr_Bullet_Replicate_Properties();
            soulshotblock = 0;
            sprite_index = spr_Magic_Shot;
            bulletspeed = other.bulletspeed * 2;
            bulletpower = other.bulletpower * 0.5;
            speed = bulletspeed;
            direction = other.dir * 90;
    }
    
}

dir += 0.06;

alarm[1] = 30 + random(30);

