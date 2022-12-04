/// @description  Boss Step Event

scr_Boss_Step();

var realchamp = champ - frac(champ)

///Active Attack Prep

if bossActiveAttackDelay[1] <= 0 and bossActiveAttackCooldown[1] <= 0 and bossActiveAttackDuration[1] <= 0 {
    bossActiveAttack[1] = choose(1);
        
    bossActiveAttackDelay[1] = 5;
    
    bossActiveAttackDuration[1] = 10;
    bossActiveAttackCooldown[1] = 180 + random(60);
     
    bossPatternCountMax = bossPatternCount;
}



/// Active Attack Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Basic_Bullet;
    bullet_sprite = spr_Glowy_Pink_Shot;
    bullet_speed = bossbulletspeed * 1.35;
    bullet_power = bosspower;
    bullet_direction = (-15 + random(30)) / bossaccuracy;
    bullet_lifespan = 300;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;
	
	if realchamp = 1 {
		bullet_sprite = spr_Glowy_Blue_Shot;	
	}
    
if bossActiveAttackDelay[1] <= 0 {
    if bossActiveAttack[1] = 1 {
		
		scr_Boss_Stretch("Vertical", 0.3);
		
        var bossdirection = random(360)
        speed = (0.7 + random(0.6)) * bossmovespeed;
        direction = bossdirection;
        
        bullet_count = 16;
        bullet_spread = 360 / bullet_count;
        bullet_lifespan = 400;
        bullet_speed = bossbulletspeed;
		scr_Just_Shoot();
		
		bullet_count = 6;
		bullet_speed += bossbulletspeed * 0.35;
		
        scr_Soul_Shoot();
		
		if realchamp = 1 {
			repeat(2) {
				bullet_count = 6;
				bullet_speed += bossbulletspeed * 0.35;
		
			    scr_Soul_Shoot();	
			}
		}
    
        bossActiveAttack[1] = 0;
    }
    
}

if realchamp = 1 {
	sprite_index = spr_Wisper_P2_Blue;
}

/// Active Attack Post

scr_Boss_Size_Lerp(0.15);

if bossActiveAttackDuration[1] <= 0 { 
    bossActiveAttack[1] = 0;
}

scr_Boss_Soul_Hitbox(sprite_index);