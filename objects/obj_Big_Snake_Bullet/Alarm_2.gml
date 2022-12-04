/*
dir = -10 + (-10 + random(20));
    repeat(18) {
        dir += 20;
        with instance_create(x,y,obj_Basic_Bullet) {
            scr_Bullet_Replicate_Properties();
            sprite_index = spr_Glowy_Night_Shot;
            bulletspeed = other.bulletspeed * 0.75;
            bulletpower = other.bulletpower;
            speed = bulletspeed;
            direction = other.direction + other.dir;
        }
    }
	*/
alarm[2] = 120 + random(45);

