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
        bossPatternCount = 60;
        bossPatternCountMax = bossPatternCount;
        bossPatternCooldown = 10;
        bossPatternCooldownMax = 1;
		
		var bossdirection = scr_Soul_Point();
        bossDashDirection = bossdirection;
		
		scr_Hop_Distance_Calc(7.5 * bossmovespeed);
		
		bossDashSpeed = 0;
		state = states.jumping;
		
		bossActiveAttackDuration[1] = 10 + bossattackspeed * bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 45 + random(5);
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
        scr_Boss_Dash_Movement(6,2);
		
		speed = bossDashSpeed;
        direction = bossDashDirection;
		
		if bossPatternCount = bossPatternCountMax / 2 {
			scr_Boss_Stretch("Vertical", 0.3);
			
			//scr_Soul_Shoot();
		}
		
		scr_Jump_Movement(2);
		
		bossPatternCount -= 1;
        bossPatternCooldown += bossPatternCooldownMax;
    }
	
}

/// Active Attack Post

scr_Boss_Size_Lerp(0.15);

if state = states.jumping {
	//if jumpHeight > 10 {
	sprite_index = spr_Jumpy_Slime_Jump;
	//} else {
}
if jumpDirection = "Down" and jumpHeight <= 10 {
		state = states.normal;
		//image_index = 0;
		//image_speed = 0;
		sprite_index = spr_Jumpy_Slime;
	}
if state = states.normal {
	sprite_index = spr_Jumpy_Slime;
	image_index = 0;
}

scr_Boss_Soul_Hitbox(sprite_index);
