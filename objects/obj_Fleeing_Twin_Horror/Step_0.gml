/// @description  Boss Step Event

scr_Boss_Step();

scr_Boss_Teleport_When_Outside();

aAngle += 3;

#region ///Passive Attack Prep

if bossPassiveAttackDelay[1] <= 0 and bossPassiveAttackCooldown[1] <= 0 {
}

#endregion

#region ///Passive Attack Code   

if bossPassiveAttackDelay[1] <= 0 and bossPassiveAttackCooldown[1] <= 0 {
    var bossdirection = scr_Soul_Point() + 180;
    speed = 0.5 * bossmovespeed;
	if currentphase = 2 {
		speed = 1 * bossmovespeed;
	}
	if bossActiveAttack[1] != 0 {
		speed = 0.05 * bossmovespeed;	
	}
    direction = bossdirection;
    
}

bossPassiveAttack[1] = 0;
bossPassiveAttack[2] = 0;

#endregion

#region ///Active Attack Prep

if bossActiveAttackDelay[1] <= 0 and bossActiveAttackCooldown[1] <= 0 and bossActiveAttackDuration[1] <= 0 {
    
    //speed = 0;
	var minThreshold = scr_Minion_Count();

    bossActiveAttack[1] = choose(1);
    bossActiveAttackDelay[1] = 15;
    if currentphase = 2 {
        bossActiveAttack[1] = choose(1,2,3);
		if minThreshold = 1 {
			bossActiveAttack[1] = choose(1,3);
		}
    }
	/*
    if champ = 1 {
        bossActiveAttack[1] = choose(2,3,4);
        if currentphase = 2 {
        bossActiveAttack[1] = choose(5);
        }
    }
	if champ = 2 {
		bossActiveAttack[1] = choose(2,3);
	    if currentphase = 2 {
	        bossActiveAttack[1] = choose(7);
	    }
	}
    if champ = 8 {
        bossActiveAttack[1] = choose(1,9,8);
        if currentphase = 2 {
        bossActiveAttack[1] = choose(6,8);
        */
    
    
    if bossActiveAttack[1] = 1 {
		image_index = 0;
        bossActiveAttackCooldown[1] = 300 + (30 * irandom(1));
		if currentphase = 2 {
			bossActiveAttackCooldown[1] -= 210;	
		}
        bossActiveAttackDuration[1] = 20;
    }
    if bossActiveAttack[1] = 2 {
		image_index = 0;
        bossActiveAttackCooldown[1] = 180 + (30 * irandom(1));
        bossActiveAttackDuration[1] = 20;
    }
    if bossActiveAttack[1] = 3 {
		scr_Boss_Teleport();
		image_index = 0;
        bossActiveAttackCooldown[1] = (180 + (30 * irandom(1)));
        bossPatternCount = 65;
        bossPatternCooldown = 6;
		bossPatternCooldownMax = 6;
        bulletdirection = random(360);
        bossPatternDirection = bulletdirection;
        bossActiveAttackDuration[1] = 15 + bossPatternCooldown * bossPatternCount;
    }
    if bossActiveAttack[1] = 4 {
		image_index = 0;
        bossActiveAttackCooldown[1] = (55 + (30 * irandom(1)));
        bossPatternCount = 20;
        bossPatternCooldown = 4;
		bossPatternCooldownMax = 4;
        bulletdirection = random(360);
        bossPatternDirection = bulletdirection;
        bossActiveAttackDuration[1] = 15 + bossPatternCooldown * bossPatternCount;
    }
    if bossActiveAttack[1] = 5 {
		image_index = 0;
        scr_Boss_Teleport();
        bossActiveAttackDelay[1] = 15;
        bossActiveAttackCooldown[1] = (85);
        bossPatternCount = 25;
        bossPatternCooldown = 3;
		bossPatternCooldownMax = 3;
        bulletdirection = random(360);
        bossPatternDirection = bulletdirection;
        bossActiveAttackDuration[1] = 15 + bossPatternCooldown * bossPatternCount;
    }
    if bossActiveAttack[1] = 6 {
        scr_Boss_Teleport();
		image_index = 0;
        bossActiveAttackDelay[1] = 15;
        bossActiveAttackCooldown[1] = 115 + (1 * irandom(30));
        bossActiveAttackDuration[1] = 20;
    }
    if bossActiveAttack[1] = 7 {
		image_index = 0;
		scr_Boss_Teleport();
        scr_Boss_Dash_Setup();
        bossPatternCount = 90;
        bossPatternCountMax = bossPatternCount;
        bossPatternCooldown = 10;
        bossPatternCooldownMax = 1;
        bossActiveAttackDuration[1] = 15 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 30 + (irandom(1) * 30);
		
		var bossdirection = scr_Soul_Point();
        bossDashDirection = bossdirection;
		bossMaxDashSpeed = 5.5 * bossmovespeed;
		bossDashSpeed = 0;
    }
    if bossActiveAttack[1] = 8 {
		image_index = 0;
        scr_Boss_Teleport();
        bossActiveAttackDelay[1] = 15;
        bossActiveAttackCooldown[1] = (55 + (30 * irandom(1)));
        bossPatternCount = 20 + (5 * irandom(1));
        bossPatternCooldown = 4;
		bossPatternCooldownMax = 4;
        bulletdirection = random(360);
        bossPatternDirection = bulletdirection;
        bossActiveAttackDuration[1] = 15 + bossPatternCooldown * bossPatternCount;
    }
	if bossActiveAttack[1] = 9 {
		image_index = 0;
		
        bossActiveAttackCooldown[1] = (55 + (30 * irandom(1)));
        bossPatternCount = 20;
        bossPatternCooldown = 4;
		bossPatternCooldownMax = 4
        bulletdirection = random(360);
        bossPatternDirection = bulletdirection;
        bossActiveAttackDuration[1] = 15 + bossPatternCooldown * bossPatternCount;
    }
    
}

