/*    dir = random(360)
    repeat(16) {
        dir += 360 / 16;
        with instance_create(x,y,obj_Direction_Bullet) {
            scr_Bullet_Replicate_Properties();
            sprite_index = spr_Lightning_Bullet;
            bulletspeed = other.bulletspeed * 0.775;
            bulletpower = other.bulletpower * 0.5;
            speed = bulletspeed;
            direction = other.direction + other.dir;
        }
    }
	repeat(8) {
        dir += 360 / 8;
        with instance_create(x,y,obj_Direction_Bullet) {
            scr_Bullet_Replicate_Properties();
            sprite_index = spr_Lightning_Bullet;
            bulletspeed = other.bulletspeed * 1;
            bulletpower = other.bulletpower * 0.5;
            speed = bulletspeed;
            direction = other.direction + other.dir;
        }
    }
	dir += 22.5
	repeat(8) {
        dir += 360 / 8;
        with instance_create(x,y,obj_Direction_Bullet) {
            scr_Bullet_Replicate_Properties();
            sprite_index = spr_Lightning_Bullet;
            bulletspeed = other.bulletspeed * 0.55;
            bulletpower = other.bulletpower * 0.5;
            speed = bulletspeed;
            direction = other.direction + other.dir;
        }
    }
	*/
instance_destroy();

