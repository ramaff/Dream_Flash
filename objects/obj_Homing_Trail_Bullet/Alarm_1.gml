/// @description Insert description here
// You can write your code in this editor

alarm[1] = 60 / speed;

with instance_create(x,y,obj_Basic_Bullet) {
    scr_Bullet_Replicate_Properties();
	bulletsize = 0.5;
	image_xscale = 0.5;
	image_yscale = 0.5;
    sprite_index = spr_Glowy_Ruby_Shot;
    bulletspeed = other.bulletspeed * 0;
    bulletpower = other.bulletpower * 1;
    speed = bulletspeed;
    direction = other.direction - 10 + random(20);
    alarm[0] = 60;
}

