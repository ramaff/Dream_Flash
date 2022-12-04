/// @description  Boss Step Event

scr_Boss_Step();

//image_xscale = 0.8;
//image_yscale = 0.8;

///Passive Attack Prep

if bossPassiveAttackDelay[1] <= 0 and bossPassiveAttackCooldown[1] <= 0 {
    if currentphase = 1 and speed < 0.3 * bossmovespeed {
        var bossdirection = scr_Soul_Point();
        direction = bossdirection;
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
    scr_Just_Shoot();       
    
    bossBallDirection += bossmovespeed;
}

    scr_Default_Attack_Settings();
    bullet_type = obj_Basic_Bullet;
    bullet_sprite = spr_Knowledge_Ball;
    bullet_speed = bossbulletspeed * (1.5 + random(0.5));
    bullet_power = bosspower;
    bullet_direction = (-10 + random(20)) / bossaccuracy;
    bullet_lifespan = 300 + irandom(90);
    bullet_size = 0.75;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;


if bossPassiveAttack[2] = 1 {
    bullet_count = 1;
    boss_xoffset = lengthdir_x(100,bossBallDirection);
    boss_yoffset = lengthdir_y(100,bossBallDirection);
    scr_Offset_Soul_Shoot();  
}

bossPassiveAttack[1] = 0;
bossPassiveAttack[2] = 0;

///Active Attack Prep

if bossActiveAttackDelay[1] <= 0 and bossActiveAttackCooldown[1] <= 0 and bossActiveAttackDuration[1] <= 0 {
    if (speed < (0.5 * bossmovespeed)) {
        var bossdirection = scr_Soul_Point();
        speed = 0.33 * bossmovespeed;
        direction = bossdirection;
    }
    
    bossActiveAttack[1] = choose(1,2,3);
    if champ = 8 {
        bossActiveAttack[1] = choose(1,5);
    }
    if currentphase = 2 {
        bossActiveAttack[1] = choose(4);
        if champ = 8 {
            bossActiveAttack[1] = choose(6);
        }
    }
    
    if bossActiveAttack[1] = 1 {
        bossActiveAttackDelay[1] = 15;
        bossActiveAttackDuration[1] = 30;
        bossActiveAttackCooldown[1] = 120 + random(30);
    }
    if bossActiveAttack[1] = 2 {
        bossPatternCount = 10;
        bossPatternCooldown = 25;
        bossPatternCooldownMax = 25;
        if champ = 1 {
            bossPatternCount = 14;
            bossPatternCooldown = 15;
			bossPatternCooldownMax = 15;
        }
        bossActiveAttackDuration[1] = 15 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 120 + random(30);
    }
    if bossActiveAttack[1] = 3 {
        speed = 0.01 * bossmovespeed;
        bossActiveAttackDelay[1] = 15;
        bossActiveAttackDuration[1] = 30;
        bossActiveAttackCooldown[1] = 120 + random(30);
    }
    if bossActiveAttack[1] = 5 {
        speed = 0.01 * bossmovespeed;
        bossActiveAttackDelay[1] = 15;
        bossActiveAttackDuration[1] = 30;
        bossActiveAttackCooldown[1] = 135 + random(30);
    }
    if bossActiveAttack[1] = 4 {
        scr_Boss_Teleport();
    
        bossAngle = scr_Soul_Point();
        rspeed = 1.66;
        speed = bossmovespeed / 100;
        
        bossActiveAttackDelay[1] = 1;
        bossPatternCount = 270 + irandom(60);
        bossPatternCooldown = 1;
        bossPatternCooldownMax = 1;
        bossActiveAttackDuration[1] = 15 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 1;
    }
    if bossActiveAttack[1] = 6 {
    
        bossAngle = scr_Soul_Point();
        rspeed = 1.66;
        speed = bossmovespeed / 100;
        
        bossActiveAttackDelay[1] = 1;
        bossPatternCount = 3000;
        bossPatternCooldown = 1;
        bossPatternCooldownMax = 1;
        bossActiveAttackDuration[1] = 15 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 1;
    }
    bossPatternCountMax = bossPatternCount;
}


/// Active Attack Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Chaotic_Explode_Shot;
    bullet_sprite = spr_Chaotic_Explode_Shot;
    bullet_speed = bossbulletspeed;
    bullet_power = bosspower * 2;
    bullet_direction = (-5 + random(10)) / bossaccuracy;
    bullet_lifespan = 400;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;
    
if bossActiveAttackDelay[1] <= 0 {
        
    if bossActiveAttack[1] = 1 {
		scr_Boss_Stretch("Vertical", 0.4);
		bullet_speed = bossbulletspeed * (1.2 + random(0.05));
        if champ = 1 {
            bullet_type = obj_Wrath_Explode_Shot;
            bullet_sprite = spr_Wrath_Explode_Shot;
        }
        if champ = 8 {
            bullet_type = obj_Demon_Spiral_Shot;
            bullet_sprite = spr_Demon_Spiral_Shot;
        }
		bullet_count = 2;
		bullet_spread = 180;
        scr_Soul_Shoot();
        
        bossActiveAttack[1] = -1;
    }
    if bossActiveAttack[1] = 3 {
		scr_Boss_Stretch("Vertical", 0.4);
		bullet_size = 1.25;
		if champ = 0 {
	        bullet_count = 8;
	        bullet_speed = bossbulletspeed * (1.33 + random(0.33));
	        bullet_direction = random(45);
	        bullet_spread = 360 / bullet_count;
	        bullet_type = obj_Chaotic_Flame_Pillar;
	        bullet_sprite = spr_Chaotic_Flame_Pillar;
	        scr_Just_Shoot();
		} 
		if champ = 1 {
			bullet_count = 5;
	        bullet_speed = bossbulletspeed * (1.33 + random(0.33));
	        bullet_spread = 20;
	        bullet_type = obj_Chaotic_Flame_Pillar;
	        bullet_sprite = spr_Chaotic_Flame_Pillar;
	        scr_Soul_Shoot();
		}
		bullet_type = obj_Basic_Bullet;
		bullet_count = 20;
		bullet_spread = 360 / bullet_count;
		bullet_sprite = spr_Manic_Shot;
		bullet_speed -= bossbulletspeed * 0.33;
		
		scr_Just_Shoot();
        
        bossActiveAttack[1] = -3;
    }
    if bossActiveAttack[1] = 5 {
		scr_Boss_Stretch("Vertical", 0.4);
        bullet_count = 4;
        bullet_speed = bossbulletspeed * (1.33 + random(0.03));
        bullet_direction = random(360);
        bullet_spread = 360 / bullet_count;
        bullet_type = obj_Fire_Exploder;
        bullet_sprite = spr_Intense_Big_Fire_Shot;
        scr_Just_Shoot();
        
        bossActiveAttack[1] = -5;
    }
}

/// Active Attack Pattern Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Homing_Bullet;
    bullet_sprite = spr_Chaotic_Big_Shot;
    bullet_speed = bossbulletspeed;
    bullet_power = bosspower * 1;
    bullet_direction = (-15 + random(30)) / bossaccuracy;
    bullet_lifespan = 300;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;

if bossActiveAttackDelay[1] <= 0 and bossPatternCooldown <= 0 and bossPatternCount > 0 {
        
    if bossActiveAttack[1] = 2 {
		scr_Boss_Stretch("Vertical", 0.1);
		
        bullet_speed = bossbulletspeed * (1.25 + random(0.3));
		bullet_size = 0.6;
		bullet_sprite = spr_Maelstrom_Shot;
		bullet_type = obj_Chaotic_Maw_Bullet_Spawn;
        if champ = 1 {
			bullet_sprite = spr_War_Shot;
			bullet_type = obj_Angry_Maw_Bullet_Spawn;
        }
        scr_Soul_Shoot();
    }
    if bossActiveAttack[1] = 4 {
    
        if bossPatternCount mod 200 = 0 {
			scr_Boss_Stretch("Vertical", 0.3);
            minion_count = 2;
            minion_type = obj_Unrest_Spirit;
            if champ = 1 {
                minion_type = obj_Wrath_Spirit;
            }
            minion_health = bossmaxhealth / 15;
            scr_Minion_Spawn();
        }
        
        speed = min(speed + 0.1,bossmovespeed * 1.45);

        var pointDir = scr_Soul_Point();
        bossAngle += sin(degtorad(pointDir - bossAngle)) * rspeed;
        direction = bossAngle;
    }
    
    if bossActiveAttack[1] = 6 {
    
        if bossPatternCount mod 300 = 0 {
			scr_Boss_Stretch("Vertical", 0.3);
            minion_count = 2;
            minion_type = obj_Demon_Unrest;
            minion_health = bossmaxhealth / 15;
            scr_Minion_Spawn();
        }
        
        if bossPatternCount mod 4 = 0 {
			
			if bossPatternCount mod 16 = 0 {
				scr_Boss_Stretch("Vertical", 0.05);
			}
			
            scr_Default_Attack_Settings();
            bullet_type = obj_Fire_Trail;
            bullet_sprite = spr_Fire_Trail;
            bullet_speed = bossbulletspeed * (0.33 + random(0.3));
            bullet_power = bosspower * 0.1;
            bullet_direction = (-180 + random(360)) / bossaccuracy;
            bullet_size = 1;
            bullet_count = 1;
            bullet_spread = 0;
            boss_radius = 0;
            bullet_lifespan = 150 + random(30);
            
            scr_Just_Shoot();
        
        }
    
        speed = min(speed + 0.1,bossmovespeed * 1.66);

        var pointDir = scr_Soul_Point();
        bossAngle += sin(degtorad(pointDir - bossAngle)) * rspeed;
        direction = bossAngle;
        
        
        scr_Room_Loop_Everywhere();
    }
    
    bossPatternCount -= 1;
    bossPatternCooldown += bossPatternCooldownMax;
}

/// Active Attack Post
   
if bossActiveAttackDuration[1] <= 0 { 
    speed = 0.33 * bossmovespeed;
    friction = 0;
    bossActiveAttack[1] = 0;
    bossActiveAttack[2] = 0;
    bossActiveAttack[3] = 0;
    bossActiveAttack[0] = 0;
}

#region /// Boss Sprite


scr_Boss_Size_Lerp_Dir(0.15);

if bossActiveAttack[1] != 0 {
    sprite_index = spr_Chaotic_Unrest_Attack;
	if image_index >= 4 and bossActiveAttackDuration[1] > 10 {
		image_index = 4;	
	}
} else {
	sprite_index = spr_Chaotic_Unrest;
}

#endregion

if bossSummon = 0
if currentphase = finalphase {
    minion_count = 2;
    minion_type = obj_Unrest_Spirit;
    if champ = 1 {
        minion_type = obj_Wrath_Spirit;
    }
    if champ = 8 {
        minion_type = obj_Demon_Unrest;
    }
    minion_health = bossmaxhealth / 15;
    scr_Minion_Spawn();
    bossSummon = 1;
}

scr_Boss_Soul_Hitbox(sprite_index);
