/// @description Insert description here
// You can write your code in this editor

dir = -45 + (-22.5 + random(45));
    repeat(8) {
        dir += 45;
        with instance_create(x,y,obj_Exploding_Hope_Bullet) {
            scr_Bullet_Replicate_Properties();
            sprite_index = spr_Hope_Bullet;
            bulletspeed = other.bulletspeed * (0.65 + random(0.15));
            bulletpower = other.bulletpowermax * 0.5;
            speed = bulletspeed;
            direction = other.direction + other.dir;
        }
    }

// Inherit the parent event
event_inherited();

