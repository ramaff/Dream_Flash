/// @description Insert description here
// You can write your code in this editor
dir = -45 + (-22.5 + random(45));
    repeat(8) {
        dir += 45;
        with instance_create(x,y,obj_Basic_Bullet) {
            scr_Bullet_Replicate_Properties();
            sprite_index = spr_Glowy_Cyan_Shot;
			bulletsize = 0.5
			image_xscale = bulletsize;
			image_yscale = bulletsize;
            bulletspeed = other.bulletspeed * 0.8;
            bulletpower = other.bulletpowermax * 0.66;
            speed = bulletspeed;
            direction = other.direction + other.dir;
			
			bulletlifespan = 300;
			alarm[0] = bulletlifespan;
        }
    }

// Inherit the parent event
event_inherited();