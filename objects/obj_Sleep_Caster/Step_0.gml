/// @description  Boss Step Event

scr_Boss_Step();

if bossActiveAttack[1] = 1 {
	scr_Room_Loop_Everywhere();
}

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
    
    bossActiveAttack[1] = choose(1,4,4,3);
    bossActiveAttackDelay[1] = 15;
    
    if currentphase = 2 {
		bossActiveAttack[1] = choose(1,2,2,3); 
    }
	
	bossActiveAttack[1] = 1;
	
	
    bossActiveAttackDelay[1] = 15;
	
    if bossActiveAttack[1] = 1 {
		scr_Boss_Teleport();
		
		image_index = 0;
        bossActiveAttackCooldown[1] = (120 + random(30));
        bossPatternCount = 2;
        bossPatternCooldown = 10;
		bossPatternCooldownMax = 60;
		
		if tier > 0 {
			bossPatternCount = 5;	
		}
		if tier > 1 {
			bossPatternCount = 9;	
		}
		if tier > 2 {
			bossPatternCount = 18;	
		}
		
        bulletdirection = random(90);
        bossPatternDirection = bulletdirection;
        bossActiveAttackDuration[1] = 160 + 15 * bossPatternCount;
    }
    if bossActiveAttack[1] = 2 {
		image_index = 0;
        bossActiveAttackCooldown[1] = (150 + random(30));
        bossPatternCount = 2;
        bossPatternCooldown = 10;
		bossPatternCooldownMax = 90;
		
		if tier > 0 {
			bossPatternCount = 3;	
		}
		
		if tier >= 3 {
			bossPatternCount = 4;	
		}
		
        bulletdirection = scr_Soul_Point();
        bossPatternDirection = bulletdirection;
        bossActiveAttackDuration[1] = 10 + bossPatternCooldownMax * bossPatternCount;

    }
    if bossActiveAttack[1] = 3 {
		
        image_index = 0;
        bossActiveAttackCooldown[1] = (120 + random(30));
        bossPatternCount = 3;
        bossPatternCooldown = 10;
		bossPatternCooldownMax = 30;
		
		if tier > 0 {
			bossPatternCount = 4;	
		}
		
		if tier >= 3 {
			bossPatternCount = 6;	
		}
		
		if tier >= 2 {
			bossPatternCount -= 1;	
		}
		
		
        bulletdirection = scr_Soul_Point();
        bossPatternDirection = bulletdirection;
        bossActiveAttackDuration[1] = 10 + bossPatternCooldownMax * bossPatternCount;
    }
	if bossActiveAttack[1] = 4 {
        image_index = 0;
        bossActiveAttackCooldown[1] = (150 + random(30));
        bossPatternCount = 2;
        bossPatternCooldown = 10;
		bossPatternCooldownMax = 60;
		
		if tier > 0 {
			bossPatternCount = 4;	
		}
		if tier > 2 {
			bossPatternCount = 6;	
			bossPatternCooldownMax = 45;
		}
		
        bulletdirection = scr_Soul_Point();
        bossPatternDirection = bulletdirection;
        bossActiveAttackDuration[1] = 10 + bossPatternCooldownMax * bossPatternCount;
    }
	
	bossPatternCountMax = bossPatternCount;
    
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
    

}

#region /// Active Attack Pattern Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Basic_Bullet;
    bullet_sprite = spr_Glowy_Enemy_Shot;
    bullet_speed = bossbulletspeed;
    bullet_power = bosspower * 1;
    bullet_direction = (-5 + random(10)) / bossaccuracy;
    bullet_lifespan = 300;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;

