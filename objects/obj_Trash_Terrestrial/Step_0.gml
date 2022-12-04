/// @description  Boss Step Event

scr_Boss_Step();

///Passive Attack Prep

if bossPassiveAttackDelay[1] <= 0 and bossPassiveAttackCooldown[1] <= 0 {
    if champ = 0 and currentphase = 2 {
        bossPassiveAttack[1] = 1;
        bossPassiveAttackCooldown[1] = 15;
        bossPassiveAttackDelay[1] = 0;
    }
}


///Passive Attack Code   

if bossPassiveAttack[1] = 1 {
    
}

bossPassiveAttack[1] = 0;
bossPassiveAttack[2] = 0;

///Active Attack Prep

if bossActiveAttackDelay[1] <= 0 and bossActiveAttackCooldown[1] <= 0 and bossActiveAttackDuration[1] <= 0 {
    var bossdirection = point_direction(x,y,instance_nearest(x,y,obj_Soul).x,instance_nearest(x,y,obj_Soul).y);
    speed = 0.5 * bossmovespeed;
    direction = bossdirection;
    
    bossActiveAttack[1] = choose(1,2);
    bossActiveAttackDelay[1] = 10;
    
    if currentphase = 2 {
        bossActiveAttack[1] = 3;
    }
    
    if bossActiveAttack[1] = 1 {
        bossActiveAttackCooldown[1] = (120 + random(60));
        bossActiveAttackDuration[1] = 15;
    }
    if bossActiveAttack[1] = 2 {
        bossActiveAttackCooldown[1] = (200 + random(60));
        bossPatternCount = 4;
        if champ = 1 {
            bossPatternCount = 8;
        }
        bossPatternCooldown = 15;
        bulletdirection = random(360);
        bossPatternDirection = bulletdirection;
        bossActiveAttackDuration[1] = 15 + bossPatternCooldown * bossPatternCount;
    }
    if bossActiveAttack[1] = 3 {
        speed = 0;
        scr_Boss_Teleport();
        bossActiveAttackCooldown[1] = (150 + random(30));
        bossPatternDirection = point_direction(x,y,instance_nearest(x,y,obj_Soul).x,instance_nearest(x,y,obj_Soul).y);
        bossPatternCount = 3;
        if champ = 1 {
            bossPatternCount = 4;
        }
        if champ = 2 {
            bossActiveAttackCooldown[1] -= 60;
        }
        bossPatternCooldown = 12;
        
        bossActiveAttackDuration[1] = 15 + bossPatternCooldown * bossPatternCount;
    }
    
}


/// Active Attack Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Hatred_Seeking_Bullet;
    bullet_sprite = spr_Boss_Ninja_Star;
    bullet_speed = bossbulletspeed;
    bullet_power = bosspower * 1;
    bullet_direction = (-5 + random(10)) / bossaccuracy;
    bullet_lifespan = 400;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;

if bossActiveAttackDelay[1] <= 0 {        
    
    if bossActiveAttack[1] = 1 {
        bullet_speed = bossbulletspeed * 1.4;
        if champ = 2 {
            bullet_sprite = spr_Boss_Sai;
            bullet_type = obj_Phasing_Hatred_Bullet;
            bullet_lifespan = 500;
        }
        if champ = 1 {
            bullet_count = 2;
            bullet_spread = 30;
        }
        scr_Soul_Shoot();
        bossActiveAttack[1] = 0;
    }
}

/// Active Attack Pattern Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Hatred_Seeking_Bullet;
    bullet_sprite = spr_Boss_Ninja_Star;
    bullet_speed = bossbulletspeed;
    bullet_power = bosspower * 1;
    bullet_direction = (-5 + random(10)) / bossaccuracy;
    bullet_lifespan = 300;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;

if bossActiveAttackDelay[1] <= 0 and bossPatternCooldown <= 0 and bossPatternCount > 0 {
        
    if bossActiveAttack[1] = 2 {
        bullet_speed = bossbulletspeed * 1.1;
        bullet_direction = bossPatternDirection;
        scr_Just_Shoot();
        if champ = 0 || 2 {
            bossPatternDirection += 90;
        }
        if champ = 1 {
            bossPatternDirection += 45;
        }
        bossPatternCount -= 1;
        bossPatternCooldown += 15;
    }
    if bossActiveAttack[1] = 3 {
        bullet_type = obj_Basic_Bullet;
        bullet_speed = bossbulletspeed * 1.4;
        bullet_direction = bossPatternDirection;
        bullet_spread = 15;
        bullet_count = 6 - bossPatternCount;
        if champ = 1 {
            bullet_count = 8 - bossPatternCount;
            alarm[1] = (30) / bossattackspeed;
        }
        if champ = 0 || champ = 1 {
            scr_Just_Shoot();
        }
        if champ = 2 {
            bullet_direction = point_direction(x,y,instance_nearest(x,y,obj_Soul).x,instance_nearest(x,y,obj_Soul).y);
            scr_Just_Shoot();
        }
        bossPatternCount -= 1;
        bossPatternCooldown += 25;
    }
}

/// Active Attack Post
   
if bossActiveAttackDuration <= 0 { 
    bossActiveAttack[1] = 0;
    bossActiveAttack[2] = 0;
}

