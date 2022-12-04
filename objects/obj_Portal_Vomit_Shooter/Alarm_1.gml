
	var dir = 30;
	repeat(6) {
		with instance_create(x,y,obj_Basic_Bullet) {
	        scr_Bullet_Replicate_Properties();
            bulletsize = 0.5;
            image_xscale = bulletsize;
            image_yscale = bulletsize;
            sprite_index = spr_Glowy_Orange_Shot;
            bulletspeed = other.bulletspeed * (0.8 + random(0.6));
            bulletpower = other.bulletpower * 0.5;
            direction = scr_Soul_Point() - (dir) + random(dir * 2);
            speed = bulletspeed;
		}
	}

alarm[1] = 120 + random(30);

