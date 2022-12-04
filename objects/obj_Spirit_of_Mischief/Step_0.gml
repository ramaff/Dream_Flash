/// @description  Boss Step Event

scr_Boss_Step();

aAngle += 3;

#region ///Passive Attack Prep

if bossPassiveAttackDelay[1] <= 0 and bossPassiveAttackCooldown[1] <= 0 {
    if champ = 0 and currentphase = 2 {
        bossPassiveAttack[1] = 1;
        bossPassiveAttackCooldown[1] = 15;
        bossPassiveAttackDelay[1] = 0;
    }
}

#endregion

#region ///Passive Attack Code   

if bossPassiveAttack[1] = 1 {
    
}

bossPassiveAttack[1] = 0;
bossPassiveAttack[2] = 0;

#endregion

#region ///Active Attack Prep

if bossActiveAttackDelay[1] <= 0 and bossActiveAttackCooldown[1] <= 0 and bossActiveAttackDuration[1] <= 0 {
    
    speed = 0;

    bossActiveAttack[1] = choose(1,2,3);
    bossActiveAttackDelay[1] = 15;
    if currentphase = 2 {
        bossActiveAttack[1] = choose(6,7);
    }
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
        }
    }
    
    if bossActiveAttack[1] = 1 {
		image_index = 0;
        bossActiveAttackCooldown[1] = 85 + (30 * irandom(1));
        bossActiveAttackDuration[1] = 20;
    }
    if bossActiveAttack[1] = 2 {
		image_index = 0;
        bossActiveAttackCooldown[1] = 145 + (30 * irandom(1));
        bossActiveAttackDuration[1] = 20;
    }
    if bossActiveAttack[1] = 3 {
        scr_Boss_Teleport();
		image_index = 0;
        bossActiveAttackCooldown[1] = 55 + (30 * irandom(1));
        bossActiveAttackDuration[1] = 20;
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

#endregion

#region /// Active Attack Code
    
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
    
    if bossActiveAttack[1] = 1 {
		scr_Boss_Stretch("Vertical",0.25);
		
        bullet_count = 3;
        bullet_spread = 10 + irandom(20);
        bullet_speed = bossbulletspeed * (1.5 + random(0.4));
		if champ = 8 {
			bullet_count = 5;	
		}
        scr_Soul_Shoot();
		
		bossActiveAttack[1] = -1;
    }
    if bossActiveAttack[1] = 2 {
		scr_Boss_Stretch("Vertical",0.25);
		
        bullet_count = 6;
        bullet_direction = random(360)
        bullet_spread = 60;
		if champ = 2 {
			bullet_lifespan = 300;	
		}
        bullet_speed = bossbulletspeed * (1 + random(0.15));
        scr_Just_Shoot();
		
		bossActiveAttack[1] = -2;
    }
	
	if bossActiveAttack[1] = 3 {
		scr_Boss_Stretch("Vertical",0.25);
		
		bullet_speed = bossbulletspeed * 2.5;
	    bullet_direction = random(360);
	    bullet_type = obj_Basic_Bullet;
	    bullet_sprite = spr_Glowy_Pink_Shot;
	    bullet_count = 8;
	    bullet_power = bosspower;
	    bullet_spread = 360 / bullet_count;
	    scr_Just_Shoot();
		
		if champ = 1 || champ = 2 {
			bullet_speed = bossbulletspeed * 2;
			bullet_direction += 22.5;
			scr_Just_Shoot();
		}
		
		bossActiveAttack[1] = -3;
	}
    
    if bossActiveAttack[1] = 6 {
		scr_Boss_Stretch("Vertical",0.25);
		
        bullet_count = 2;
        bullet_spread = 10 + irandom(20);
        bullet_speed = bossbulletspeed * (1.7 + random(0.2));
		if champ = 8 {
			bullet_count = 4;	
		}
        scr_Soul_Shoot();
		
		bossActiveAttack[1] = -6;
    }
    
    if bossActiveAttack[1] != 4 and bossActiveAttack[1] != 5 and bossActiveAttack[1] != 8 and bossActiveAttack[1] != 7 and bossActiveAttack[1] != 9 {
        //bossActiveAttack[1] = 0;
    }
}

#endregion

#region /// Active Attack Pattern Code
    
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

