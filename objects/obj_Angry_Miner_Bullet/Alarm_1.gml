dir = -10;
repeat(3) {
    with instance_create(x,y,obj_Basic_Bullet) {
        scr_Bullet_Replicate_Properties();
		/*
		bpart = 2;
		bpartsprite = spr_Bullet_Part;
		bpartarea = 25
		bpartfrequency = 5
		bpartlife = 20
		bpartcolor1 = make_color_rgb(255,0,0);
		bpartcolor2 = bpartcolor1
		*/
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

