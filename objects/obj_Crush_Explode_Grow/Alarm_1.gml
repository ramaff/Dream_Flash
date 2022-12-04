dir = 0;
repeat(9) {
    with instance_create(x,y,obj_Crush_Small_Bomb) {
        scr_Bullet_Replicate_Properties();
		bulletlifespan = 80;
		alarm[0] = bulletlifespan;
		bulletbounceY = 120;
        bulletbouncespeed = 10;
        bulletbouncedirection = -1;
		image_speed = 0.5;
        bulletsize = 0.45 + random(0.15);
        image_xscale = bulletsize;
        image_yscale = bulletsize;
        soulshotblock = 0;
        sprite_index = spr_Big_Glowy_Red_Shot;
        bulletspeed = other.bulletspeed * (0.9 + random(0.35));
        bulletpower = other.bulletpower;
        direction = random(360);
        //direction += other.dir;
        speed = bulletspeed;
    }   
    dir += 15;
}

instance_destroy();

