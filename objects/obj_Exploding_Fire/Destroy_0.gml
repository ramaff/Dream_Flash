with instance_create(x,y,obj_Explode_Hit) {
    scr_Bullet_Replicate_Properties();
    sprite_index = spr_Boss_Bullet_Explosion;
    image_speed = 1;
    bulletsize = 0.7;
    image_xscale = bulletsize;
    image_yscale = bulletsize;
    bulletspeed = 0;
    bulletpower = other.bulletpower * 1;
    speed = bulletspeed;
    alarm[0] = 15;
}

