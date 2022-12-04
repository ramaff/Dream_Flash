scr_Boss_Status_Step();
scr_Boss_Attack_Step();

///

var bossdirection = scr_Soul_Point();
    speed = 3 * speedFac; 
	if bossActiveAttack[1] != 0 {
		speed = 0.5 * speedFac;	
	}
    direction = bossdirection;

if bossActiveAttackDelay[1] <= 0 and bossActiveAttackCooldown[1] <= 0 and bossActiveAttackDuration[1] <= 0 {
    bossActiveAttack[1] = choose(1,2);
	
	state = states.normal;
	
    if bossActiveAttack[1] = 1 {
		image_index = 0;
		
		
		bossActiveAttackDelay[1] = 0;
		
        scr_Boss_Dash_Setup();
        bossPatternCount = 3;
        bossPatternCountMax = 3;
        bossPatternCooldown = 15;
        bossPatternCooldownMax = 15;
		
		bulletdirection = scr_Soul_Point();
        bossPatternDirection = bulletdirection;
		
		bossActiveAttackDuration[1] = 10 + bossattackspeed * bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 60 + irandom(30);
    }
	
}

/// Active Attack Pattern Code


if bossActiveAttackDelay[1] <= 0 and bossPatternCooldown <= 0 and bossPatternCount > 0 {
        
	scr_Default_Attack_Settings();
    bullet_type = obj_Rain_Drop_Bullet;
    bullet_sprite = spr_Water_Drop_Bullet;
    bullet_speed = bossbulletspeed * (0.5 + random(0.5));
    bullet_power = bosspower;
    bullet_lifespan = 300;
    bullet_direction = (-10 + random(20)) / bossaccuracy;
    bullet_lifespan = 600;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    bullet_image_speed = 0.2;
    boss_radius = 0;
	
	if bossActiveAttack[1] = 1 {
		
		if (bossPatternCount mod 2 = 0) {
			scr_Boss_Stretch("Horizontal",0.15);
		}
		
        bullet_direction = bossPatternDirection + (-15 + random(30)) / bossaccuracy;
		bullet_speed = bossbulletspeed * (1.15 + random(0.5));
        scr_Just_Shoot();
		
		bossPatternCount -= 1;
        bossPatternCooldown += bossPatternCooldownMax;
    }
	
}

if bossActiveAttackDuration[1] <= 0 {
	bossActiveAttack[1] = 0;	
}

scr_Boss_Size_Lerp(0.15);

if bossActiveAttack[1] = 1 {
	if bossPatternCount = bossPatternCountMax {
		image_index = 1;
	} else {
		image_index = 0;
	}
} else {
	image_index = 0;
}

scr_Boss_Soul_Hitbox(sprite_index);