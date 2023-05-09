/// @description Insert description here
// You can write your code in this editor

    var dir = 45;
	bulletlife = bulletlife * 2;
	//dir += 180 / 2;
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
	//dir += 180 / 6;
	repeat(4) {
        with instance_create(x,y,obj_Basic_Bullet) {
            scr_Bullet_Replicate_Properties();
			bullet_lifespan = 300;
			bulletsize = 0.5;
			image_xscale = bulletsize;
			image_yscale = bulletsize;
            sprite_index = spr_Glowy_Green_Shot;
            bulletspeed = other.bulletspeed * (0.8);
            bulletpower = global.stagedamage;
	        bulletpowermax = global.stagedamage;
            speed = bulletspeed;
            direction = dir;
        }
		dir += 360 / 4;
    }
	dir = 45;

// Inherit the parent event
event_inherited();

