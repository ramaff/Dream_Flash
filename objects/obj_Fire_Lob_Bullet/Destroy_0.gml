/// @description Insert description here
// You can write your code in this editor

with instance_create(x,y,obj_Lingering_Fire_Bullet) {
    scr_Bullet_Replicate_Properties(true);
    bulletsprite = other.bulletsprite
    sprite_index = bulletsprite;
    bulletspeed = 0;
    bulletpower = global.stagedamage;
    bulletlife = 210 + random(60);
    alarm[0] = bulletlife;
    bulletsize = other.bulletsize;
    image_xscale = bulletsize;
    image_yscale = bulletsize;
    speed = bulletspeed;
}
	