/// @description Insert description here
// You can write your code in this editor

dir = random(360);
    repeat(8) {
        dir += 45;
        with instance_create(x,y,obj_Original_Home_Bullet) {
            scr_Bullet_Replicate_Properties();
            sprite_index = spr_Glowy_Enemy_Shot;
            bulletspeed = other.bulletspeed * 1.4;
            bulletpower = other.bulletpowermax * 0.5;
            speed = bulletspeed;
            direction = other.direction + other.dir;
            bulletlifespan = 120;
            alarm[0] = 120;
        }
    }

// Inherit the parent event
event_inherited();

