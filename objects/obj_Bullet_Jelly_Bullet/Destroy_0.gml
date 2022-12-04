dir = -90 + (-45 + random(90));
    repeat(4) {
        dir += 90;
        with instance_create(x,y,obj_Basic_Bullet) {
            scr_Bullet_Replicate_Properties();
            sprite_index = spr_Glowy_Enemy_Shot;
            bulletspeed = other.bulletspeed * (1.2 + random(0.3));
            bulletpower = round(other.bulletpowermax * 0.66);
            speed = bulletspeed;
            direction = other.direction + other.dir;
            bulletlifespan = 300;
            alarm[0] = 300;
        }
    }
	
	with instance_create(x,y,obj_Poison_Pool) {
        scr_Bullet_Replicate_Properties();
        bulletsprite = spr_Jelly_Pool;
        sprite_index = spr_Jelly_Pool;
        bulletspeed = 0;
        bulletpower = round(other.bulletpowermax * 0.66);
        bulletlifespan = 180;
        alarm[0] = 180;
        bulletsize = 0.5;
        image_xscale = 0;
        image_yscale = 0;
        speed = bulletspeed;
    }

// Inherit the parent event
event_inherited();
