/// @description Insert description here
// You can write your code in this editor
alarm[1] = 21;

with instance_create(x,y,obj_Direction_Bullet) {
    scr_Bullet_Replicate_Properties();
    sprite_index = spr_Rainbow_Tear;
    bulletsize = 0.5;
    image_xscale = bulletsize;
    image_yscale = bulletsize;
    bulletspeed = other.bulletspeed * (0.2 + random(0.15));
    bulletpower = other.bulletpower * 0.5;
    speed = bulletspeed;
    direction = other.direction - 10 + random(20);
    alarm[0] = 75;
}

