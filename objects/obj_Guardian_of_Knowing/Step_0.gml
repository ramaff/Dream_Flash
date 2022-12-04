/// @description  Boss Step Event

scr_Boss_Step();

random_y = 0;
scr_Room_Loop_Everywhere();

scr_Boss_Two_Face_Direction();

///Passive Attack Prep

if bossPassiveAttackDelay[1] <= 0 and bossPassiveAttackCooldown[1] <= 0 {
    if currentphase = 2 {
        bossPassiveAttack[1] = 1;
        bossPassiveAttackCooldown[1] = 1;
        bossPassiveAttackDelay[1] = 0;
    }
    
}

if bossPassiveAttackDelay[2] <= 0 and bossPassiveAttackCooldown[2] <= 0 {
    if currentphase = 2 {
        bossPassiveAttack[2] = 1;
        bossPassiveAttackCooldown[2] = 30 + random(20);
        bossPassiveAttackDelay[2] = 5;
    }
    
}



///Passive Attack Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Phase_Bullet;
    bullet_sprite = spr_Knowledge_Ball;
    bullet_speed = 100;
    bullet_power = bosspower;
    bullet_direction = (-180 + random(360)) / bossaccuracy;
    bullet_lifespan = 1;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;
    
if bossPassiveAttack[1] = 1 {
    bullet_direction = bossBallDirection;
    bullet_count = 1;
    bullet_spread = 0;
    soul_shot_block = 1;
    bullet_id = id;
    
    bullet_hit_list = Ball1List;
    bullet_hit_ID = Ball1HitID;
    boss_Part = 1;
    scr_Just_Shoot_No_Paranoia();       
    
    bossBallDirection += bossmovespeed;
}

    scr_Default_Attack_Settings();
    bullet_type = obj_Basic_Bullet;
    bullet_sprite = spr_White_Shot;
    bullet_speed = bossbulletspeed * (1.35 + random(0.4));
    bullet_power = bosspower;
    bullet_direction = (-10 + random(20)) / bossaccuracy;
    bullet_lifespan = 300 + irandom(90);
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;


if bossPassiveAttack[2] = 1 {
    bullet_count = 3;
    bullet_spread = 12;
    boss_xoffset = lengthdir_x(100,bossBallDirection);
    boss_yoffset = lengthdir_y(100,bossBallDirection);
    scr_Offset_Soul_Shoot();  
}

bossPassiveAttack[1] = 0;
bossPassiveAttack[2] = 0;

///Active Attack Prep

if bossActiveAttackDelay[1] <= 0 and bossActiveAttackCooldown[1] <= 0 and bossActiveAttackDuration[1] <= 0 {
    var bossdirection = scr_Soul_Point();
    speed = 0.2 * bossmovespeed;
    direction = bossdirection;
    
    bossActiveAttack[1] = choose(1,1,2,2,3);
    if currentphase = 2 {
        bossActiveAttack[1] = choose(1,1,2,2,3);
    }
    
    if bossActiveAttack[1] = 1 {
    bossActiveAttackDelay[1] = 10;
        bossPatternCount = 35;
        bossPatternCooldown = 6;
        bossPatternCooldownMax = 6;
        bossActiveAttackDuration[1] = 15 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 60 + random(30);
    }
    if bossActiveAttack[1] = 2 {
        bossActiveAttackDelay[1] = 10;
        bossPatternCount = 2;
        bossPatternCooldown = 50;
        bossPatternCooldownMax = 50;
        bossActiveAttackDuration[1] = 15 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 100 + random(30);
    }
    if bossActiveAttack[1] = 3 {
        bossAngle = scr_Soul_Point();
        rspeed = 0.6;
        
        bossActiveAttackDelay[1] = 10;
        bossPatternCount = 300 + irandom(120);
        bossPatternCooldown = 1;
        bossPatternCooldownMax = 1;
        bossActiveAttackDuration[1] = 15 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 90 + random(30);
    }
    if bossActiveAttack[1] = 4 {
        bossActiveAttackDelay[1] = 10;
        bossPatternCount = 2 + irandom(1);
        bossPatternCooldown = 25;
        bossPatternCooldownMax = 25;
        bossActiveAttackDuration[1] = 15 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 60 + random(30);
    }
    if bossActiveAttack[1] = 5 {
        bossActiveAttackDelay[1] = 10;
        bossActiveAttackDuration[1] = 150;
        bossActiveAttackCooldown[1] = 60 + random(30);
    }
    if bossActiveAttack[1] = 6 {
        bossActiveAttackDelay[1] = 10;
        bossPatternCount = 12 + irandom(6);
        bossPatternCooldown = 6;
        bossPatternCooldownMax = 6;
        bossActiveAttackDuration[1] = 15 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 60 + random(30);
    }
    bossPatternCountMax = bossPatternCount;
}


