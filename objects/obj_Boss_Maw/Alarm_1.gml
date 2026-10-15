/// @description Insert description here
// You can write your code in this editor
with instance_create_depth(x,y,0,obj_Stationary_Damager) {
    scr_Bullet_Replicate_Properties();
    sprite_index = other.sprite_index;
    image_index = other.image_index;
    image_speed = other.image_speed;
    bulletspeed = 0;
    bulletpower = other.bulletpower;
    speed = bulletspeed;
    direction = 0;
    bulletlifespan = 5;
    alarm[0] = 5;
}
