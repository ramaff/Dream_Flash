
with instance_create(x,y,obj_Poison_Pool) {
        scr_Bullet_Replicate_Properties();
        bulletsprite = spr_Poison_Pool;
        sprite_index = spr_Poison_Pool;
        bulletspeed = 0;
        bulletpower = other.bulletpower * 0.15;
        bulletlifespan = 180;
        alarm[0] = 180;
        bulletsize = 0.5;
        image_xscale = 0;
        image_yscale = 0;
        speed = bulletspeed;
    }
alarm[1] = 80;

