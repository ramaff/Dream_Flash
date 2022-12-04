/// @description Insert description here
// You can write your code in this editor

dir = -90 + (-45 + random(90));
    repeat(8) {
        dir += 45;
        with instance_create(x,y,obj_Basic_Bullet) {
            scr_Bullet_Replicate_Properties();
            sprite_index = spr_Glowy_Purple_Shot;
            bulletspeed = 4;
            bulletpower = other.bulletpowermax;
            speed = bulletspeed;
            direction = other.direction + other.dir;
            bulletlifespan = 300;
            alarm[0] = 300;
			
			bulletsize -= 0.075;
			image_xscale = bulletsize;
			image_yscale = bulletsize;
        }
    }

// Inherit the parent event
event_inherited();