if bossActiveAttackDelay[1] <= 0 and bossPatternCooldown <= 0 and bossPatternCount > 0 {
        
    if bossActiveAttack[1] = 4 {
		scr_Boss_Stretch("Vertical",0.05);
	
        bullet_speed = bossbulletspeed * 2.5;
        bullet_direction = bossPatternDirection;
        bullet_type = obj_Basic_Bullet;
        bullet_sprite = spr_Glowy_Pink_Shot;
        bullet_power = bosspower;
        if champ = 8 { 
            bullet_sprite = spr_Yellow_Shot;
        }
        bullet_count = 4;
        bullet_spread = 90;
        scr_Just_Shoot();
    
        bossPatternDirection += 15;
        bossPatternCount -= 1;
        bossPatternCooldown += bossPatternCooldownMax;
    }
    if bossActiveAttack[1] = 5 {
		scr_Boss_Stretch("Vertical",0.05);
		
        bullet_speed = bossbulletspeed * 2;
        bullet_direction = bossPatternDirection;
        bullet_type = obj_Basic_Bullet;
        bullet_sprite = spr_Glowy_Pink_Shot;
        bullet_count = 3;
        bullet_power = bosspower;
        bullet_spread = 120;
        scr_Just_Shoot();
    
        bossPatternDirection += 6;
        bossPatternCount -= 1;
        bossPatternCooldown += bossPatternCooldownMax;
    }
	
	if bossActiveAttack[1] = 7 {
        scr_Boss_Dash_Movement(33,5);
		scr_Boss_Stretch("Horizontal",0.02);
		
		speed = bossDashSpeed;
        direction = bossDashDirection;
		
		if bossPatternCount = 1 {
			scr_Boss_Stretch("Vertical",0.35);
			
			bullet_speed = bossbulletspeed * 2.5;
	        bullet_direction = random(360);
	        bullet_type = obj_Basic_Bullet;
	        bullet_sprite = spr_Glowy_Pink_Shot;
	        bullet_count = 8;
	        bullet_power = bosspower;
	        bullet_spread = 360 / bullet_count;
	        scr_Just_Shoot();
			
			if champ = 2 {
				bullet_speed = bossbulletspeed * 3;
				scr_Just_Shoot();
				bullet_speed = bossbulletspeed * 2;
				bullet_direction += 22.5;
				scr_Just_Shoot();
			}
		}
		
		bossPatternCount -= 1;
        bossPatternCooldown += bossPatternCooldownMax;
    }
    
    if bossActiveAttack[1] = 8 {
		scr_Boss_Stretch("Vertical",0.05);
		
        bullet_speed = bossbulletspeed * 4 + random(1);
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
			bullet_speed = bossbulletspeed * 4;
			
			boss_xoffset = -15;
	        boss_yoffset = -15;
	        scr_Offset_Soul_Shoot();
        
	        boss_xoffset = 15;
	        scr_Offset_Soul_Shoot();
			
		}
    
        bossPatternCount -= 1;
        bossPatternCooldown += bossPatternCooldownMax;
    }
	
	if bossActiveAttack[1] = 9 {
		scr_Boss_Stretch("Vertical",0.05);
		
        bullet_speed = bossbulletspeed * 2.5;
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
        bossPatternCount -= 1;
        bossPatternCooldown += bossPatternCooldownMax;
    }
}

#endregion

#region /// Active Attack Post
   
if bossActiveAttackDuration[1] <= 0 { 
    bossActiveAttack[1] = 0;
    bossActiveAttack[2] = 0;
}

#endregion

#region /// Boss Sprite

scr_Boss_Size_Lerp(0.2);

if bossActiveAttack[1] = 1 || bossActiveAttack[1] = 2 || bossActiveAttack[1] = 3 || bossActiveAttack[1] = 6 || bossActiveAttack[1] = -1 || bossActiveAttack[1] = -2 || bossActiveAttack[1] = -3 || bossActiveAttack[1] = -6 { // Sonic Attack
	if bossActiveAttackDuration[1] > 0 {
		sprite_index = spr_Spirit_of_Mischief_Shoot;
	} else {
		sprite_index = spr_Spirit_of_Mischief;
	}
} else if bossActiveAttack[1] = 4 || bossActiveAttack[1] = 5 || bossActiveAttack[1] = 8 || bossActiveAttack[1] = 9 { // Default
	if bossPatternCount > 0 {
		sprite_index = spr_Spirit_of_Mischief_Shoot;
		if image_index > 4 {
			image_index = 4;	
		}
	} else {
		sprite_index = spr_Spirit_of_Mischief;
	}
} else {
	sprite_index = spr_Spirit_of_Mischief;
}

#endregion

scr_Boss_Soul_Hitbox(sprite_index);