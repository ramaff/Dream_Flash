/// @description Insert description here
// You can write your code in this editor

var dir = random(360)
    repeat(6) {
        dir += 360 / 6;
        with instance_create(x,y,obj_Basic_Bullet) {
            scr_Bullet_Replicate_Properties();
            sprite_index = spr_Glowy_Enemy_Shot;
            bulletspeed = other.bulletspeed * 1.1;
            bulletpower = other.bulletpowermax * 0.66;
            speed = bulletspeed;
            direction = other.direction + dir;
            bulletlifespan = 180;
            alarm[0] = 180;
        }
    }

// Inherit the parent event
event_inherited();