scr_Boss_Status_Step();
scr_Boss_Attack_Step();

///

if bossActiveAttackDelay[1] <= 0 and bossActiveAttackCooldown[1] <= 0 and bossActiveAttackDuration[1] <= 0 {
    bossActiveAttack[1] = choose(1,2);
	
	state = states.normal;
	
    if bossActiveAttack[1] = 1 {
		image_index = 0;
		
		jumpDirection = "Up";
		jumpHeight = 0;
		
		bossActiveAttackDelay[1] = 0;
		
        scr_Boss_Dash_Setup();
        bossPatternCount = 135;
        bossPatternCountMax = bossPatternCount;
        bossPatternCooldown = 10;
        bossPatternCooldownMax = 1;
		
		var bossdirection = scr_Soul_Point();
        bossDashDirection = bossdirection;
		
		scr_Leap_Distance_Calc(1 * bossmovespeed,30);
		
		bossDashSpeed = 0;
		state = states.leaping;
		
		bossActiveAttackDuration[1] = 15 + bossattackspeed * bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 210 + random(120);
    }
	
}

/// Active Attack Pattern Code


if bossActiveAttackDelay[1] <= 0 and bossPatternCooldown <= 0 and bossPatternCount > 0 {
        
	scr_Default_Attack_Settings();
    bullet_type = obj_Basic_Bullet;
    bullet_sprite = spr_Glowy_Purple_Shot;
    bullet_speed = bossbulletspeed * (1 + random(0.25));
    bullet_power = bosspower;
    bullet_direction = (-10 + random(20)) / bossaccuracy;
    bullet_lifespan = 600;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    bullet_image_speed = 0.2;
    boss_radius = 0;
	
	if bossActiveAttack[1] = 1 {
        scr_Boss_Dash_Movement(30,30);
		
		speed = bossDashSpeed;
        direction = bossDashDirection;
		
		if bossPatternCount <= 1 {
			
			scr_Boss_Stretch("Horizontal", 0.5);
			
			bullet_count = 4;
			bullet_spread = 90;
			bullet_type = obj_Basic_Bullet;
			bullet_sprite = spr_Glowy_Purple_Shot;
			bullet_lifespan = 400;
			bullet_speed = bossbulletspeed * (1 + random(0.25));
			bullet_direction = 45;
			
			boss_yoffset = 50;
		
			scr_Just_Shoot();
			
			state = states.normal;
		}
		
		scr_Jump_Movement(18);
		
		bossPatternCount -= 1;
        bossPatternCooldown += bossPatternCooldownMax;
    }
	
}

/// Active Attack Post

if bossActiveAttackDuration[1] <= 0 { 
    bossActiveAttack[1] = 0;
    bossActiveAttack[2] = 0;
    bossActiveAttack[3] = 0;
    bossActiveAttack[0] = 0;
	state = states.normal;
}

scr_Boss_Size_Lerp(0.15);

if bossActiveAttack[1] != 0 {
	//if jumpHeight > 10 {
	sprite_index = spr_Crawler_Minion_Hop;
	if image_index >= 3 and bossActiveAttackDuration[1] > 10 {
		image_index = 3;	
	}
	//} else {
}
if state = states.normal {
	sprite_index = spr_Crawler_Minion;
	image_index = 0;
}

scr_Boss_Soul_Hitbox(sprite_index);

