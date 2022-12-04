
var dir = direction + 75 + random(30);

repeat(2) {
with instance_create(x,y,obj_Direction_Bullet) {
        scr_Bullet_Replicate_Properties();
        bulletsprite = spr_Tear_Drop_Bullet;
        sprite_index = spr_Tear_Drop_Bullet;
        bulletspeed = other.bulletspeed * 1;
        bulletpower = other.bulletpower * 0.66;
        bulletlifespan = 180;
        alarm[0] = 180;
        bulletsize = 0.5;
		direction = dir;
        image_xscale = bulletsize;
        image_yscale = bulletsize;
        speed = bulletspeed;
    }
	dir += 180;
}

alarm[1] = 80;

