
with instance_create_depth(x,y,0,obj_Poison_Pool) {
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
