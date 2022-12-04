
with instance_create(x,y,obj_Homing_Dormant_Bullet) {
    scr_Bullet_Replicate_Properties();
    sprite_index = spr_Homing_Dormant_Shot;
    bulletspeed = other.bulletspeed * (0.16 + random(0.12));
    bulletpower = other.bulletpower * 0.25;
    bulletsize = 0.5;
    image_xscale = bulletsize;
    image_yscale = bulletsize;
    speed = bulletspeed;
    direction = random(360);
}

alarm[1] = 6 + irandom(5);

