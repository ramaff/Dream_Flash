/*
dir = -72 + (-36 + random(72));
    repeat(5) {
        dir += 72;
        with instance_create(x,y,obj_Demon_Flame_Pillar) {
            scr_Bullet_Replicate_Properties();
            sprite_index = spr_Demon_Flame_Pillar;
            bulletspeed = other.bulletspeed * 1.66;
            bulletpower = other.bulletpower * 0.5;
            speed = bulletspeed;
            direction = other.direction + other.dir;
            bulletlifespan = 180;
            alarm[0] = 180;
        }
    }
dir = -30 + (-15 + random(30));
    repeat(12) {
        dir += 30;
        with instance_create(x,y,obj_Direction_Bullet) {
            scr_Bullet_Replicate_Properties();
            sprite_index = spr_Big_Fire_Shot;
            bulletspeed = other.bulletspeed * 0.99;
            bulletpower = other.bulletpower * 0.5;
            speed = bulletspeed;
            direction = other.direction + other.dir;
            bulletlifespan = 180;
            alarm[0] = 180;
        }
    }
	
	*/
instance_destroy();

