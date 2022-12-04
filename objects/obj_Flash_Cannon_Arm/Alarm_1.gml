with instance_create(x + lengthdir_x(104, image_angle),y + lengthdir_y(104, image_angle),obj_Flash_Ball) {
    scr_Bullet_Replicate_Properties();
    sprite_index = spr_Big_Flash_Shot;
    bulletspeed = other.bulletspeed;
    bulletpower = other.bulletpower * 2;
    bulletlife = other.bulletlife;
    bulletsize = 0.625;
    image_xscale = bulletsize;
    image_yscale = bulletsize;
    direction = other.direction;
    speed = bulletspeed;
    alarm[0] = bulletlife;
}
alarm[0] = 25;

