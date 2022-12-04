
    bullet_type = obj_Fire_Trail;
    bulletsprite = spr_Fire_Trail;
    bullet_speed = 0;
    bullet_power = bulletpower / 0.5;
    bullet_lifespan = 360;
    bullet_spread = 90;
    bullet_count = 1;
    
    bulletspeed = 0
    
    if sprite_index = spr_Magic_Shot {
        bullet_type = obj_Fire_Trail;
        bulletsprite = spr_Magic_Trail;
    }
    
    scr_Shoot_Split_Replicate();
    
    instance_destroy();

