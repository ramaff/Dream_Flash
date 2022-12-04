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
        sprite_index = spr_Glowy_Purple_Shot;
        bulletspeed = other.bulletspeed * 2.1;
        bulletpower = other.bulletpowermax * 0.5;
        move_towards_point(instance_nearest(x,y,obj_Soul_Parent).x,instance_nearest(x,y,obj_Soul_Parent).y, bulletspeed);
        direction += other.dir;
        speed = bulletspeed;
    }   
    dir += 15;
}

dir = random(36);
repeat(10) {
    with instance_create(x,y,obj_Basic_Bullet) {
        scr_Bullet_Replicate_Properties();
		bulletlifespan = 300;
		alarm[0] = bulletlifespan;
        bulletsize = 0.5;
        image_xscale = bulletsize;
        image_yscale = bulletsize;
        soulshotblock = 0;
        sprite_index = spr_Glowy_Purple_Shot;
        bulletspeed = other.bulletspeed * 1.45;
        bulletpower = other.bulletpowermax * 0.5;
        move_towards_point(instance_nearest(x,y,obj_Soul_Parent).x,instance_nearest(x,y,obj_Soul_Parent).y, bulletspeed);
        direction += other.dir;
        speed = bulletspeed;
    }   
    dir += 36;
}


// Inherit the parent event
event_inherited();

