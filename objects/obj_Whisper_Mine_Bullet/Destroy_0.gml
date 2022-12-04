/// @description Insert description here
// You can write your code in this editor

dir = random(360);
ddir = 0;
repeat(12) {
    with instance_create(x,y,obj_Basic_Bullet) {
        scr_Bullet_Replicate_Properties();
        bulletsize = 0.5;
        image_xscale = bulletsize;
        image_yscale = bulletsize;
        soulshotblock = 0;
        sprite_index = spr_Glowy_Pink_Shot;
        bulletspeed = other.bulletspeed * 2.5;
        bulletpower = other.bulletpowermax;
        direction += other.dir + other.ddir;
        speed = bulletspeed;
    }   
    ddir += 30;
}

ddir = 0;
repeat(6) {
    with instance_create(x,y,obj_Basic_Bullet) {
        scr_Bullet_Replicate_Properties();
        bulletsize = 0.5;
        image_xscale = bulletsize;
        image_yscale = bulletsize;
        soulshotblock = 0;
        sprite_index = spr_Glowy_Pink_Shot;
        bulletspeed = other.bulletspeed * 3.5;
        bulletpower = other.bulletpowermax;
        direction += other.dir + other.ddir;
        speed = bulletspeed;
    }   
    ddir += 60;
}

// Inherit the parent event
event_inherited();

