/// @description Insert description here
// You can write your code in this editor
alarm[1] = 3;

with instance_create(x,y,obj_Boss_Spike) {
    scr_Bullet_Replicate_Properties();
	bulletsize = 0.5;
	image_xscale = 0.5;
	image_yscale = 0.5;
    sprite_index = spr_Boss_Ground_Spike;
    bulletspeed = other.bulletspeed;
    bulletpower = other.bulletpower * 1;
    speed = bulletspeed;
    direction = other.direction;
    alarm[0] = 75;
}

