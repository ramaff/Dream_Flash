/// @description Insert description here
// You can write your code in this editor

with instance_create(x,y,obj_Bullet_Explosion) {
    scr_Bullet_Replicate_Properties(false);
    bulletsprite = spr_Bullet_Explosion
    sprite_index = bulletsprite;
    bulletspeed = 0;
    bulletpower = global.stagedamage;
    bulletlife = 21;
    alarm[0] = bulletlife;
    bulletsize = 0.8;
    image_xscale = bulletsize;
    image_yscale = bulletsize;
    speed = 0;
}
	