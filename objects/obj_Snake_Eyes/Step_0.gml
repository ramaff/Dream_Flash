/// @description  Boss Step Event

scr_Boss_Step();

if state = states.phasing {
	exit;	
}

///Passive Attack Prep

if bossPassiveAttackDelay[1] <= 0 and bossPassiveAttackCooldown[1] <= 0 {
    if champ = 0 and currentphase = 2 {
        bossPassiveAttack[1] = 1;
        bossPassiveAttackCooldown[1] = 15;
        bossPassiveAttackDelay[1] = 0;
    }
}

///Passive Attack Code   

if bossPassiveAttack[1] = 1 {
}

bossPassiveAttack[1] = 0;
bossPassiveAttack[2] = 0;

///Active Attack Prep

var bossdirection = scr_Soul_Point();
speed = 0.15 * bossmovespeed;
direction = bossdirection;

if bossActiveAttackDelay[1] <= 0 and bossActiveAttackCooldown[1] <= 0 and bossActiveAttackDuration[1] <= 0 {
    
    bossActiveAttack[1] = choose(1,2);
    bossActiveAttackDelay[1] = 15;
    
    if currentphase = 2 {
		bossActiveAttack[1] = choose(1,4);
		if tier >= 1 {
		bossActiveAttack[1] = choose(3,4); 
		}
    }
	
	bossActiveAttackDelay[1] = 15;
	
    
    if bossActiveAttack[1] = 1 {
		image_index = 0;
        bossActiveAttackCooldown[1] = (180 + random(30));
        bossActiveAttackDuration[1] = 60;
    }
    if bossActiveAttack[1] = 2 {
		image_index = 0;
        bossActiveAttackCooldown[1] = (120 + random(30));
        bossPatternCount = 4;
		//bossActiveAttackDelay[1] = 0;
        bossPatternCooldown = 30;
		bossPatternCooldownMax = 30;
		
		if tier = 2 {
			bossPatternCount = 10;
			//bossActiveAttackDelay[1] = 0;
			bossPatternCooldown = 30;
			bossPatternCooldownMax = 24;
		}
		
		if tier = 3 {
			bossPatternCount = 55;
			//bossActiveAttackDelay[1] = 0;
			bossPatternCooldown = 8;
			bossPatternCooldownMax = 6;
		}
		
        bulletdirection = random(360);
        bossPatternDirection = bulletdirection;
		bossPatternDirection2 = bulletdirection + 180;
        bossActiveAttackDuration[1] = 10 + bossPatternCooldownMax * bossPatternCount;
    }
    if bossActiveAttack[1] = 3 {
		image_index = 0;
        bossActiveAttackCooldown[1] = (150 + random(30));
        bossPatternCount = 3;
		//bossActiveAttackDelay[1] = 0;
        bossPatternCooldown = 30;
		bossPatternCooldownMax = 30;
		
		if tier = 2 {
			bossPatternCount = 8;
		}
		
		if tier = 3 {
			bossPatternCount = 4;
		}
		
        bulletdirection = random(360);
		bulletdirection = round(bulletdirection / 90) * 90;
        bossPatternDirection = bulletdirection;
        bossActiveAttackDuration[1] = 60 + bossPatternCooldownMax * bossPatternCount;
    }
	if bossActiveAttack[1] = 4 {
		image_index = 0;
        bossActiveAttackCooldown[1] = (150 + random(30));
        bossPatternCount = 8;
		//bossActiveAttackDelay[1] = 0;
        bossPatternCooldown = 15;
		bossPatternCooldownMax = 10;
		
		if tier = 1 {
			bossPatternCount = 16;	
		}
		if tier = 2 {
			bossPatternCount = 32;	
		}
		
		if tier = 3 {
			bossPatternCount = 48;
			bossPatternCooldown = 10;
			bossPatternCooldownMax = 8;
		}
		
        bulletdirection = -45 + random(90);
        bossPatternDirection = bulletdirection;
		bossPatternDirection2 = bulletdirection + 180;
        bossActiveAttackDuration[1] = 10 + bossPatternCooldownMax * bossPatternCount;
    }
    
}


/// Active Attack Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Hatred_Seeking_Bullet;
    bullet_sprite = spr_Boss_Ninja_Star;
    bullet_speed = bossbulletspeed;
    bullet_power = bosspower * 1;
    bullet_direction = (-5 + random(10)) / bossaccuracy;
    bullet_lifespan = 400;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;

if bossActiveAttackDelay[1] <= 0 {        
    
    if bossActiveAttack[1] = 1 {
		scr_Boss_Stretch("Horizontal", 0.4);
		
        bullet_speed = bossbulletspeed * 1.5;
		bullet_power = bosspower * 2;
		
		bullet_count = 1;
		bullet_type = obj_Big_Snake_Bullet;
		bullet_sprite = spr_Snake_Mullet;
		bullet_image_speed = 0;
		
		if tier >= 1 {
			bullet_type = obj_Big_Snake_Mullet;	
			bullet_sprite = spr_Big_Snake_Mullet;
		}
		
		if tier = 2 {
			bullet_count = 2;
			bullet_spread = 180;
		}
		
		if tier >= 3 {
			bullet_type = obj_Huge_Snake_Mullet;	
		}
		
		if tier < 2 and tier != 3 {
			scr_Soul_Shoot();
		} else {
			scr_Just_Shoot();
		}
		
        bossActiveAttack[1] = -1;
    }
}

