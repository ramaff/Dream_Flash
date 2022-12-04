
	var dir = -15;
	if spindir = 0 {
		var ob = obj_Spin_Bullet;
	} else {
		var ob = obj_Alt_Spin_Bullet;
	}
	repeat(3) {
		with instance_create(x,y,ob) {
	        scr_Bullet_Replicate_Properties();
            bulletsize = 0.5;
            image_xscale = bulletsize;
            image_yscale = bulletsize;
            sprite_index = spr_Glowy_Purple_Shot;
            bulletspeed = other.bulletspeed * 1;
            bulletpower = other.bulletpower * 0.5;
            direction = other.patterndir + dir;
            speed = bulletspeed;
		}
		dir += 120;
	}

alarm[1] = 20;

