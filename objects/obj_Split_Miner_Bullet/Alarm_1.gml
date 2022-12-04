dir = random(360);
repeat(4) {
    with instance_create(x,y,obj_Basic_Bullet) {
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
		direction = other.dir;
        //move_towards_point(instance_nearest(x,y,obj_Soul_Parent).x,instance_nearest(x,y,obj_Soul_Parent).y, bulletspeed);
        speed = bulletspeed;
    }   
   dir += 90;
}

instance_destroy();

