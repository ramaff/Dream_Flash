/// @description  Boss Step Event

scr_Boss_Step();

///Passive Attack Prep

if bossPassiveAttackDelay[1] <= 0 and bossPassiveAttackCooldown[1] <= 0 {
    
    bossPassiveAttack[1] = 1;
    bossPassiveAttackDelay[1] = 5;
    bossPassiveAttackCooldown[1] = 120 + random(60);
}


///Passive Attack Code   
    scr_Default_Attack_Settings();
    bullet_type = obj_Basic_Bullet;
    bullet_sprite = spr_Glowy_Dark_Shot;
    bullet_speed = bossbulletspeed;
    bullet_power = bosspower;
    bullet_direction = (-180 + random(360)) / bossaccuracy;
    bullet_lifespan = 300;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;
    
if bossPassiveAttack[1] = 1 {
	scr_Boss_Stretch("Horizontal", 0.4);
	
    bullet_count = 18;
    bullet_spread = 360 / bullet_count;
    bullet_lifespan = 400;
    bullet_speed = bossbulletspeed * (1.05 + random(0.1));
    scr_Soul_Shoot();
	bullet_count = 9;
    bullet_spread = 360 / bullet_count;
    bullet_speed += bossbulletspeed * 0.2;
    scr_Soul_Shoot();
}

bossPassiveAttack[1] = 0;
bossPassiveAttack[2] = 0;

///Active Attack Prep

if bossActiveAttackDelay[1] <= 0 and bossActiveAttackCooldown[1] <= 0 and bossActiveAttackDuration[1] <= 0 {
    var bossdirection = scr_Soul_Point();
    direction = bossdirection;
    speed = 0;
    bossActiveAttack[1] = 0;
    if bossActiveAttack[1] = 1 {
        bossActiveAttackDelay[1] = 5;
        bossActiveAttackCooldown[1] = (120 + random(60));
        bossPatternCount = 4;
        bossPatternCooldown = 20;
        bossPatternCooldownMax = 20;
        bulletdirection = random(360);
        bossPatternDirection = bulletdirection;
        bossActiveAttackDuration[1] = 10 + bossPatternCooldown * bossPatternCount;
    }

    bossPatternCountMax = bossPatternCount;
}


/// Active Attack Pattern Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Basic_Red_Bullet;
    bullet_sprite = spr_Enemy_Shot;
    bullet_speed = bossbulletspeed;
    bullet_power = bosspower * 1;
    bullet_direction = (-5 + random(10)) / bossaccuracy;
    bullet_lifespan = 120 + random(180);
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;

if bossActiveAttackDelay[1] <= 0 and bossPatternCooldown <= 0 and bossPatternCount > 0 {
        
    if bossActiveAttack[1] = 1 {

        minion_count = 1;
        minion_type = obj_Mini_Manifest;
        minion_health = bossmaxhealth / 15;
        minion_defense = 0
        scr_Minion_Spawn();
    
    }
    
    bossPatternCount -= 1;
    bossPatternCooldown += bossPatternCooldownMax;
}

/// Active Attack Post
   
if bossActiveAttackDuration[1] <= 0 { 
    bossActiveAttack[1] = 0;
    bossActiveAttack[2] = 0;
    bossActiveAttack[3] = 0;
    bossActiveAttack[0] = 0;
}


#region /// Boss Sprite


scr_Boss_Size_Lerp_Dir(0.15);


#endregion

scr_Boss_Soul_Hitbox(sprite_index);
