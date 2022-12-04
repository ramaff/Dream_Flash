
	var dir = -15;
	repeat(3) {
		with instance_create(x,y,obj_Basic_Bullet) {
	        scr_Bullet_Replicate_Properties();
            bulletsize = 0.5;
            image_xscale = bulletsize;
            image_yscale = bulletsize;
            sprite_index = spr_Glowy_Purple_Shot;
            bulletspeed = other.bulletspeed * 1.25;
            bulletpower = other.bulletpower * 0.5;
            direction = scr_Soul_Point() + dir;
            speed = bulletspeed;
		}
		dir += 15;
	}

alarm[1] = 120 + random(30);