if bossActiveAttack[1] = 3 and bossActiveAttackDuration[1] > 0 {
	scr_Soul_Push_Pull(-3);
	
}

#endregion

#region /// Active Attack Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Basic_Bullet;
    bullet_sprite = spr_Glowy_Blue_Shot;
    bullet_speed = bossbulletspeed;
    bullet_power = bosspower;
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
    
    if bossActiveAttack[1] = 1 {
		scr_Boss_Stretch("Vertical",0.5);
		
		bullet_direction = random(360);
		
        bullet_count = 24;
        bullet_spread = 360 / bullet_count;
        bullet_speed = bossbulletspeed * (1 + random(0.15));
        scr_Just_Shoot();
		
		bullet_direction -= 3;
		
		repeat(3) {
			bullet_count = 6;
			bullet_spread = 360 / bullet_count;
			bullet_direction -= 6;
	        bullet_speed += bossbulletspeed * (0.175);
			scr_Just_Shoot();
		
			bullet_direction += 6;
	        bullet_speed += bossbulletspeed * (0.175);
			scr_Just_Shoot();
		
		}
		
		
		bossActiveAttack[1] = -1;
    }
    if bossActiveAttack[1] = 2 {
		scr_Boss_Stretch("Vertical",0.5);
		
        minion_count = 3;
        minion_type = obj_Horror_Ghoul;
        minion_health = bossmaxhealth / 10;
        scr_Minion_Spawn();
		
		bossActiveAttack[1] = -2;
    }
	
    
    if bossActiveAttack[1] != 4 and bossActiveAttack[1] != 5 and bossActiveAttack[1] != 8 and bossActiveAttack[1] != 7 and bossActiveAttack[1] != 9 {
        //bossActiveAttack[1] = 0;
    }
}

#endregion

#region /// Active Attack Pattern Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Basic_Bullet;
    bullet_sprite = spr_Glowy_Blue_Shot;
    bullet_speed = bossbulletspeed;
    bullet_power = bosspower;
    bullet_direction = (-5 + random(10)) / bossaccuracy;
    bullet_lifespan = 400;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;

