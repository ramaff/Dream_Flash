/// @description Insert description here
// You can write your code in this editor

dir = -45 + (-22.5 + random(45));
    repeat(8) {
        dir += 45;
        with instance_create(x,y,obj_Basic_Bullet) {
            scr_Bullet_Replicate_Properties();
			bulletlife = 300;
			alarm[0] = bulletlife;
            sprite_index = spr_Glowy_Blue_Shot;
            bulletspeed = other.bulletspeed * 1.25;
            bulletpower = round(other.bulletpowermax * 0.5);
            speed = bulletspeed;
            direction = other.direction + other.dir;
        }
    }

// Inherit the parent event
event_inherited();

