/*
	bullet_type = obj_Poison_Pool;
    bulletsprite = spr_Jelly_Pool;
    bulletspeed = 0;
    bulletpower = bulletpower * 0.15;
    bulletlife = 240;
    bullet_spread = 90;
    bullet_count = 1;
	bulletsize = 0.5;
    
    bulletspeed = 0
    
    scr_Shoot_Split_Replicate();
	
	*/
	
	/*
	dir = -90 + (-45 + random(90));
    repeat(4) {
        dir += 90;
        with instance_create(x,y,obj_Basic_Bullet) {
            scr_Bullet_Replicate_Properties();
            sprite_index = spr_Glowy_Purple_Shot;
            bulletspeed = other.bulletspeed * (1.2 + random(0.2));
            bulletpower = other.bulletpower * 0.66;
            speed = bulletspeed;
            direction = other.direction + other.dir;
            bulletlif
      */
	
	with instance_create(x,y,obj_Poison_Pool) {
        scr_Bullet_Replicate_Properties();
        bulletsprite = spr_Jelly_Pool;
        sprite_index = spr_Jelly_Pool;
        bulletspeed = 0;
        bulletpower = other.bulletpowermax * 0.5;
        bulletlifespan = 180;
        alarm[0] = 180;
        bulletsize = 0.5;
        image_xscale = 0;
        image_yscale = 0;
        speed = bulletspeed;
    }

// Inherit the parent event
event_inherited();
