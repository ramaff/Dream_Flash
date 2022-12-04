scr_Boss_Status_Step();
scr_Boss_Attack_Step();

///

friction = 0.5;

if bossActiveAttackDelay[1] <= 0 and bossActiveAttackCooldown[1] <= 0 and bossActiveAttackDuration[1] <= 0 {
    bossActiveAttack[1] = choose(1,2);
	
	state = states.normal;
	
    if bossActiveAttack[1] = 1 {
		image_index = 0;
		
		jumpDirection = "Up";
		jumpHeight = 0;
		
		bossActiveAttackDelay[1] = 0;
		
        scr_Boss_Dash_Setup();
        bossPatternCount = 48;
        bossPatternCountMax = bossPatternCount;
        bossPatternCooldown = 10;
        bossPatternCooldownMax = 1;
		
		var bossdirection = scr_Soul_Point() - 90 + random(180);
        bossDashDirection = bossdirection;
		
		scr_Hop_Distance_Calc(4.5 * bossmovespeed);
		
		bossDashSpeed = 0;
		state = states.jumping;
		
		bossActiveAttackDuration[1] = 15 + bossattackspeed * bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 60 + random(30);
    }
	
}

/// Active Attack Pattern Code


if bossActiveAttackDelay[1] <= 0 and bossPatternCooldown <= 0 and bossPatternCount > 0 {
        
	scr_Default_Attack_Settings();
    bullet_type = obj_Soap_Pool;
    bullet_sprite = spr_Soap_Pool;
    bullet_speed = bossbulletspeed * 0;
    bullet_power = bosspower;
    bullet_direction = (-180 + random(360)) / bossaccuracy;
    bullet_lifespan = 120 + irandom(30);
    bullet_size = 1 + random(0.15);
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;
	bullet_image_speed = 0.2;
	
	if bossActiveAttack[1] = 1 {
        scr_Boss_Dash_Movement(6,2);
		
		speed = bossDashSpeed;
        direction = bossDashDirection;
		
		if bossPatternCount = 1 {
			scr_Boss_Stretch("Horizontal", 0.8);
			
			repeat(4) {
				boss_xoffset = -50 + random(100);
				boss_yoffset = -30 + random(80);
			
				scr_Offset_Normal_Shoot();
			}
			
			bullet_type = obj_Bubble_Bullet;
		    bullet_sprite = spr_Pink_Bubble_Bullet;
		    bullet_direction = 85 + (random(10)) / bossaccuracy;
		    bullet_lifespan = 120 + random(30);
			
			bullet_count = 2;
			bullet_spread = 360 / bullet_count;
			bullet_speed = bossbulletspeed * 0.7;
			scr_Just_Shoot();	
			bullet_speed = bossbulletspeed * 1.6;
			scr_Just_Shoot();
		}
		
		scr_Jump_Movement(2);
		
		bossPatternCount -= 1;
        bossPatternCooldown += bossPatternCooldownMax;
    }
	
}

/// Active Attack Post

if bossActiveAttackDuration[1] <= 0 { 
    bossActiveAttack[1] = 0;
}

scr_Boss_Size_Lerp(0.15);

if state = states.jumping {
	//if jumpHeight > 10 {
	sprite_index = spr_Soap_Cube_Hop;
	if image_index > 4 and bossActiveAttackDuration[1] > 15 {
		image_index = 4;
	}
	//} else {
}
if jumpDirection = "Down" and jumpHeight <= 10 {
		state = states.normal;
		//image_index = 0;
		//image_speed = 0;
		sprite_index = spr_Soap_Cube_Hop;
		if image_index > 4 and bossActiveAttackDuration[1] > 15 {
			image_index = 4;	
		}
	}
if /*state = states.normal*/ bossActiveAttack[1] = 0 {
	sprite_index = spr_Soap_Cube;
	image_index = 0;
}

scr_Boss_Soul_Hitbox(sprite_index);
