/// @description Insert description here
// You can write your code in this editor

    var dir = 0;
	bulletlife = bulletlife * 2;
	dir += 180 / 2;
	/*
	repeat(1) {
        with instance_create(x,y,obj_Basic_Bullet) {
            scr_Bullet_Replicate_Properties();
			bulletsize = 0.5;
			image_xscale = bulletsize;
			image_yscale = bulletsize;
            sprite_index = spr_Glowy_Enemy_Shot;
            bulletspeed = other.bulletspeed * 1.2;
            bulletpower = other.bulletpowermax * 0.5;
            speed = bulletspeed;
            direction = scr_Soul_Point();
        }
		ddir += 360 / 2;
    }
	*/
	dir += 180 / 6;
	repeat(3) {
        with instance_create(x,y,obj_Small_Corruption_Bomb) {
            scr_Bullet_Replicate_Properties();
			bulletlifespan = 120;
			alarm[0] = bulletlifespan;
			bulletbounceY = 120;
	        bulletbouncespeed = 10;
	        bulletbouncedirection = -1;
			image_speed = 0.33;
	        bulletsize = 0.5;
	        image_xscale = bulletsize;
	        image_yscale = bulletsize;
	        soulshotblock = 0;
	        sprite_index = spr_Big_Glowy_Green_Shot;
	        bulletspeed = other.bulletspeed * (1);
	        bulletpower = global.stagedamage * 2;
	        bulletpowermax = global.stagedamage * 2;
	        direction = dir;
	        //direction += other.dir;
	        speed = bulletspeed;
        }
		dir += 360 / 3;
    }
	dir = 0;
	repeat(16) {
        with instance_create(x,y,obj_Basic_Bullet) {
            scr_Bullet_Replicate_Properties();
			bullet_lifespan = 240;
			bulletsize = 0.5;
			image_xscale = bulletsize;
			image_yscale = bulletsize;
            sprite_index = spr_Glowy_Green_Shot;
            bulletspeed = other.bulletspeed * (0.6);
            bulletpower = global.stagedamage;
	        bulletpowermax = global.stagedamage;
            speed = bulletspeed;
            direction = dir;
        }
		dir += 360 / 16;
    }

// Inherit the parent event
event_inherited();

