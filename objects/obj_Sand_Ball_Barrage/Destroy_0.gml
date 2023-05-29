/// @description Insert description here
// You can write your code in this editor
dir = -45 + (random(90));
    repeat(12) {
        dir += 30;
        with instance_create(x,y,obj_Basic_Bullet) {
            bulletlifespan = 300;
            scr_Bullet_Replicate_Properties();
            sprite_index = spr_Glowy_Enemy_Shot;
            bulletspeed = other.bulletspeed * 1;
            bulletpower = other.bulletpower * 0.5;
            alarm[0] = 300;
            bulletsize = 0.5;
            image_xscale = bulletsize;
            image_yscale = bulletsize;
            speed = bulletspeed;
            direction = other.direction + other.dir;
        }
    }
    