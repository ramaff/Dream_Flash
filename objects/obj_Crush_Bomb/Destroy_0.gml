/// @description Insert description here
// You can write your code in this editor

    dir = random(360);
	ddir = 0;
	bulletlife = bulletlife * 2;
	repeat(6) {
        with instance_create(x,y,obj_Basic_Bullet) {
            scr_Bullet_Replicate_Properties();
			bulletsize = 0.5;
			image_xscale = bulletsize;
			image_yscale = bulletsize;
            sprite_index = spr_Glowy_Enemy_Shot;
            bulletspeed = other.bulletspeed * 1.6;
            bulletpower = other.bulletpowermax * 0.5;
            speed = bulletspeed;
            direction = other.direction + other.dir + other.ddir;
        }
		ddir += 360 / 6;
    }
	dir += 180 / 12;
	repeat(12) {
        with instance_create(x,y,obj_Basic_Bullet) {
            scr_Bullet_Replicate_Properties();
			bulletsize = 0.5;
			image_xscale = bulletsize;
			image_yscale = bulletsize;
            sprite_index = spr_Glowy_Enemy_Shot;
            bulletspeed = other.bulletspeed * 1.25;
            bulletpower = other.bulletpowermax * 0.5;
            speed = bulletspeed;
            direction = other.direction + other.dir + other.ddir;
        }
		ddir += 360 / 12;
    }
	dir += 180 / 24;
	repeat(24) {
        with instance_create(x,y,obj_Basic_Bullet) {
            scr_Bullet_Replicate_Properties();
			bulletsize = 0.5;
			image_xscale = bulletsize;
			image_yscale = bulletsize;
            sprite_index = spr_Glowy_Enemy_Shot;
            bulletspeed = other.bulletspeed * 1;
            bulletpower = other.bulletpowermax * 0.5;
            speed = bulletspeed;
            direction = other.direction + other.dir + other.ddir;
        }
		ddir += 360 / 24;
    }

// Inherit the parent event
event_inherited();

