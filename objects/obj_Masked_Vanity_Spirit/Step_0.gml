/// @description  Boss Step Event

scr_Boss_Step();

scr_Boss_Two_Face_Direction();

scr_Spirit_Outside_View();

if currentphase = 2 {
    var bossdirection = scr_Soul_Point();
    speed = 0.55 * bossmovespeed;
    direction = bossdirection;
} else {
	scr_Spirit_Move_Away();
}

///Passive Attack Prep

if bossPassiveAttackDelay[1] <= 0 and bossPassiveAttackCooldown[1] <= 0 {
    if champ = 0 and currentphase = 2 {
        bossPassiveAttack[1] = 1;
        bossPassiveAttackCooldown[1] = 1;
        bossPassiveAttackDelay[1] = 0;
    }
}


///Passive Attack Code   

if currentphase = 2 {
	if bossPassiveAttack[1] = 1 {
	    var bossdirection = scr_Soul_Point();
	    speed = 0.55 * bossmovespeed;
	    direction = bossdirection;
	}
	if bossActiveAttack[1] = 4 || bossActiveAttack[1] = -4 {
		var bossdirection = scr_Soul_Point();
	    speed = 0.05 * bossmovespeed;
	    direction = bossdirection;
	}
}

bossPassiveAttack[1] = 0;
bossPassiveAttack[2] = 0;

///Active Attack Prep



if bossActiveAttackDelay[1] <= 0 and bossActiveAttackCooldown[1] <= 0 and bossActiveAttackDuration[1] <= 0 {
    
    if currentphase = 2 {
        bossActiveAttack[1] = choose(1,2,3);
        bossActiveAttackDelay[1] = 15;
        if tier >= 2 {
            bossActiveAttack[1] = choose(6,4,5);
        }
    }
	bossActiveAttackDelay[1] = 30;
    
    if bossActiveAttack[1] = 1 {
		scr_Boss_Stretch("Horizontal", 0.2);
        bossActiveAttackCooldown[1] = (240 + random(30));
        bossPatternCount = 5;
        bossPatternCooldown = 20;
        bossPatternCooldownMax = 30;
        bulletdirection = random(360);
        bossPatternDirection = bulletdirection;
        bossActiveAttackDuration[1] = 15 + bossPatternCooldownMax * bossPatternCount;
    }
    if bossActiveAttack[1] = 2 {
		scr_Boss_Stretch("Horizontal", 0.2);
        bossActiveAttackCooldown[1] = (300 + random(30));
        bossActiveAttackDuration[1] = 15 + bossPatternCooldown * bossPatternCount;
    }
    
    if bossActiveAttack[1] = 3 {
		scr_Boss_Stretch("Horizontal", 0.2);
        bossActiveAttackCooldown[1] = (210 + random(30));
        bossPatternCount = 1;
        if tier >= 1 {
            bossPatternCount += 1;
        }
        bossPatternCooldown = 14;
        bossPatternCooldownMax = 14;
        bulletdirection = random(360);
        bossPatternDirection = bulletdirection;
        bossActiveAttackDuration[1] = 15 + bossPatternCooldown * bossPatternCount;
    }
    if bossActiveAttack[1] = 4 {
		scr_Boss_Stretch("Horizontal", 0.2);
        bossActiveAttackCooldown[1] = (450 + random(30));
        bossPatternCount = 25;
        bossPatternCooldown = 15;
        bossPatternCooldownMax = 15;
        bulletdirection = random(360);
        bossPatternDirection = bulletdirection;
        bossActiveAttackDuration[1] = 15 + bossPatternCooldown * bossPatternCount;
    }
    if bossActiveAttack[1] = 5 {
		scr_Boss_Stretch("Horizontal", 0.2);
        bossActiveAttackCooldown[1] = (180 + random(30));
        bossPatternCount = 540;
        bossPatternCountMax = bossPatternCount;
        bossPatternCooldown = 1;
        bossPatternCooldownMax = 1;
        bulletdirection = random(360);
        bossPatternDirection = bulletdirection;
        bossActiveAttackDuration[1] = 15 + bossPatternCooldown * bossPatternCount;
    }
	if bossActiveAttack[1] = 6 {
		scr_Boss_Stretch("Horizontal", 0.2);
        bossActiveAttackCooldown[1] = (600 + random(30));
        bossActiveAttackDuration[1] = 15 + bossPatternCooldown * bossPatternCount;
    }
	
	bossPatternCountMax = bossPatternCount;
    
}


/// Active Attack Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Vanity_Soul_Shoot_Bullet;
    bullet_sprite = spr_Vanity_Ball;
    bullet_speed = bossbulletspeed;
    bullet_power = bosspower * 1.5;
    bullet_direction = (-5 + random(10)) / bossaccuracy;
    bullet_lifespan = 322;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;
	bullet_image_speed = 0.5;
	bullet_lob_time = 80;