/// Active Attack Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Knowledge_Ball;
    bullet_sprite = spr_Knowledge_Ball;
    bullet_speed = bossbulletspeed;
    bullet_power = bosspower * 2;
    bullet_direction = (-5 + random(10)) / bossaccuracy;
    bullet_lifespan = 500;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;
    
if bossActiveAttackDelay[1] <= 0 {
        
}

/// Active Attack Pattern Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Direction_Phase_Bullet;
    bullet_sprite = spr_Feather_Shot;
    bullet_speed = bossbulletspeed;
    bullet_power = bosspower;
    bullet_direction = (-15 + random(30)) / bossaccuracy;
    bullet_lifespan = 300;
    bullet_size = 0.8;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;

if bossActiveAttackDelay[1] <= 0 and bossPatternCooldown <= 0 and bossPatternCount > 0 {
        
    if bossActiveAttack[1] = 1 {
		
		if bossPatternCount mod 5 = 0 {
			scr_Boss_Stretch("Vertical", 0.1);
		}
		
        bullet_direction = patterndirection + (-120 + random(120)) / bossaccuracy;
        bullet_power = bosspower;
        bullet_count = 3;
        bullet_spread = 120;
        bullet_speed = bossbulletspeed * (1.75 + random(1.25));
        scr_Just_Shoot();
		
		if bossPatternCount mod 7 = 0 and bossPatternCount != 35 {
			bullet_direction = random(360);
	        bullet_power = bosspower;
	        bullet_count = 18;
	        bullet_spread = 360 / bullet_count;
	        bullet_speed = bossbulletspeed * (1.25 + random(0.25));
	        scr_Just_Shoot();
		}
    }
	if bossActiveAttack[1] = 2 {
		scr_Boss_Stretch("Vertical", 0.4);
		
		bullet_type = obj_Knowledge_Ball;
		bullet_sprite = spr_Knowledge_Ball;
		
		if bossPatternCount mod 2 = 0 {
			bullet_type = obj_Knowledge_Ball_Alt;	
		}
		
        soul_shot_block = 1;
        bullet_count = 6;
        bullet_direction = random(360);
        bullet_spread = 360 / bullet_count;
        bullet_speed = bossbulletspeed * (1 + random(0.05));
        scr_Just_Shoot();
        
    }
    if bossActiveAttack[1] = 3 {
		if bossPatternCount mod 20 = 0 {
			scr_Boss_Stretch("Vertical", 0.1);
		}
		
        if frac(bossPatternCount / 18) = 0 {
            bullet_direction = random(360);
            bullet_power = bosspower;
            bullet_count = 4;
            bullet_spread = 90;
            bullet_speed = bossbulletspeed * (0.8 + random(1.7));
            scr_Just_Shoot();
        }
        speed = min(speed + 0.5,bossmovespeed * 1.9);

        var pointDir = scr_Soul_Point();
        bossAngle += sin(degtorad(pointDir - bossAngle)) * rspeed;
        direction = bossAngle;
    }
    
    bossPatternCount -= 1;
    bossPatternCooldown += bossPatternCooldownMax;
}


/// Active Attack Post
   
if bossActiveAttackDuration[1] <= 0 { 
    speed = 0.2 * bossmovespeed;
    bossActiveAttack[1] = 0;
    bossActiveAttack[2] = 0;
    bossActiveAttack[3] = 0;
    bossActiveAttack[0] = 0;
}

#region /// Boss Sprite


scr_Boss_Size_Lerp(0.15);

if bossActiveAttack[1] = 1 {
	sprite_index = spr_Guardian_of_Knowing_Blast;	
	if image_index >= 7 and bossActiveAttackDuration[1] > 45 {
		image_index = 2;	
	}
} else if bossActiveAttack[1] = 3 and bossPatternCount > 0 {
	sprite_index = spr_Guardian_Flying;
	if image_index >= 3 and bossActiveAttackDuration[1] > 10 {
		image_index = 3;	
	}
} else {
	sprite_index = spr_Guardian_of_Knowing;
}

#endregion

scr_Boss_Soul_Hitbox(sprite_index);