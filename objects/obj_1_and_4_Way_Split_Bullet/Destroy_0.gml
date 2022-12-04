/// @description Insert description here
// You can write your code in this editor

var dir = 0;
repeat(1) {
    with instance_create(x,y,obj_Basic_Bullet) {
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
    dir += 30;
}

dir = 45;
repeat(4) {
    with instance_create(x,y,obj_Basic_Bullet) {
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
    dir += 90;
}
/*
dir = -15;
repeat(3) {
    with instance_create(x,y,obj_Basic_Bullet) {
        scr_Bullet_Replicate_Properties();
		bulletlifespan = 300;
		alarm[0] = bulletlifespan;
        bulletsize = 0.5;
        image_xscale = bulletsize;
        image_yscale = bulletsize;
        soulshotblock = 0;
        sprite_index = spr_Glowy_Green_Shot;
        bulletspeed = other.bulletspeed * 1.45;
        bulletpower = other.bulletpowermax * 0.5;
        move_towards_point(instance_nearest(x,y,obj_Soul_Parent).x,instance_nearest(x,y,obj_Soul_Parent).y, bulletspeed);
        direction += other.dir;
        speed = bulletspeed;
    }   
    dir += 15;
}
*/

// Inherit the parent event
event_inherited();

