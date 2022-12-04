alarm[1] = 6 + 3 * irandom(2);

with instance_create(x,y,obj_Fire_Trail) {
    scr_Bullet_Replicate_Properties();
    sprite_index = spr_Evil_Fire;
    bulletsize = 0.5;
    image_xscale = 0.5;
    image_yscale = 0.5;
    bulletspeed = other.bulletspeed * 0;
    bulletpower = other.bulletpower * 0.33;
    speed = bulletspeed;
    bulletlifespan = 90 + random(30);
    alarm[0] = bulletlifespan;
}

