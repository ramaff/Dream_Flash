with instance_create(x,y,obj_Explode_Hit) {
    scr_Bullet_Replicate_Properties();
    sprite_index = spr_Boss_Green_Explosion;
    image_speed = 1;
    bulletsize = 0.7;
    image_xscale = bulletsize;
    image_yscale = bulletsize;
    bulletspeed = 0;
    bulletpower = other.bulletpower * 1;
    speed = bulletspeed;
    alarm[0] = 15;
}

with instance_create(x,y,obj_Poison_Pool) {
        scr_Bullet_Replicate_Properties();
        bulletsprite = spr_Poison_Pool;
        sprite_index = spr_Poison_Pool;
        bulletspeed = 0;
        bulletpower = other.bulletpower * 0.15;
        bulletlifespan = 180;
        alarm[0] = 180;
        bulletsize = 0.5;
        image_xscale = 0;
        image_yscale = 0;
        speed = bulletspeed;
    }