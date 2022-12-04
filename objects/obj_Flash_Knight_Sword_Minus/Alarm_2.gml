alarm[2] = (10 + random(10)) / (1 + imagespeed);

dir = 0;
spd = 4;
    repeat(1) {
        spd += 5;
        with instance_create(x + lengthdir_x(64, image_angle),y + lengthdir_y(64, image_angle),obj_Basic_Bullet) {
            scr_Bullet_Replicate_Properties();
            sprite_index = spr_Flash_Shot;
            bulletspeed = other.bulletspeed * 2;
            bulletpower = other.bulletpower * 0.5;
            speed = bulletspeed * other.spd;
            direction = other.image_angle + other.dir;
        }
    }

