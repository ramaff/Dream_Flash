alarm[1] = (30 + random(30)) / (1 + imagespeed);

dir = 0;
spd = 8;
    repeat(6) {
        spd += 2;
        with instance_create(x + lengthdir_x(64, image_angle),y + lengthdir_y(64, image_angle),obj_Basic_Bullet) {
            scr_Bullet_Replicate_Properties();
            sprite_index = spr_Flash_Shot;
            bulletsize = 1.2;
            image_xscale = 1.2;
            image_yscale = 1.2;
            bulletspeed = other.bulletspeed * 2;
            bulletpower = other.bulletpower * 0.5;
            speed = bulletspeed * other.spd;
            direction = other.image_angle + other.dir - 5 + irandom(10);
        }
    }

