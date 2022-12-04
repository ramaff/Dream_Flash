dir = -10;
//repeat(3) {
    with instance_create(x,y,obj_Homing_Bullet) {
        scr_Bullet_Replicate_Properties();
		bulletlifespan = 400;
		alarm[0] = bulletlifespan;
        bulletsize = 0.5;
        image_xscale = bulletsize;
        image_yscale = bulletsize;
        soulshotblock = 0;
        sprite_index = other.sprite_index;
        bulletspeed = other.bulletspeed;
        bulletpower = other.bulletpower;
        direction = scr_Soul_Point();
        speed = bulletspeed;
    }   
   // dir += 15;
//}

instance_destroy();

