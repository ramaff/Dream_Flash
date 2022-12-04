/// @description Insert description here
// You can write your code in this editor

alarm[1] = 15;

with instance_create(x,y,obj_Basic_Bullet) {
    scr_Bullet_Replicate_Properties();
	bulletsize = 0.5;
	image_xscale = 0.5;
	image_yscale = 0.5;
    sprite_index = spr_Glowy_Night_Shot;
    bulletspeed = other.bulletspeed * 0;
    bulletpower = other.bulletpower * 0.5;
    speed = bulletspeed;
    direction = other.direction;
    alarm[0] = 240;
}

