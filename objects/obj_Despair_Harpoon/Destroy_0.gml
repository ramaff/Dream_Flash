/// @description Insert description here
// You can write your code in this editor

dir = -18 + (-9 + random(18));
    repeat(20) {
        dir += 18;
        with instance_create(x,y,obj_Basic_Bullet) {
            scr_Bullet_Replicate_Properties();
            sprite_index = spr_Glowy_Night_Shot;
            bulletspeed = other.bulletspeed * 0.6;
            bulletpower = other.bulletpowermax * 0.5;
            speed = bulletspeed;
            direction = other.direction + other.dir;
        }
    }

// Inherit the parent event
event_inherited();

