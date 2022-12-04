/*
dir = -45 + (-22.5 + random(45));
    repeat(8) {
        dir += 45;
        with instance_create(x,y,obj_Exploding_Hope_Bullet) {
            scr_Bullet_Replicate_Properties();
            sprite_index = spr_Hope_Bullet;
            bulletspeed = other.bulletspeed * 0.8;
            bulletpower = other.bulletpower * 0.5;
            speed = bulletspeed;
            direction = other.direction + other.dir;
        }
    }
	*/
instance_destroy();

