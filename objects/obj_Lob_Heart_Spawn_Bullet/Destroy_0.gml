/// @description Insert description here
// You can write your code in this editor

with instance_create(x,y,obj_Lob_Home_Bullet) {
	scr_Bullet_Replicate_Properties();
	bulletbounceY = 0;
	bounce_speed = (1 + random(1));
	bulletlobtime = 180 + random(30);
	bounce_gravity = 2 * bounce_speed / bulletlobtime;
	bulletlife = bulletlobtime + 2;
	alarm[0] = bulletlife;
    bulletsize = other.bulletsize;
	bulletsizemax = bulletsize;
    image_xscale = bulletsize;
    image_yscale = bulletsize;
    sprite_index = spr_Heart_Bullet;
    bulletspeed = other.bulletspeed;
    bulletpower = global.stagedamage
    direction = scr_Soul_Point();
    speed = bulletspeed;
}
