alarm[1] = (30 + random(30)) / (1 + imagespeed);

dir = 0;
spd = 8;
    repeat(6) {
        spd += 2;
        out = 0;
        with instance_create(x + lengthdir_x(96 + out, image_angle),y + lengthdir_y(96 + out, image_angle),obj_Basic_Bullet) {
            scr_Bullet_Replicate_Properties();
            sprite_index = spr_Glowy_Blue_Shot;
            bulletsize = 0.575;
            bulletlife = 300;
            alarm[0] = bulletlife;
            bulletspeed = other.bulletspeed * 2;
            bulletpower = other.bulletpower * 0.5;
            speed = bulletspeed * other.spd;
            direction = other.image_angle + other.dir - 5 + irandom(10);
        }
    }

