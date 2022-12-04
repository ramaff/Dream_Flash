/// @description Insert description here
// You can write your code in this editor
	var dir = 0;
	repeat(1) {
		with instance_create(x,y,obj_Basic_Bullet) {
	        scr_Bullet_Replicate_Properties();
            bulletsize = 0.5;
            image_xscale = bulletsize;
            image_yscale = bulletsize;
            sprite_index = spr_Glowy_Dark_Shot;
            bulletspeed = 4;
            bulletpower = other.bulletpower * 3;
            direction = scr_Soul_Point() + dir;
            speed = bulletspeed;
		}
		dir += 15;
	}

alarm[1] = 120 + random(60);
