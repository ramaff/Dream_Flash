/*
dir = random(360);
	repeat(3) {
		ddir = 0;
        with instance_create(x,y,obj_Direction_Bullet) {
            scr_Bullet_Replicate_Properties();
            sprite_index = spr_Glowy_Enemy_Shot;
            bulletsize = 0.5;
            image_xscale = bulletsize;
            image_yscale = bulletsize;
            bulletspeed = other.bulletspeed * 0.55;
            bulletpower = other.bulletpower * 0.5;
            speed = bulletspeed;
            direction = other.direction + other.dir + other.ddir;
        }
		ddir += 120;
    }
	repeat(3) {
		ddir = 60;
        with instance_create(x,y,obj_Direction_Bullet) {
            scr_Bullet_Replicate_Properties();
            sprite_index = spr_Glowy_Enemy_Shot;
            bulletsize = 0.5;
            image_xscale = bulletsize;
            image_yscale = bulletsize;
            bulletspeed = other.bulletspeed * 0.95;
            bulletpower = other.bulletpower * 0.5;
            speed = bulletspeed;
            direction = other.direction + other.dir + other.ddir;
        }
		ddir += 120;
    }
	*/
instance_destroy();
