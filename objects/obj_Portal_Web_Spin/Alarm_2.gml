/// @description Insert description here
// You can write your code in this editor

	var dir = 0;
	repeat(8) {
		with instance_create(x,y,obj_Basic_Bullet) {
	        scr_Bullet_Replicate_Properties();
            bulletsize = 0.5;
            image_xscale = bulletsize;
            image_yscale = bulletsize;
            sprite_index = spr_Glowy_Dreamy_Shot;
            bulletspeed = other.bulletspeed * 1;
            bulletpower = other.bulletpower * 0.5;
            direction = other.patterndir + dir;
            speed = bulletspeed;
		}
		dir += 360 / 8;
	}

alarm[2] = 150;