#region /// Active Attack Pattern Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Basic_Bullet;
    bullet_sprite = spr_Glowy_Green_Shot;
    bullet_speed = bossbulletspeed;
    bullet_power = bosspower * 1;
    bullet_direction = (-5 + random(10)) / bossaccuracy;
    bullet_lifespan = 300;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;

if bossActiveAttackDelay[1] <= 0 and bossPatternCooldown <= 0 and bossPatternCount > 0 {
        
    if bossActiveAttack[1] = 2 {
		if tier < 3 {
			scr_Boss_Stretch("Horizontal", 0.3);
		} else {
			scr_Boss_Stretch("Horizontal", 0.05);
		}
		
        bullet_speed = bossbulletspeed;
		
		bullet_count = 4;
		bullet_spread = 210 / bullet_count;
		
		boss_xoffset = 100;
		boss_yoffset = -50;
		if tier < 3 {
			bullet_direction = -45 + random(90);
		} else {
			bullet_direction = bossPatternDirection;
			bossPatternDirection += 16;
			bullet_count = 1;
			bullet_spread = 0;
		}
		
		var spdf = 1.25;
		var repn = 3;
		
		if tier > 0 {
			repn = 4;	
		}
		
		repeat(repn) {
			bullet_speed = bossbulletspeed * spdf;
			scr_Offset_Normal_Shoot();
			spdf += 0.4;
		}
				
		boss_xoffset = -100;
		boss_yoffset = -50;
		if tier < 3 {
			bullet_direction = 135 + random(90);
		} else {
			bullet_direction = bossPatternDirection2;	
			bossPatternDirection2 -= 16;
		}
		
		var spdf = 1.25;
		
		repeat(repn) {
			bullet_speed = bossbulletspeed * spdf;
			scr_Offset_Normal_Shoot();
			spdf += 0.4;
		}
    }
    if bossActiveAttack[1] = 3 {
		scr_Boss_Stretch("Horizontal", 0.3);
		
        bullet_speed = bossbulletspeed * 1.5;
		bullet_power = bosspower * 1.5;
		
		bullet_count = 1;
		bullet_direction = bossPatternDirection;
		bullet_spread = 0;
		bullet_lifespan = 240;
		bullet_type = obj_Big_Snake_Bullet;
		bullet_sprite = spr_Snake_Mullet;
		bullet_image_speed = 0;
		
		if tier >= 3 {
			bullet_type = obj_Big_Snake_Mullet;
			bullet_sprite = spr_Big_Snake_Mullet;
			bullet_lifespan = 300;
		}
		
		scr_Just_Shoot();
		
		bossPatternDirection += 90;
    }
	if bossActiveAttack[1] = 4 {
		if tier < 3 {
			scr_Boss_Stretch("Horizontal", 0.3);
		} else {
			scr_Boss_Stretch("Horizontal", 0.05);
		}
		
		bullet_speed = bossbulletspeed * 1.75;
		bullet_type = obj_Wavier_Bullet;
		bullet_lifespan = 400;
		
		if tier > 0 and tier < 3 {
			if bossPatternCount mod 8 = 1 {
				bossPatternCooldown += 40;
			}
			if bossPatternCount mod 8 = 0 {
				bossPatternDirection = -45 + random(90);
				bossPatternDirection2 = bossPatternDirection + 180;
			}
		} else if tier >= 3 {
			if bossPatternCount mod 4 = 1 {
				bossPatternCooldown += 10;
			}
			if bossPatternCount mod 4 = 0 {
				bossPatternDirection += 27;
				bossPatternDirection2 += 27;
			}
			bullet_speed = bossbulletspeed * 2.25;
		}
		
		
		bullet_count = 4;
		bullet_spread = 210 / bullet_count;
		
		boss_xoffset = 100;
		boss_yoffset = -50;
		bullet_direction = bossPatternDirection;
		
		scr_Offset_Normal_Shoot();
				
		boss_xoffset = -100;
		boss_yoffset = -50;
		bullet_direction = bossPatternDirection2;
		scr_Offset_Normal_Shoot();
    }
	
	bossPatternCount -= 1;
    bossPatternCooldown += bossPatternCooldownMax;
}

#endregion

/// Active Attack Post
   
if bossActiveAttackDuration[1] <= 0 { 
    bossActiveAttack[1] = 0;
    bossActiveAttack[2] = 0;
}

#region /// Boss Sprite

scr_Boss_Size_Lerp(0.15);

if bossActiveAttack[1] != 0 {
	sprite_index = spr_Snake_Eyes_Shoot;
	if image_index > 5 and bossActiveAttackDuration[1] > 10 {
		image_index = 5;	
	}
	image_speed = 1;
} else {
	sprite_index = spr_Snake_Eyes;
}

   
#endregion

scr_Boss_Soul_Hitbox(sprite_index);