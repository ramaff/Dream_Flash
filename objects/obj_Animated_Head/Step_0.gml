/// @description  Boss Step Event

scr_Boss_Step();

scr_Boss_Two_Face_Direction();

depth -= 2;
//image_xscale = 0.8;
//image_yscale = 0.8;

///Passive Attack Prep

if bossPassiveAttackDelay[1] <= 0 and bossPassiveAttackCooldown[1] <= 0 {
    
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
    var bossdirection = scr_Soul_Point();
    speed = 0.2 * bossmovespeed;
    direction = bossdirection;
    
    bossActiveAttack[1] = choose(1,2,4);
    if currentphase = 2 {
        bossActiveAttack[1] = choose(1,4);
    }
    
    if bossActiveAttack[1] = 1 {
		bossActiveAttackDelay[1] = 10;
		
        scr_Boss_Dash_Setup();
		bossHopCount = 3;
        bossPatternCount = 90;
        bossPatternCountMax = bossPatternCount;
        bossPatternCooldown = 10;
        bossPatternCooldownMax = 1;
		
		var bossdirection = scr_Soul_Point();
        bossDashDirection = bossdirection;
		
		bossDashSpeed = 0;
		bossMaxDashSpeed = bossmovespeed * 3.5;
        bossActiveAttackDuration[1] = 15 + bossPatternCooldownMax * bossPatternCount * 3 * bossattackspeed;
        bossActiveAttackCooldown[1] = 60 + random(30);
    }
    if bossActiveAttack[1] = 2 {
        bossPatternCount = 3;
        bossPatternCooldown = 50;
        bossPatternCooldownMax = 50;
        if champ = 1 {
            bossPatternCount = 4;
        }
        bossActiveAttackDuration[1] = 15 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 90 + random(30);
    }
    if bossActiveAttack[1] = 3 {
        bossActiveAttackDelay[1] = 10;
        bossActiveAttackDuration[1] = 30;
        bossActiveAttackCooldown[1] = 150 + random(60);
    }
	if bossActiveAttack[1] = 4 {
        scr_Boss_Dash_Setup();
        bossPatternCount = 224;
        bossPatternCountMax = bossPatternCount;
        bossPatternCooldown = 1;
        bossPatternCooldownMax = 1;
        bossActiveAttackDuration[1] = 15 + bossattackspeed * bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 60 + random(15);
		
		var bossdirection = scr_Soul_Point()
        bossDashDirection = bossdirection;
		bossMaxDashSpeed = 1 * bossmovespeed;
		bossDashSpeed = 0;
    }
    bossPatternCountMax = bossPatternCount;
}


/// Active Attack Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Toxic_Sorrow_Bullet;
    bullet_sprite = spr_Pestilence_Shot;
    bullet_speed = bossbulletspeed;
    bullet_power = bosspower * 1.5;
    bullet_direction = (-5 + random(10)) / bossaccuracy;
    bullet_lifespan = 400;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;
    
if bossActiveAttackDelay[1] <= 0 {
        
    if bossActiveAttack[1] = 3 {
        minion_count = 5;
        minion_type = obj_Spider;
        minion_health = 1;
        scr_Minion_Spawn();
        bossActiveAttack[1] = 0;
    }
}

/// Active Attack Pattern Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Pestilence_Bullet;
    bullet_sprite = spr_Pestilence_Shot;
    bullet_speed = bossbulletspeed;
    bullet_power = bosspower * 1.5;
    bullet_direction = (-15 + random(30)) / bossaccuracy;
    bullet_lifespan = 300;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;

