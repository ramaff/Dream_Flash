/*
dir = -45 + (-22.5 + random(45));
    repeat(8) {
        dir += 45;
        with instance_create(x,y,obj_Spin_Quick_Phase_Bullet) {
            scr_Bullet_Replicate_Properties();
            sprite_index = spr_Manic_Shot;
            bulletspeed = other.bulletspeed * 2;
            bulletpower = other.bulletpower * 0.5;
            speed = bulletspeed;
            direction = other.direction + other.dir;
            bulletlifespan = 180;
            alarm[0] = 180;
        }
    }
	
	*/
instance_destroy();

