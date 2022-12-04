/// @description Insert description here
// You can write your code in this editor

dir = -20 + (-10 + random(20));
    repeat(18) {
        dir += 20;
        with instance_create(x,y,obj_Basic_Bullet) {
            scr_Bullet_Replicate_Properties();
            sprite_index = spr_Glowy_Pink_Shot;
            bulletspeed = other.bulletspeed * 2.25;
            bulletpower = other.bulletpowermax * 0.5;
            speed = bulletspeed;
            direction = other.direction + other.dir;
        }
    }

// Inherit the parent event
event_inherited();

