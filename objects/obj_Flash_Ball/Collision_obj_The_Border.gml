dir = -45 + (-22.5 + random(45));
    repeat(8) {
        dir += 45;
        with instance_create(x,y,obj_Basic_Bullet) {
            scr_Bullet_Replicate_Properties();
            sprite_index = spr_Glowy_Blue_Shot;
            bulletspeed = other.bulletspeed * 1;
            bulletpower = other.bulletpower * 0.5;
            bulletsize = 0.5;
            image_xscale = bulletsize;
            image_yscale = bulletsize;
            speed = bulletspeed;
            direction = other.direction + other.dir;
        }
    }
speed = 0;
bulletsize -= 0.1;
if bulletsize < 0 {
	bulletsize = 0;	
}
if burst < 0 {
instance_destroy();
speed = 0
} else {
burst--;
alarm[1] = 15;
}