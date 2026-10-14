dir = -10;
repeat(3) {
    with instance_create_depth(x,y,0,obj_Basic_Bullet) {
        scr_Bullet_Replicate_Properties();

		bulletlifespan = 300;
		alarm[0] = bulletlifespan;
        bulletsize = 0.5;
        image_xscale = bulletsize;
        image_yscale = bulletsize;
        soulshotblock = 0;
        sprite_index = spr_Glowy_Enemy_Shot;
        bulletspeed = other.bulletspeed * 0.6;
        bulletpower = other.bulletpower;
        direction = scr_Soul_Point();
        direction += other.dir;
        speed = bulletspeed;
    }   
    dir += 15;
}

instance_destroy();

