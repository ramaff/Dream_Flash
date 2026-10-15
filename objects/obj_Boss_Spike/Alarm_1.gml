/// @description Insert description here
// You can write your code in this editor
with instance_create_depth(x,y,0,obj_Stationary_Damager) {
    scr_Bullet_Replicate_Properties();
    sprite_index = spr_Boss_Ground_Spike_Mask;
    image_index = other.image_index;
    image_speed = other.image_speed;
    image_alpha = 0;
    bulletspeed = 0;
    bulletpower = other.bulletpower;
    speed = bulletspeed;
    direction = 0;
    bulletlifespan = 25;
    alarm[0] = 25;
}