if bossActiveAttackDelay[1] <= 0 and bossPatternCooldown <= 0 and bossPatternCount > 0 {
        
    if bossActiveAttack[1] = 1 {
        scr_Boss_Dash_Movement(30,25);
		
		speed = bossDashSpeed;
        direction = bossDashDirection; 
		
		if bossHopCount > 1 and bossPatternCount <= 1 {
			bossHopCount--;
			bossPatternCount = bossPatternCountMax;
			
			scr_Boss_Dash_Setup();
			var bossdirection = scr_Soul_Point();
		    bossDashDirection = bossdirection;
			bossMaxDashSpeed = bossmovespeed * 4;
		
			bossDashSpeed = 0;
		}
		
		if bossPatternCount mod 10 = 0 {
			bullet_type = obj_Poison_Pool;
			bullet_sprite = spr_Poison_Pool;
			bullet_speed = bossbulletspeed * 0;
			bullet_power = bosspower * 0.15;
			
			scr_Just_Shoot();
		}
		
		if bossPatternCount <= 1 and bossHopCount <= 1 {
			scr_Boss_Stretch("Vertical", 0.4);
			
            speed = 0;
            bullet_count = 9;
            bullet_spread = 15;
            bullet_speed = bossbulletspeed * (1.55 + random(0.3));
			
			bullet_part = 1;
			bullet_part_sprite = spr_Bullet_Part;
			bullet_part_area = 25;
			bullet_part_life = 40;
			bullet_part_color1 = make_color_rgb(120,255,0);
			bullet_part_color2 = bullet_part_color1;
		
            if champ = 1 {
                bullet_count = 5;
                bullet_spread = 12 + random(2);
                bullet_speed = bossbulletspeed * (1.85 + random(0.05));
                bullet_type = obj_Basic_Bullet;
                bullet_sprite = spr_War_Shot;
                scr_Soul_Shoot();
                bullet_count = 4;
                bullet_speed = bossbulletspeed * (1.25 + random(0.05));
            }
			
            scr_Soul_Shoot();
        }
    }
    if bossActiveAttack[1] = 2 {
		scr_Boss_Stretch("Vertical", 0.4);
		
        bullet_direction = random(360);
        bullet_count = 12 + irandom(3);
        bullet_spread = 360 / bullet_count;
        bullet_speed = bossbulletspeed * (1.25 + random(0.3));
		
		bullet_part = 1;
		bullet_part_sprite = spr_Bullet_Part;
		bullet_part_area = 25;
		bullet_part_life = 40;
		bullet_part_color1 = make_color_rgb(120,255,0);
		bullet_part_color2 = bullet_part_color1;
			
        if champ = 1 {
            bullet_type = obj_Direction_Bullet;
            bullet_sprite = spr_Spike_Shot;
        }
        scr_Just_Shoot();
    }
	if bossActiveAttack[1] = 4 {
        scr_Boss_Dash_Movement(30,10);
		
		speed = bossDashSpeed;
        direction = bossDashDirection;
		
		souldir = scr_Soul_Point();
		var adif = angle_difference(bossDashDirection, souldir);
		if adif < 0 {
			bossDashDirection += 1;
		}
		if adif > 0 {
			bossDashDirection -= 1;
		}
		
		if ((bossPatternCount) mod 50 = 0) {
			scr_Boss_Stretch("Vertical", 0.4);
			
			bullet_power = bosspower * 1;
			
            bullet_count = 7;
            bullet_spread = 15;
            bullet_speed = bossbulletspeed * (1.75 + random(0.15));
			bullet_type = obj_Basic_Bullet;
			bullet_sprite = spr_Glowy_Dark_Green_Shot;
			
            scr_Soul_Shoot();
        }
    }
    
    bossPatternCount -= 1;
    bossPatternCooldown += bossPatternCooldownMax;
}

/// Active Attack Post
   
if bossActiveAttackDuration[1] <= 0 { 
    speed = 0.2 * bossmovespeed;
    friction = 0;
    bossActiveAttack[1] = 0;
    bossActiveAttack[2] = 0;
    bossActiveAttack[3] = 0;
    bossActiveAttack[0] = 0;
}

#region /// Boss Sprite


scr_Boss_Size_Lerp_Dir(0.15);

if bossActiveAttack[1] != 0 and bossActiveAttack[1] != 4  {
    sprite_index = spr_Evil_Head_Shoot;
	if image_index >= 3 and bossActiveAttackDuration[1] > 10 {
		image_index = 3;	
	}
} else if bossActiveAttack[1] = 4 {
	sprite_index = spr_Evil_Head_Wild;
	if image_index > 11 and bossActiveAttackDuration[1] > 10 {
		image_index = 2;	
	}
} else {
	sprite_index = spr_Evil_Head;
}

#endregion

if bossSummon = 0
if currentphase = finalphase {
    minion_count = 8;
    minion_type = obj_Spider;
    minion_health = 1;
   // scr_Minion_Spawn();
    bossSummon = 1;
}

scr_Boss_Soul_Hitbox(spr_Evil_Head_Hitbox);

