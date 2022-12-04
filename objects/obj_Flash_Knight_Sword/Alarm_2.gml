alarm[2] = (10 + random(5)) / (1 + imagespeed);

dir = 0;
spd = 4;
    repeat(1) {
        spd += 5;
        out = random(48)
        with instance_create(x + lengthdir_x(48 + out, image_angle),y + lengthdir_y(48 + out, image_angle),obj_Basic_Bullet) {
            scr_Bullet_Replicate_Properties();
            sprite_index = spr_Glowy_Blue_Shot;
            bulletsize = 0.5;
            bulletlife = 300;
            alarm[0] = bulletlife;
            bulletspeed = other.bulletspeed * 2;
            bulletpower = other.bulletpower * 0.5;
            speed = bulletspeed * other.spd;
            direction = other.image_angle + other.dir;
        }
    }

