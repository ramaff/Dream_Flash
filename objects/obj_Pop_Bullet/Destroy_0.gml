/// @description Insert description here
// You can write your code in this editor

dir = 0;
repeat(1) {
    with instance_create(x,y,obj_Basic_Bullet) {
        scr_Bullet_Replicate_Properties();
		bulletlifespan = 400;
		alarm[0] = bulletlifespan;
        bulletsize = other.bulletsize + 0.125;
        image_xscale = bulletsize;
        image_yscale = bulletsize;
        soulshotblock = 0;
        sprite_index = spr_Glowy_Orange_Shot;
        bulletspeed = other.bulletspeed * (1.25 + random(0.75));
        bulletpower = other.bulletpowermax;
        direction = scr_Soul_Point();
        direction += -90 + random(180);
        speed = bulletspeed;
    }   
    dir += 15;
}