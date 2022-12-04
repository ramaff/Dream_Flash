var dir = -5 + random(10);
repeat(8) {
    with instance_create(x,y,obj_Basic_Bullet) {
        scr_Bullet_Replicate_Properties();
		bulletlifespan = 400;
		alarm[0] = bulletlifespan;
        bulletsize = 0.5;
        image_xscale = bulletsize;
        image_yscale = bulletsize;
        soulshotblock = 0;
        sprite_index = spr_Glowy_Ruby_Shot;
        bulletspeed = other.bulletspeed * 1.5;
        bulletpower = other.bulletpower;
        direction = dir;
        speed = bulletspeed;
    }   
    dir += 45;
}
instance_destroy();

