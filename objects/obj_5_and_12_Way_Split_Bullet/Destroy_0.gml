/// @description Insert description here
// You can write your code in this editor

var dir = -30;
repeat(5) {
    with instance_create_depth(x,y,0,obj_Basic_Bullet) {
        scr_Bullet_Replicate_Properties();
		bulletlifespan = 300;
		alarm[0] = bulletlifespan;
        bulletsize = 0.5;
        image_xscale = bulletsize;
        image_yscale = bulletsize;
        soulshotblock = 0;
        sprite_index = spr_Glowy_Dark_Green_Shot;
        bulletspeed = other.bulletspeed * 1;
        bulletpower = other.bulletpowermax * 0.5;
        direction = scr_Soul_Point() + dir;
        speed = bulletspeed;
    }   
    dir += 15;
}
dir = random(360);
repeat(12) {
    with instance_create_depth(x,y,0,obj_Basic_Bullet) {
        scr_Bullet_Replicate_Properties();
		bulletlifespan = 300;
		alarm[0] = bulletlifespan;
        bulletsize = 0.5;
        image_xscale = bulletsize;
        image_yscale = bulletsize;
        soulshotblock = 0;
        sprite_index = spr_Glowy_Dark_Green_Shot;
        bulletspeed = other.bulletspeed * 0.6;
        bulletpower = other.bulletpowermax * 0.5;
        direction =  dir;
        speed = bulletspeed;
    }   
    dir += 30;
}

event_inherited();

