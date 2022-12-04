/// @description Insert description here
// You can write your code in this editor

dir = random(45)
    repeat(8) {
        dir += 45;
        with instance_create(x,y,obj_Spin_Quick_Phase_Bullet) {
            scr_Bullet_Replicate_Properties();
            sprite_index = spr_Manic_Shot;
            bulletspeed = other.bulletspeed * 1.5;
            bulletpower = other.bulletpowermax * 0.5;
            speed = bulletspeed;
            direction = other.direction + other.dir;
            bulletlifespan = 180;
            alarm[0] = 180;
        }
    }

// Inherit the parent event
event_inherited();