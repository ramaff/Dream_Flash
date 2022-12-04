/// @description Insert description here
// You can write your code in this editor

dir = -30 + (-15 + random(30));
    repeat(12) {
        dir += 30;
        with instance_create(x,y,obj_Basic_Bullet) {
            scr_Bullet_Replicate_Properties();
            sprite_index = spr_Glowy_Enemy_Shot;
            bulletspeed = other.bulletspeed * 1.5;
            bulletpower = other.bulletpower * 0.5;
            speed = bulletspeed;
            direction = other.direction + other.dir;
            bulletlifespan = 180;
            alarm[0] = 180;
        }
    }

// Inherit the parent event
event_inherited();