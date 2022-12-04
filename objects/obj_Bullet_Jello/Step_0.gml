scr_Boss_Status_Step();
scr_Boss_Attack_Step();

///

if bossActiveAttackDelay[1] <= 0 and bossActiveAttackCooldown[1] <= 0 and bossActiveAttackDuration[1] <= 0 {
    bossActiveAttack[1] = choose(1);
	
	state = states.normal;
	
    if bossActiveAttack[1] = 1 {
		jumpDirection = "Up";
		jumpHeight = 0;
		
        scr_Boss_Dash_Setup();
        bossPatternCount = 48;
        bossPatternCountMax = bossPatternCount;
        bossPatternCooldown = 10;
        bossPatternCooldownMax = 1;
		
		var bossdirection = scr_Soul_Point();
        bossDashDirection = bossdirection;
		
		scr_Hop_Distance_Calc(4 * bossmovespeed);
		
		bossDashSpeed = 0;
		state = states.jumping;
		
		bossActiveAttackDuration[1] = 15 + bossattackspeed * bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 30 + random(15);
    }
}

/// Active Attack Pattern Code


if bossActiveAttackDelay[1] <= 0 and bossPatternCooldown <= 0 and bossPatternCount > 0 {
        
	if bossActiveAttack[1] = 1 {
        scr_Boss_Dash_Movement(6,2);
		
		speed = bossDashSpeed;
        direction = bossDashDirection;
		
		scr_Jump_Movement(2);
		
		bossPatternCount -= 1;
        bossPatternCooldown += bossPatternCooldownMax;
    }
	
}

/// Active Attack Post

if state = states.jumping {
	if jumpHeight > 10 {
		image_index = 1;
	} else {
		if jumpDirection = "Down" {
			state = states.normal;
		}
		image_index = 0;
	}
}

scr_Boss_Soul_Hitbox(sprite_index);
