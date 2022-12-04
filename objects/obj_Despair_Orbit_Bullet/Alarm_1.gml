/// @description Insert description here
// You can write your code in this editor
alarm[1] = 25;

with instance_create(x,y,obj_Direction_Bullet) {
    scr_Bullet_Replicate_Properties();
    sprite_index = spr_Glowy_Night_Shot;
    bulletspeed = other.bulletspeed * 0;
    bulletpower = other.bulletpower;
    speed = bulletspeed;
    direction = other.direction - 10 + random(20);
    bulletlifespan = 75 + random(25);
    alarm[0] = bulletlifespan;
}

