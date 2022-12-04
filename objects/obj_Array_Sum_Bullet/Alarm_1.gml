alarm[1] = 15;

with instance_create(x,y,obj_Basic_Bullet) {
    scr_Bullet_Replicate_Properties();
	bulletsize = 0.5;
	image_xscale = 0.5;
	image_yscale = 0.5;
    sprite_index = spr_Glowy_Enemy_Shot;
    bulletspeed = other.bulletspeed * 0.05;
    bulletpower = other.bulletpower * 1;
    speed = bulletspeed;
    direction = other.direction;
    alarm[0] = 90;
}

