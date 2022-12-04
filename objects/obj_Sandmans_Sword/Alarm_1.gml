dir = 0;
if deathSlash = 1 {
    repeat(2) {
    
        dir += 1;
    
        with instance_create(x,y,obj_Phase_Bullet) {
                scr_Bullet_Replicate_Properties();
                sprite_index = spr_Glowy_Enemy_Shot;
                bulletsize = 0.5;
                image_xscale = 0.5;
                image_yscale = 0.5;
                bulletspeed = other.bulletspeed * (1.3 + random(0.2));
                bulletpower = other.bulletpower * 1;
                speed = bulletspeed;
                direction = 45 + other.direction + other.dir * 90 + (-20 + random(40));
        }
        
    }
    repeat(2) {
    
        dir += 1;
    
        with instance_create(x,y,obj_Phase_Bullet) {
                scr_Bullet_Replicate_Properties();
                sprite_index = spr_Glowy_Enemy_Shot;
                bulletsize = 0.5;
                image_xscale = 0.5;
                image_yscale = 0.5;
                bulletspeed = other.bulletspeed * (0.4 + random(0.2));
                bulletpower = other.bulletpower * 1;
                speed = bulletspeed;
                direction = 22.5 + other.direction + other.dir * 135 + (-20 + random(40));
        }
        
    }
}

alarm[1] = 4 + irandom(2);