if bossActiveAttackDelay[1] <= 0 {        
    
    if bossActiveAttack[1] = 2 {
		scr_Boss_Stretch("Vertical", 0.4);
		
        bullet_count = 1;
        if tier >= 2 {
            bullet_count += 1;
        }
        bullet_direction = -10 + random(20);
		bullet_sprite = spr_Vanity_Bomb;
        bullet_type = obj_Vanity_Shoot_Everywhere_Bullet;
        bullet_spread = 360 / bullet_count;
        bullet_speed = bossbulletspeed * (0.85 + random(0.1));
        scr_Soul_Shoot();
        
        bossActiveAttack[1] = -2;   
    }
	if bossActiveAttack[1] = 6 {
		scr_Boss_Stretch("Vertical", 0.4);
		
        bullet_count = 1;
        bullet_direction = -10 + random(20);
		bullet_sprite = spr_Vanity_Bomb;
		bullet_size = 1.3;
        bullet_type = obj_Vanity_Bomb;
        bullet_spread = 360 / bullet_count;
        bullet_speed = bossbulletspeed * (2.25 + random(0.05));
        scr_Soul_Shoot();
		bullet_lifespan = 400;
        
        bossActiveAttack[1] = -6;   
    }
    
}

/// Active Attack Pattern Code
    
    scr_Beam_Shoot_Properties();
    scr_Default_Attack_Settings();
    bullet_type = obj_Rebound_Bullet;
    bullet_sprite = spr_Vanity_Bullet;
    bullet_speed = bossbulletspeed;
    bullet_power = bosspower * 1.5;
    bullet_direction = (-5 + random(10)) / bossaccuracy;
    bullet_lifespan = 322;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;
	bullet_lob_time = 80;

if bossActiveAttackDelay[1] <= 0 and bossPatternCooldown <= 0 and bossPatternCount > 0 {
	
	if bossActiveAttack[1] = 1 {
		bullet_type = obj_Vanity_Soul_Shoot_Bullet;
		bullet_sprite = spr_Vanity_Ball;
		bullet_power = bosspower * 1.1;
		bullet_image_speed = 0.5;
		
		
		scr_Boss_Stretch("Vertical", 0.3);
		
        bullet_count = 1;
        if tier >= 2 {
            bullet_count += 1;
        }
        bullet_spread = 90;
        bullet_speed = bossbulletspeed * (1.35 + random(0.1));
		
        scr_Soul_Shoot();
    }
        
    if bossActiveAttack[1] = 3 {
		scr_Boss_Stretch("Vertical", 0.4);
		
        bullet_speed = bossbulletspeed * 2.5;
        bullet_direction = bossPatternDirection;
        bullet_count = 20;
		bullet_lifespan = 400;
        if tier = 0 {
            bullet_count = 30;
        }
        bullet_spread = 360 / bullet_count;
        scr_Just_Shoot();
        bossPatternDirection += 180 / bullet_count;
    }
    if bossActiveAttack[1] = 4 {
		scr_Boss_Stretch("Vertical", 0.3);
		
        bullet_speed = bossbulletspeed * (2.25 + (0.1 * (bossPatternCountMax - bossPatternCount)));
        bullet_direction = bossPatternDirection;
		bullet_lifespan = 450;
        if frac((bossPatternCount - 1) / 12) = 0 {
            bullet_count = 28;
        } else {
            bullet_count = 7;
        }
        bullet_spread = 360 / bullet_count;
        if bossPatternCount = 13 {
			bullet_direction += bullet_spread / 2;	
		}
		scr_Just_Shoot();
		//bossPatternDirection += 3;
    }
    
    if bossActiveAttack[1] = 5 {
        /*bullet_direction = bossPatternDirection;
        bullet_count = 3;
        bullet_spread = 360 / bullet_count;
        bullet_speed = 75;
        bullet_lifespan = 1;

        scr_Just_Shoot_No_Paranoia();    
		*/
    
        scr_Default_Attack_Settings();
        bullet_power = bosspower * 0.5;
        bullet_direction = bossPatternDirection;
        bullet_size = 1;
        bullet_count = 3;
        bullet_spread = 360 / bullet_count;
        boss_radius = 0;
        
        //boss_xoffset = 80;
        //boss_yoffset = 80;
        
        bullet_sprite = spr_Arcane_Beam;
        beam_sprite = spr_Arcane_Beam;
        bossbeamattackactive = 1;
        bossoffsetangle = 1;
		beamSize = 0.75;
		
		//beamStart = 540 - bossPatternCount;
    
        scr_Easy_Boss_Beam_Shoot(bossPatternCountMax, 36);
		
		if bossPatternCount mod 5 = 0 {
			scr_Boss_Stretch("Vertical", 0.05);	
		}
		
		if bossPatternCount mod 120 = 15 {
			scr_Boss_Stretch("Horizontal", 0.6);
		}
		
		if bossPatternCount mod 120 = 0 {
			scr_Boss_Stretch("Vertical", 0.4);
			bullet_sprite = spr_Vanity_Bullet;
			bullet_type = obj_Accel_Bullet;
			bullet_size = 1;
			bullet_power = bosspower * 1.5;
			bullet_speed = bossbulletspeed * 1.5;
			bullet_lifespan = 240;
			bullet_count = 24;
			bullet_spread = 360 / bullet_count;
			scr_Just_Shoot();
		}
        
		if bossPatternCount < 490 {
			bossPatternDirection += 0.53;
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


if tier < 2 {
	scr_Masked_Spirit_Sprite(spr_Masked_Vanity_Spirit,spr_Masked_Vanity_Spirit_Attack);
} else {
	scr_Masked_Spirit_Sprite(spr_High_Vanity_Spirit,spr_High_Vanity_Spirit_Attack);
}

#endregion

scr_Boss_Soul_Hitbox(sprite_index);