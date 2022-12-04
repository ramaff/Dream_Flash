/// @description Insert description here
// You can write your code in this editor
    
    dir = scr_Soul_Point() - 60 + random(120);
    
    repeat(7) {
        ddir = -25 + random(50);
        with instance_create(x,y,obj_Basic_Bullet) {
            scr_Bullet_Replicate_Properties();
            sprite_index = spr_Glowy_Purple_Shot;
            bulletspeed = other.bulletspeed * (0.95 + random(0.43));
            bulletpower = other.bulletpowermax * 0.5;
            speed = bulletspeed;
            direction = other.dir + other.ddir;
        }
    }

// Inherit the parent event
event_inherited();

