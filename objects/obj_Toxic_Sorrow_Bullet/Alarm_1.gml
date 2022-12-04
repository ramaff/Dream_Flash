alarm[1] = 18;

with instance_create(x,y,obj_Direction_Bullet) {
    scr_Bullet_Replicate_Properties();
    sprite_index = spr_Toxic_Sorrow_Bullet;
    bulletsize = other.bulletsize * 0.66;
    image_xscale = bulletsize;
    image_yscale = bulletsize;
    bulletspeed = other.bulletspeed * 0.02 * random(0.15);
    bulletpower = other.bulletpower * 0.5;
    speed = bulletspeed;
    direction = other.direction - 20 + random(40);
    alarm[0] = 60;
}

