/// @description  Boss Step Event

scr_Boss_Step();

scr_Boss_Two_Face_Direction();

if instance_exists(obj_Sleeper) {

    dist = point_distance(x,y,obj_Sleeper.x,obj_Sleeper.y);
    
	/*
    if dist < 256 {
        dist += dist / 2;
    } else {
        dist += 128
    }
    */
    ang = point_direction(x,y,obj_Sleeper.x,obj_Sleeper.y);
    xx = lengthdir_x(dist * 0.66,ang);
    yy = lengthdir_y(dist * 0.66,ang);
    
    with instance_create(x + xx,y + yy,obj_Thought) {
        image_index = 0;
    }
    
    xx = lengthdir_x(dist * 0.33,ang);
    yy = lengthdir_y(dist * 0.33,ang);
    
    with instance_create(x + xx,y + yy,obj_Thought) {
        image_index = 1;
    }
} else if currentphase = 1 {
    currentphase = 2;
    bossattackspeed = 1;
    bossmaxhealth = bossmaxhealth2;
    bosshealth = bossmaxhealth2;
    bossdefense = bossdefense2;
}

image_speed = bossattackspeed;

///Active Attack Prep

if bossActiveAttackDelay[1] <= 0 and bossActiveAttackCooldown[1] <= 0 and bossActiveAttackDuration[1] <= 0 {
    
    speed = bossmovespeed;
    bossdirection = scr_Soul_Point();
    direction = bossdirection;
    
    if (distance_to_object(obj_Sleeper) < 128) {
        bossdirection = point_direction(x,y,obj_Sleeper.x,obj_Sleeper.y);
        direction = bossdirection + 180;
    }
	
	if currentphase = 1 {
		bossActiveAttack[1] = choose(2);
	} else {
		bossActiveAttack[1] = choose(1,2,3);
	}
    bossActiveAttackDelay[1] = 10;
    
    if bossActiveAttack[1] = 1 {
        bossActiveAttackDelay[1] = 15;
        bossActiveAttackCooldown[1] = (60 + random(30));
        bossPatternCount = 6;
        bossPatternCooldown = 10;
		bossPatternCooldownMax = 8;
        bulletdirection = random(360);
        bossPatternDirection = bulletdirection;
        bossActiveAttackDuration[1] = 10 + bossPatternCooldown * bossPatternCount;
    }
    if bossActiveAttack[1] = 2 {
        bossActiveAttackDelay[1] = 15;
        bossActiveAttackCooldown[1] = (60 + random(30));
        bossPatternCount = 5;
        bossPatternCooldown = 30;
		bossPatternCooldownMax = 30;
        bulletdirection = random(360);
        bossPatternDirection = bulletdirection;
        bossActiveAttackDuration[1] = 10 + bossPatternCooldown * bossPatternCount;
    }
    if bossActiveAttack[1] = 3 {
        scr_Boss_Dash_Setup();
        bossPatternCount = 100;
        bossPatternCountMax = bossPatternCount;
        bossPatternCooldown = 1;
        bossPatternCooldownMax = 1;
        bossActiveAttackDuration[1] = 15 + bossattackspeed * bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 60 + random(30);
		
		var bossdirection = scr_Soul_Point();
        bossMaxDashSpeed = 6 * bossmovespeed;
		bossDashSpeed = 0;
    }
    
}


/// Active Attack Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Mischief_Bullet;
    bullet_sprite = spr_Mischief_Shot;
    bullet_speed = bossbulletspeed;
    bullet_power = bosspower * 2;
    bullet_direction = (-5 + random(10)) / bossaccuracy;
    bullet_lifespan = 400;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;
    
    if champ = 2 {
        bullet_type = obj_Homing_Mischief;
    }

if bossActiveAttackDelay[1] <= 0 {        
    
    if bossActiveAttack[1] = 2 {
    }
}

/// Active Attack Pattern Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Dark_Splash;
    bullet_sprite = spr_Dark_Ball;
    bullet_speed = bossbulletspeed;
    bullet_power = bosspower * 2;
    bullet_direction = (-20 + random(40)) / bossaccuracy;
    bullet_lifespan = 400;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;

if bossActiveAttackDelay[1] <= 0 and bossPatternCooldown <= 0 and bossPatternCount > 0 {
        
    
    if bossActiveAttack[1] = 1 {
		scr_Boss_Stretch("Vertical", 0.2);
		
        bullet_speed = bossbulletspeed * (1.35 + random(0.9));
		bullet_lifespan = 160;
		bullet_image_speed = 0.5;
        bullet_size = 0.7 + random(0.3);
        //bullet_direction = bossPatternDirection;
        scr_Soul_Shoot();
    
    }
    
    if bossActiveAttack[1] = 2 {
		scr_Boss_Stretch("Vertical", 0.2);
		
        bullet_type = obj_Nightmare_Bullet;
        bullet_size = 1;
        bullet_count = 1;
        bullet_speed = bossbulletspeed * (2.1 + random(0.1));
        bullet_direction = (-2.5 + random(5)) / bossaccuracy;
        scr_Soul_Shoot();
    
    }
    
    if bossActiveAttack[1] = 3 {
        scr_Boss_Dash_Movement(30,15);
		
		speed = bossDashSpeed;
        direction = bossDashDirection;
		
		if bossPatternCount = 1 {
			scr_Boss_Stretch("Horizontal", 0.75);	
			
			bullet_type = obj_Basic_Bullet;
			bullet_sprite = spr_Glowy_Enemy_Shot;
	        bullet_size = 1;
	        bullet_count = 16;
	        bullet_speed = bossbulletspeed * (2.4 + random(0.1));
			bullet_spread = 360 / bullet_count;
			bullet_power = bosspower * 1;
			
	        scr_Soul_Shoot();
			
		}
    }
	
	bossPatternCount -= 1;
    bossPatternCooldown += bossPatternCooldownMax;
	
    
}

/// Active Attack Post
   
if bossActiveAttackDuration[1] <= 0 { 
    bossActiveAttack[1] = 0;
    bossActiveAttack[2] = 0;
}

#region /// Boss Sprite


scr_Boss_Size_Lerp_Dir(0.15);

if bossActiveAttack[1] = 3 {
    sprite_index = spr_Manifestation_Chase;
	if image_index >= 2 and bossActiveAttackDuration[1] > 15 {
		image_index = 2;	
	}
} else if bossActiveAttack[1] != 0 {
    sprite_index = spr_Manifestation_Shooting;
	if image_index > 3 and bossActiveAttackDuration[1] > 10 {
		image_index = 3;	
	}
} else {
	sprite_index = spr_Manifestation;
}

#endregion

scr_Boss_Soul_Hitbox(sprite_index);