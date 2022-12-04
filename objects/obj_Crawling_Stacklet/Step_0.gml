/// @description Active Attack Prep

if bossActiveAttackDelay[1] <= 0 and bossActiveAttackCooldown[1] <= 0 and bossActiveAttackDuration[1] <= 0 {
    bossActiveAttack[1] = choose(1);
	
	if champ = 2 {
		bossActiveAttack[1] = 2;
	}
    
    speed = bossmovespeed * (0.2 + random(0.2));
    direction = random(360);
        
    if bossActiveAttack[1] = 1 {
        bossPatternDirection = scr_Soul_Point();
        bossActiveAttackDelay[1] = 10;
        bossPatternCount = 12;
		bossPatternCountMax = 12;
        bossPatternCooldown = 5;
        bossPatternCooldownMax = 5;
        bossActiveAttackDuration[1] = 5 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 105 + (irandom(1) * 30);
    }
	if bossActiveAttack[1] = 2 {
        bossPatternDirection = scr_Soul_Point();
        bossActiveAttackDelay[1] = 10;
        bossPatternCount = 8;
		bossPatternCountMax = 8;
        bossPatternCooldown = 5;
        bossPatternCooldownMax = 10;
        bossActiveAttackDuration[1] = 5 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 105 + (irandom(1) * 30);
    }
    bossPatternCountMax = bossPatternCount;
}


/// Active Attack Pattern Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Basic_Bullet;
    bullet_sprite = spr_Glowy_Purple_Shot;
    bullet_speed = bossbulletspeed * 2;
    bullet_power = bosspower;
    bullet_direction = (-15 + random(30)) / bossaccuracy;
    bullet_lifespan = 300;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;
    
    if champ = 2 {
        bullet_type = obj_Direction_Bullet;
        bullet_sprite = spr_Enemy_Laser;
    }
    if champ = 8 {
        bullet_type = obj_Speed_Up_Direction_Bullet;
        bullet_sprite = spr_Big_Fire_Shot;
        bullet_speed = bossbulletspeed * 0.9;
    }

if bossActiveAttackDelay[1] <= 0 and bossPatternCooldown <= 0 and bossPatternCount > 0 {
        
    if bossActiveAttack[1] = 1 {
		scr_Boss_Stretch("Horizontal",0.15);
		
        bullet_direction = bossPatternDirection + (-15 + random(30)) / bossaccuracy;
        scr_Just_Shoot();
        
        bossPatternCount -= 1;
        bossPatternCooldown += bossPatternCooldownMax;
    }
	if bossActiveAttack[1] = 2 {
		scr_Boss_Stretch("Horizontal",0.15);
		
        bullet_direction = bossPatternDirection + (-2.5 + random(5)) / bossaccuracy;
		bullet_count = 2;
		bullet_spread = 15 * (bossPatternCountMax - bossPatternCount);
        scr_Just_Shoot();
        
        bossPatternCount -= 1;
        bossPatternCooldown += bossPatternCooldownMax;
    }

}

/// Active Attack Post

scr_Boss_Size_Lerp(0.15);

if (bossActiveAttack[1] = 1 || bossActiveAttack[1] = 2) and bossActiveAttackDuration[1] > 0 {
	sprite_index = spr_Crawler_Stacklet_Shoot;	
} else {
	sprite_index = spr_Crawler_Stacklet;	
}
   
if bossActiveAttackDuration[1] <= 0 { 
    bossActiveAttack[1] = 0;
}
if bossActiveAttackDuration[2] <= 0 { 
    bossActiveAttack[2] = 0;
}
if bossActiveAttackDuration[3] <= 0 { 
    bossActiveAttack[3] = 0;
}

/// Boss Step Event

scr_Boss_Step();

scr_Boss_Soul_Hitbox(sprite_index);