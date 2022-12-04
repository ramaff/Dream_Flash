/// @description Active Attack Prep

var bossdirection = scr_Soul_Point();
speed = bossmovespeed * 0.85;
direction = bossdirection;
var realchamp = champ - frac(champ)

if bossActiveAttackDelay[1] <= 0 and bossActiveAttackCooldown[1] <= 0 and bossActiveAttackDuration[1] <= 0 {
        
	bossActiveAttack[1] = 1;
	
	if realchamp = 2 {
		bossActiveAttack[1] = 2;	
	}
		
    if bossActiveAttack[1] = 1 || bossActiveAttack[1] = 2 {
        bossPatternDirection = scr_Soul_Point();
        bossActiveAttackDelay[1] = 5;
        bossPatternCount = 3;
        bossPatternCooldown = 60;
        bossPatternCooldownMax = 60;
        bossActiveAttackDuration[1] = 15 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 120 + random(90);
    }
    bossPatternCountMax = bossPatternCount;
}


/// Active Attack Pattern Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Basic_Bullet;
    bullet_sprite = spr_Glowy_Green_Shot;
    bullet_speed = bossbulletspeed * 1.75;
    bullet_power = bosspower;
    bullet_direction = (-15 + random(30)) / bossaccuracy;
    bullet_lifespan = 300;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;

if bossActiveAttackDelay[1] <= 0 and bossPatternCooldown <= 0 and bossPatternCount > 0 {
        
    if bossActiveAttack[1] = 1 {
		scr_Boss_Stretch("Vertical", 0.3);
		
		bullet_count = 5;
		bullet_spread = 15;

        scr_Soul_Shoot();
	}
	
	
	if bossActiveAttack[1] = 2 {
		scr_Boss_Stretch("Vertical", 0.3);
		
		bullet_count = 1;

		bullet_speed = bossbulletspeed * (0.8 + random(0.125));
		bullet_sprite = spr_Purple_Shot;
		bullet_size = 1.25;
		bullet_type = obj_Burst_Strike_Bullet;
		
		scr_Soul_Shoot();
	}
        
        bossPatternCount -= 1;
        bossPatternCooldown += bossPatternCooldownMax;

}

/// Active Attack Post
   
if bossActiveAttackDuration[1] <= 0 { 
    bossActiveAttack[1] = 0;
}
if bossActiveAttackDuration[2] <= 0 { 
    bossActiveAttack[2] = 0;
}
if bossActiveAttackDuration[3] <= 0 { 
    bossActiveAttack[3] = 0;
}

if realchamp = 2 {
	sprite_index = spr_Wisper_P2_Purple;
}

/// Boss Step Event

scr_Boss_Size_Lerp(0.15);

scr_Boss_Step();

scr_Boss_Soul_Hitbox(sprite_index);