/// @description Insert description here
// You can write your code in this editor
alarm[2] = 15;

with instance_create(x,y,obj_Direction_Bullet) {
    scr_Bullet_Replicate_Properties();
	bulletsize = 0.5;
	image_xscale = 0.5;
	image_yscale = 0.5;
    sprite_index = spr_Glowy_Blue_Shot;
    bulletspeed = other.bulletspeed * 0.05;
    bulletpower = other.bulletpower * 1;
    speed = bulletspeed;
    direction = other.direction;
    alarm[0] = 135;
}