if bossActiveAttackDelay[1] <= 0 and bossPatternCooldown <= 0 and bossPatternCount > 0 {
        
    if bossActiveAttack[1] = 3 {
		scr_Boss_Stretch("Vertical",0.1);
		
        bullet_speed = bossbulletspeed * 0.9;
        bullet_direction = bossPatternDirection;
        bullet_count = 2;
        bullet_spread = 360 / bullet_count;
        scr_Just_Shoot();
		
		if bossPatternCount mod 5 = 0 {
			bullet_size = 1.25;
			bullet_sprite = spr_Glowy_Dark_Blue_Shot;
			bullet_type = obj_Smart_Home_Bullet;
			bullet_speed = bossbulletspeed * 1.4;
			
			bullet_count = 2;
			bullet_spread = 360 / bullet_count;
			
			scr_Just_Shoot();
		}
    
        bossPatternDirection += 9;
    }
    if bossActiveAttack[1] = 5 {
		scr_Boss_Stretch("Vertical",0.05);
		
        bullet_speed = bossbulletspeed * 1.6;
        bullet_direction = bossPatternDirection;
        bullet_type = obj_Basic_Bullet;
        bullet_sprite = spr_Glowy_Pink_Shot;
        bullet_count = 3;
        bullet_power = bosspower;
        bullet_spread = 120;
        scr_Just_Shoot();
    
        bossPatternDirection += 6;

    }
	
	if bossActiveAttack[1] = 7 {
        scr_Boss_Dash_Movement(33,5);
		scr_Boss_Stretch("Horizontal",0.02);
		
		speed = bossDashSpeed;
        direction = bossDashDirection;
		
		if bossPatternCount = 1 {
			scr_Boss_Stretch("Vertical",0.35);
			
			bullet_speed = bossbulletspeed * 2;
	        bullet_direction = random(360);
	        bullet_type = obj_Basic_Bullet;
	        bullet_sprite = spr_Glowy_Pink_Shot;
	        bullet_count = 8;
	        bullet_power = bosspower;
	        bullet_spread = 360 / bullet_count;
	        scr_Just_Shoot();
			
			if champ = 2 {
				bullet_speed = bossbulletspeed * 2.5;
				scr_Just_Shoot();
				bullet_speed = bossbulletspeed * 1.5;
				bullet_direction += 22.5;
				scr_Just_Shoot();
			}
		}
		
    }
    
    if bossActiveAttack[1] = 8 {
		scr_Boss_Stretch("Vertical",0.05);
		
        bullet_speed = bossbulletspeed * 3 + random(1);
        bullet_type = obj_Direction_Bullet;
        bullet_sprite = spr_Yellow_Laser;
        bullet_direction = (-1 + random(2)) / bossaccuracy;
        bullet_power = bosspower;
        
		if bossPatternCount >= 0 {
	        boss_xoffset = -15;
	        boss_yoffset = -15;
	        scr_Offset_Soul_Shoot();
        
	        boss_xoffset = 15;
	        scr_Offset_Soul_Shoot();
		}
		
		if bossPatternCount <= 1 {
			bullet_count = 6;
			bullet_spread = 15;
			bullet_speed = bossbulletspeed * 3;
			
			boss_xoffset = -15;
	        boss_yoffset = -15;
	        scr_Offset_Soul_Shoot();
        
	        boss_xoffset = 15;
	        scr_Offset_Soul_Shoot();
			
		}
    
    }
	
	if bossActiveAttack[1] = 9 {
		scr_Boss_Stretch("Vertical",0.05);
		
        bullet_speed = bossbulletspeed * 2;
        bullet_direction = bossPatternDirection;
        bullet_type = obj_Basic_Bullet;
        bullet_power = bosspower;
        bullet_sprite = spr_Glowy_Yellow_Shot;
        
		bullet_count = 2;
        bullet_spread = 180;
        scr_Just_Shoot();
		
		bullet_direction = -bossPatternDirection;
		bullet_count = 2;
        bullet_spread = 180;
        scr_Just_Shoot();
    
        bossPatternDirection += 15;
    }
	
	bossPatternCount -= 1;
    bossPatternCooldown += bossPatternCooldownMax;
}

#endregion

#region /// Active Attack Post
   
if bossActiveAttackDuration[1] <= 0 { 
    bossActiveAttack[1] = 0;
    bossActiveAttack[2] = 0;
}

#endregion

#region /// Boss Sprite

scr_Boss_Size_Lerp(0.15);

if bossActiveAttack[1] != 0 { // Default
	if bossActiveAttackDuration[1] > 10 {
		sprite_index = spr_Fleeing_Twin_Horror_Shoot;
		if image_index > 7 {
			image_index = 2;	
		}
	} else {
		sprite_index = spr_Fleeing_Twin_Horror;
	}
} else {
	sprite_index = spr_Fleeing_Twin_Horror;
}

#endregion

scr_Boss_Soul_Hitbox(sprite_index);