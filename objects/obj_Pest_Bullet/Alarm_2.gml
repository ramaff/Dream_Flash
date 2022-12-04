alarm[2] = 120 / speed;

with instance_create(x,y,obj_Basic_Bullet) {
    scr_Bullet_Replicate_Properties();
	bulletsize = 0.5;
	image_xscale = 0.5;
	image_yscale = 0.5;
    sprite_index = spr_Glowy_Dark_Green_Shot;
    bulletspeed = other.bulletspeed * 0.75;
    bulletpower = other.bulletpower * 1;
    speed = bulletspeed;
    direction = other.direction - 100 + random(20);
    alarm[0] = 180;
}

with instance_create(x,y,obj_Basic_Bullet) {
    scr_Bullet_Replicate_Properties();
	bulletsize = 0.5;
	image_xscale = 0.5;
	image_yscale = 0.5;
    sprite_index = spr_Glowy_Dark_Green_Shot;
    bulletspeed = other.bulletspeed * 0.75;
    bulletpower = other.bulletpower * 1;
    speed = bulletspeed;
    direction = other.direction + 80 + random(20);
    alarm[0] = 180;
}