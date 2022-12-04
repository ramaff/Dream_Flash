dir = -10 + random(20);
    with instance_create(x,y,obj_Angry_Maw_Bullet) {
        scr_Bullet_Replicate_Properties();
		sprite_index = spr_Angry_Maw_Shot;
        bulletsize = 0.5;
        image_xscale = bulletsize;
        image_yscale = bulletsize;
        soulshotblock = 0;
        bulletspeed = other.bulletspeed * (1.33 + random(0.05));
        bulletpower = other.bulletpower;
        direction = scr_Soul_Point();
        direction += other.dir;
        speed = bulletspeed;
    }   

instance_destroy();

