scr_Boss_Status_Step();
scr_Boss_Attack_Step();

///

if state != states.leaping {
	scr_Soul_Outside_Check();	
}

if bossActiveAttackDelay[1] <= 0 and bossActiveAttackCooldown[1] <= 0 and bossActiveAttackDuration[1] <= 0 {
    bossActiveAttack[1] = choose(1,2);
	
	state = states.normal;
	
    if bossActiveAttack[1] = 1 {
		image_index = 0;
		
		jumpDirection = "Up";
		jumpHeight = 0;
		
		bossActiveAttackDelay[1] = 0;
		
        scr_Boss_Dash_Setup();
        bossPatternCount = 90;
        bossPatternCountMax = bossPatternCount;
        bossPatternCooldown = 10;
        bossPatternCooldownMax = 1;
		
		var bossdirection = scr_Soul_Point();
        bossDashDirection = bossdirection;
		
		scr_Hop_Distance_Calc(4.5 * bossmovespeed);
		
		bossDashSpeed = 0;
		state = states.jumping;
		
		bossActiveAttackDuration[1] = 15 + bossattackspeed * bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 60 + random(15);
    }
	if bossActiveAttack[1] = 2 {
		image_index = 0;
		
		jumpDirection = "Up";
		jumpHeight = 0;
		
		bossActiveAttackDelay[1] = 0;
		
        scr_Boss_Dash_Setup();
        bossPatternCount = 100;
        bossPatternCountMax = bossPatternCount;
        bossPatternCooldown = 10;
        bossPatternCooldownMax = 1;
		
		var bossdirection = scr_Soul_Point();
        bossDashDirection = bossdirection;
		
		scr_Leap_Distance_Calc(2 * bossmovespeed,30);
		
		bossDashSpeed = 0;
		state = states.leaping;
		
		bossActiveAttackDuration[1] = 10 + bossattackspeed * bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 90 + random(30);
    }
	
	
}

/// Active Attack Pattern Code


if bossActiveAttackDelay[1] <= 0 and bossPatternCooldown <= 0 and bossPatternCount > 0 {
        
	scr_Default_Attack_Settings();
    bullet_type = obj_Basic_Bullet;
    bullet_sprite = spr_Glowy_Purple_Shot;
    bullet_speed = bossbulletspeed * (1.5 + random(0.25));
    bullet_power = bosspower;
    bullet_direction = (-10 + random(20)) / bossaccuracy;
    bullet_lifespan = 400;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    bullet_image_speed = 0.2;
    boss_radius = 0;
	
	if bossActiveAttack[1] = 1 {
        scr_Boss_Dash_Movement(15,10);
		
		speed = bossDashSpeed;
        direction = bossDashDirection;
		
		if bossPatternCount = 1 {
			scr_Boss_Stretch("Horizontal", 0.5);
			
			
			bullet_count = 16;
			bullet_direction = random(360);
			bullet_spread = 360 / bullet_count;
			
			scr_Just_Shoot();
			
			bullet_count = 8;
			bullet_spread = 360 / bullet_count;
			bullet_speed = bullet_speed * 1.4;
			
			scr_Just_Shoot();
		}
		
		scr_Jump_Movement(2);
		
		bossPatternCount -= 1;
        bossPatternCooldown += bossPatternCooldownMax;
    }
	if bossActiveAttack[1] = 2 {
        scr_Boss_Dash_Movement(30,30);
		
		speed = bossDashSpeed;
        direction = bossDashDirection;
		
		if bossPatternCount = 1 {
			scr_Boss_Stretch("Horizontal", 0.5);
			
			bullet_count = 16;
			bullet_direction = random(360);
			bullet_spread = 360 / bullet_count;
			
			scr_Just_Shoot();
			
			bullet_count = 8;
			bullet_spread = 360 / bullet_count;
			bullet_speed = bullet_speed * 1.4;
			
			scr_Just_Shoot();
		}
		
		if bossPatternCount < 1 {
			state = states.normal;
		}
		
		scr_Jump_Movement(30);
		
		bossPatternCount -= 1;
        bossPatternCooldown += bossPatternCooldownMax;
    }
	
}

/// Active Attack Post

if bossActiveAttackDuration[1] <= 0 { 
    bossActiveAttack[1] = 0;
    bossActiveAttack[2] = 0;
}

scr_Boss_Size_Lerp(0.15);

if state = states.jumping || state = states.leaping {
	//if jumpHeight > 10 {
	sprite_index = spr_Soul_Collection_Big_Hop;
	if bossActiveAttackDuration[1] > 10 and image_index > 6 {
		image_index = 6;
	}
	//} else {
}
if jumpDirection = "Down" and jumpHeight <= 10 {
	state = states.normal;
	//image_index = 0;
	//image_speed = 0;
	//sprite_index = spr_Soul_Collection_Big;
}
if state = states.normal {
	//sprite_index = spr_Soul_Collection_Big;
	//image_index = 0;
}
if bossActiveAttack[1] = 0 {
	sprite_index = spr_Soul_Collection_Big;	
}

scr_Boss_Soul_Hitbox(sprite_index);
