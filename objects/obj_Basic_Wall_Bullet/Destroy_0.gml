/// @description Insert description here
// You can write your code in this editor

var dir = random(360);
    repeat(8) {
        dir += 45;
        with instance_create(x,y,obj_Basic_Bullet) {
            scr_Bullet_Replicate_Properties();
            sprite_index = spr_Glowy_Cyan_Shot;
            bulletspeed = other.bulletspeed * 1.25;
            bulletpower = other.bulletpowermax * 0.66;
            speed = bulletspeed;
            direction = other.direction + dir;
        }
    }

// Inherit the parent event
event_inherited();