if bossActiveAttackDelay[1] <= 0 and bossPatternCooldown <= 0 and bossPatternCount > 0 {
        
	if bossActiveAttack[1] = 1 {
		
		if bossPatternCount = bossPatternCountMax {
			scr_Boss_Stretch("Horizontal", 0.4);
			
			bullet_type = obj_Sleep_Cloud;
			bullet_sprite = spr_Sleep_Cloud;
			bullet_size = 2;
			bullet_count = 2;
			bullet_speed = bossbulletspeed * 4;
			bullet_spread = 20;
			
			if tier > 0 {
				bullet_count = 3;
			}
			if tier > 1 {
				bullet_count = 4;	
			}
			if tier > 2 {
				bullet_count = 5;	
			}
			
			bullet_part = 2;
			bullet_part_sprite = spr_Sleep_Cloud_Part;
			bullet_part_area = 100;
			bullet_part_life = 30;
			bullet_part_color1 = c_white;
			bullet_part_color2 = c_white;
			
			scr_Soul_Shoot();
		} else {
			scr_Boss_Stretch("Horizontal", 0.1);
			
			
			if bossPatternCount = bossPatternCountMax - 1 {
				bullet_type = obj_Homing_Bullet;
				bullet_count = 8;
				
				bullet_part = 2;
				bullet_part_sprite = spr_Bullet_Part;
				bullet_part_area = 10;
				bullet_part_life = 20;
				bullet_part_color1 = make_color_rgb(0,183,255);
				bullet_part_color2 = c_white;
				bossPatternCooldownMax = 90;
			} else {
				bullet_type = obj_Basic_Bullet;	
				bullet_count = 8;
				bossPatternCooldownMax = 15;
			}
			bullet_direction = bossPatternDirection;
			bullet_sprite = spr_Glowy_Blue_Shot;
			bullet_spread = 360 / bullet_count
			bullet_speed = bossbulletspeed * (1.25 + (0.25 * tier));
			bullet_lifespan = 240;
			bullet_size = 1.25;
			
			scr_Soul_Shoot();
			
			bossPatternDirection += 10;
		}
		
    }
	
    if bossActiveAttack[1] = 2 {
		
		scr_Boss_Stretch("Horizontal", 0.2);
		
		bullet_type = obj_Homing_Bullet_Circle;
		bullet_sprite = spr_Glowy_Blue_Shot;
		bullet_size = 1;
		bullet_count = 1;
		bullet_speed = bossbulletspeed * (0.5 + random(0.6));
		if tier > 0 {
			bullet_speed = bossbulletspeed * (0.7 + random(0.6));
		}
		if tier > 1 {
			bullet_type = obj_Homing_Double_Circle;	
		}
		bullet_lifespan = 360;
		bullet_direction = -180 + random(360);
			
		scr_Soul_Shoot();
		
    }
    if bossActiveAttack[1] = 3 {
		scr_Boss_Stretch("Horizontal", 0.3);
		
		minion_count = 1;
        minion_type = obj_Satellite;
        minion_health = bossmaxhealth / 20;
        minion_defense = 3;
		if tier >= 2 {
			minion_type = obj_Satellite_Stage_Two;
			minion_defense = 5;
		}
        scr_Minion_Spawn();
    }
	if bossActiveAttack[1] = 4 {
		scr_Boss_Stretch("Horizontal", 0.2);
		
		bullet_type = obj_Homing_Bullet_Crescent;
		bullet_sprite = spr_Glowy_Blue_Shot;
		bullet_size = 1;
		bullet_count = 1;
		bullet_speed = bossbulletspeed * (1.1 + random(0.1));
		bullet_lifespan = 360;
		bullet_direction = -120 + random(240);
		
		if tier > 1 {
			bullet_type = obj_Large_Bullet_Crescent;
		}
				
		scr_Soul_Shoot();
		
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

if bossActiveAttack[1] = 2 {
	sprite_index = spr_Sleep_Caster_Cast
	if image_index > 3 and bossActiveAttackDuration[1] > 15 {
		image_index = 3;	
	}
	image_speed = 1;
} else if bossActiveAttack[1] = 1 || bossActiveAttack[1] = 3 {
	sprite_index = spr_Sleep_Caster_Doze
	if image_index > 3 and bossActiveAttackDuration[1] > 15 {
		image_index = 3;
	}
	image_speed = 1;
} else if bossActiveAttack[1] = 4 {
	sprite_index = spr_Sleep_Caster_Cast
	if image_index > 3 and bossActiveAttackDuration[1] > 15 {
		image_index = 3;	
	}
	image_speed = 1;
}else {
	sprite_index = spr_Sleep_Caster
}

   
#endregion

scr_Boss_Soul_Hitbox(sprite_index);