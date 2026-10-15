/// @description Insert description here
// You can write your code in this editor

dir = -30;
repeat(5) {
    with instance_create_depth(x,y,0,obj_Basic_Bullet) {
        scr_Bullet_Replicate_Properties();
		bulletlifespan = 300;
		alarm[0] = bulletlifespan;
        bulletsize = 0.5;
        image_xscale = bulletsize;
        image_yscale = bulletsize;
        soulshotblock = 0;
        sprite_index = spr_Glowy_Enemy_Shot;
        bulletspeed = other.bulletspeed * 1.25;
        bulletpower = other.bulletpowermax * 0.5;
        direction = other.direction + other.dir;
        speed = bulletspeed;
    }   
    dir += 15;
}

event_inherited();

