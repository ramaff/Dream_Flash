dir = 0;
repeat(1) {
    with instance_create(x,y,obj_Crush_Bomb) {
        scr_Bullet_Replicate_Properties();
		bulletlifespan = 80;
		alarm[0] = bulletlifespan;
		bulletbounceY = 120;
        bulletbouncespeed = 10;
        bulletbouncedirection = -1;
		image_speed = 0.5;
        bulletsize = other.size;
        image_xscale = bulletsize;
        image_yscale = bulletsize;
        soulshotblock = 0;
        sprite_index = other.sprite_index;
        bulletspeed = other.bulletspeed;
        bulletpower = other.bulletpower;
        direction = scr_Soul_Point();
        direction += other.dir;
        speed = bulletspeed;
    }   
    dir += 15;
}

instance_destroy();

