dir = -10 + random(20);
    with instance_create(x,y,obj_Chaotic_Maw_Bullet) {
        scr_Bullet_Replicate_Properties();
		sprite_index = spr_Chaotic_Big_Shot;
        bulletsize = 0.5;
        image_xscale = bulletsize;
        image_yscale = bulletsize;
        soulshotblock = 0;
        bulletspeed = other.bulletspeed * (1.05 + random(0.35));
        bulletpower = other.bulletpower;
        direction = scr_Soul_Point();
        direction += other.dir;
        speed = bulletspeed;
    }   

instance_destroy();

