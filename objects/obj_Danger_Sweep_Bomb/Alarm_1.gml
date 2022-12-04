var dir = 45;
repeat(2) {
    with instance_create(x,y,obj_Basic_Bullet) {
        scr_Bullet_Replicate_Properties();
		bulletlifespan = 400;
		alarm[0] = bulletlifespan;
        bulletsize = 0.5;
        image_xscale = bulletsize;
        image_yscale = bulletsize;
        soulshotblock = 0;
        sprite_index = spr_Glowy_Ruby_Shot;
        bulletspeed = other.bulletspeed * (1.8 + random(0.4));
        bulletpower = other.bulletpower;
        direction = dir;
        speed = bulletspeed;
    }   
    dir += 180;
}
instance_destroy();

