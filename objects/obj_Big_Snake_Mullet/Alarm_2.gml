
var dir = random(360);
    repeat(8) {
        dir += 45;
        with instance_create(x,y,obj_Basic_Bullet) {
            scr_Bullet_Replicate_Properties();
            sprite_index = spr_Glowy_Green_Shot;
            bulletspeed = other.bulletspeed;
            bulletpower = other.bulletpower * 0.5;
            speed = bulletspeed;
            direction = dir;
        }
    }
	
alarm[2] = 120 + random(45);

image_index = 1;

alarm[3] = 15;