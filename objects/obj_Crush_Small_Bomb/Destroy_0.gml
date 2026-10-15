/// @description Insert description here
// You can write your code in this editor

    dir = random(360);
	ddir = 0;
	bulletlife = bulletlife * 2;
	dir += 180 / 2;

	dir += 180 / 6;
	repeat(6) {
        with instance_create_depth(x,y,0,obj_Basic_Bullet) {
            scr_Bullet_Replicate_Properties();
			bulletsize = 0.5;
			image_xscale = bulletsize;
			image_yscale = bulletsize;
            sprite_index = spr_Glowy_Enemy_Shot;
            bulletspeed = other.bulletspeed * 0.75;
            bulletpower = other.bulletpowermax * 0.5;
            speed = bulletspeed;
            direction = other.direction + other.dir + other.ddir;
        }
		ddir += 360 / 6;
    }

// Inherit the parent event
event_inherited();

