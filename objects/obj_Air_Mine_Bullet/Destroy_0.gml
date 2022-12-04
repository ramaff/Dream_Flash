/// @description Insert description here
// You can write your code in this editor

dir = -30;
repeat(5) {
    with instance_create(x,y,obj_Basic_Bullet) {
        scr_Bullet_Replicate_Properties();
		bulletlifespan = 300;
		alarm[0] = bulletlifespan;
        bulletsize = 0.5;
        image_xscale = bulletsize;
        image_yscale = bulletsize;
        soulshotblock = 0;
        sprite_index = spr_Glowy_Blue_Shot;
        bulletspeed = other.bulletspeed * 3.6;
        bulletpower = other.bulletpowermax * 0.5;
        direction = scr_Soul_Point();
        direction += other.dir;
        speed = bulletspeed;
    }   
    dir += 15;
}

dir = -52;
repeat(9) {
    with instance_create(x,y,obj_Basic_Bullet) {
        scr_Bullet_Replicate_Properties();
		bulletlifespan = 300;
		alarm[0] = bulletlifespan;
        bulletsize = 0.5;
        image_xscale = bulletsize;
        image_yscale = bulletsize;
        soulshotblock = 0;
        sprite_index = spr_Glowy_Blue_Shot;
        bulletspeed = other.bulletspeed * 2.5;
        bulletpower = other.bulletpowermax * 0.5;
        direction = scr_Soul_Point();
        direction += other.dir;
        speed = bulletspeed;
    }   
    dir += 13;
}


// Inherit the parent event
event_inherited();


