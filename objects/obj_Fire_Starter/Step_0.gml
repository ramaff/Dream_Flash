/// @description  Boss Step Event

depth = -3;

scr_Boss_Step();

/*
if currentphase = 2 {
    if champ = 0 {
        sprite_index = spr_Fire_Starter_Two;
    }
    if champ = 1 {
        sprite_index = spr_Magic_Starter_Two;
    }
}

/* */
with (other) {
///Passive Attack Prep

if bossPassiveAttackDelay[1] <= 0 and bossPassiveAttackCooldown[1] <= 0 {
    if champ = 0 || champ = 1 || champ = 2 {
        bossPassiveAttack[1] = 1;
        bossPassiveAttackCooldown[1] = 22 + random(9);
        bossPassiveAttackDelay[1] = 0;
    }
}


/* */
}
///Passive Attack Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Fire_Trail;
    bullet_sprite = spr_Fire_Trail;
    bullet_speed = bossbulletspeed * (0.6 + random(0.5));
    bullet_power = bosspower * 0.5;
    bullet_direction = (-180 + random(360)) / bossaccuracy;
    bullet_size = 0.7 + random(0.4);
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;
    bullet_lifespan = 600;

    if champ = 1 {
        bullet_sprite = spr_Magic_Trail;
    }
    
if bossPassiveAttack[1] = 1 {
    scr_Just_Shoot();  
}

bossPassiveAttack[1] = 0;
bossPassiveAttack[2] = 0;

/* */
///Active Attack Prep

if bossActiveAttackDelay[1] <= 0 and bossActiveAttackCooldown[1] <= 0 and bossActiveAttackDuration[1] <= 0 {
    if champ = 0 || champ = 1 || champ = 2 || champ = 3 {
        if currentphase = 1 {
            bossActiveAttack[1] = choose(1,2,3,4);
            if champ = 2 {  
                 bossActiveAttack[1] = choose(1,2,4,5);
            }
            bossActiveAttackDelay[1] = 15;
        }
        speed = bossmovespeed * (0.05 + random(0.1));
        direction = random(360);
        friction = 0;
        if currentphase = 2 {
            bossActiveAttack[1] = choose(1,4,5);
            bossActiveAttackDelay[1] = 10;
            speed = bossmovespeed * (0.1 + random(0.15));
        }
        
        if bossActiveAttack[1] = 1  {
			image_index = 0;
            bossActiveAttackCooldown[1] = (120 + random(30));
			
	        bossPatternCount = 3;
			bossPatternCountMax = 3;
			if champ = 3 {
				bossPatternCount = 5;
				bossPatternCountMax = 5;
			}
			bossActiveAttackDelay[1] = 0;
	        bossPatternCooldown = 20;
			bossPatternCooldownMax = 20;
	        bulletdirection = random(360);
	        bossPatternDirection = bulletdirection;
	        bossActiveAttackDuration[1] = 10 + bossPatternCooldownMax * bossPatternCount;
        }
        if bossActiveAttack[1] = 2  {
			image_index = 0;
            bossActiveAttackDuration[1] = 35;
            bossActiveAttackCooldown[1] = (90 + random(30));
        }
        if bossActiveAttack[1] = 3  {
			image_index = 0;
            bossActiveAttackDuration[1] = 35;
            bossActiveAttackCooldown[1] = (120 + random(30));
        }
        if bossActiveAttack[1] = 4  {
            bossActiveAttackDuration[1] = 45;
            bossActiveAttackCooldown[1] = (60 + random(30));
        }
        if bossActiveAttack[1] = 5 {
            bossActiveAttackDuration[1] = 30;
            bossActiveAttackCooldown[1] = (90 + random(45));
        }
        if currentphase = 2 {
            bossActiveAttackCooldown[1] -= 30;
        }
    }
}

/* */
/// Active Attack Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Speed_Up_Direction_Bullet;
    bullet_sprite = spr_Fire_Shot;
    bullet_speed = bossbulletspeed * 0.5;
    bullet_power = bosspower;
    bullet_direction = (-15 + random(30)) / bossaccuracy;
    bullet_lifespan = 300;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;
    
    if champ = 1 {
        bullet_sprite = spr_Magic_Shot;
    }
    if champ = 3 {
        bullet_sprite = spr_Lightning_Bullet;
    }

if bossActiveAttackDelay[1] <= 0 {
        
	/*
    if bossActiveAttack[1] = 1 {
		scr_Boss_Stretch("Horizontal", 0.3);
		
        bullet_count = 12;
        bullet_spread = 30;
        bullet_lifespan = 400;
        bullet_speed = bossbulletspeed * 0.8;
        if champ = 1 {
            bullet_count = 16 + irandom(4);
            bullet_spread = 360 / bullet_count;
        }
        scr_Just_Shoot();
		
		bossActiveAttack[1] = -1
    }
	*/
    if bossActiveAttack[1] = 2 {
		scr_Boss_Stretch("Horizontal", 0.3);
		
        bullet_count = 5;
        if champ = 1 {
            bullet_count += 2;
            bullet_speed -= bossbulletspeed / 10;
        }
        bullet_spread = 20;
        bullet_lifespan = 400;
        bullet_speed = bossbulletspeed;
		
		boss_xoffset = -40;
		boss_yoffset = 10;
        scr_Offset_Soul_Shoot();
		
		boss_xoffset = 40;
		boss_yoffset = 10;
        scr_Offset_Soul_Shoot();
		
		bossActiveAttack[1] = -2;
    }
    if bossActiveAttack[1] = 3 {
		scr_Boss_Stretch("Horizontal", 0.3);
		
        bullet_type = obj_Homing_Block_Bullet;
        bullet_sprite = spr_Extinguishing_Shot;
        bullet_count = 1;
        bullet_lifespan = 400;
        bullet_speed = bossbulletspeed;
        soul_shot_block = 1;
        if champ = 1 {
            bullet_type = obj_Extinguishing_Magic;
            bullet_sprite = spr_Extinguishing_Magic;
            bullet_count = 1;
            bullet_lifespan = 400;
            bullet_speed = bossbulletspeed / 2.5;
        }
        if champ = 3 {
            bullet_type = obj_Big_Lightning_Ball;
            bullet_sprite = spr_Big_Lightning_Ball;
            bullet_count = 1;
            bullet_lifespan = 400;
            bullet_speed = bossbulletspeed / 1.5;
        }
        bullet_power = bosspower * 2;
        scr_Soul_Shoot();
		
		bossActiveAttack[1] = -3;
    }
    if bossActiveAttack[1] = 4 {
		scr_Boss_Stretch("Horizontal", 0.3);
		
        var bossdirection = scr_Soul_Point()
        speed = 4 * bossmovespeed;
        friction = 0.075 * bossmovespeed;
        direction = round(bossdirection / 90) * 90;
		
		bossActiveAttack[1] = -4;
    }
    if bossActiveAttack[1] = 5 {
		scr_Boss_Stretch("Horizontal", 0.45);
		
        bullet_type = obj_Fire_Spawning_Bullet;
        bullet_sprite = spr_Fire_Shot;
        
        bullet_count = 15;
        bullet_spread = 60;
        bullet_lifespan = 120;
        bullet_speed = bossbulletspeed;
		bullet_image_speed = 0.33;
        
        if champ = 1 {
            bullet_sprite = spr_Magic_Shot;
            bullet_count += 3;
        }
        
        
        if champ = 3 {
            bullet_type = obj_Direction_Bullet;
            bullet_sprite = spr_Lightning_Bullet;
            bullet_count += 3;
        }
        
        bullet_speedfac_min = 0.8;
        bullet_speedfac_add = 1;
        bullet_timefac_min = 1;
        bullet_timefac_add = 0;
       
        if champ = 2 {
            bullet_type = obj_Exploding_Fire;
            bullet_sprite = spr_Big_Explosive_Shot;
            bullet_image_speed = 0.33;
            bullet_timefac_min = 1;
            bullet_timefac_add = 0;
        }
        
        scr_Soul_Shoot_Vomit();
		
		bossActiveAttack[1] = -5;
    }
    
}

#region /// Active Attack Pattern Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Speed_Up_Direction_Bullet;
    bullet_sprite = spr_Fire_Shot;
    bullet_speed = bossbulletspeed * 0.5;
    bullet_power = bosspower;
    bullet_direction = (-15 + random(30)) / bossaccuracy;
    bullet_lifespan = 300;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;
    
    if champ = 1 {
        bullet_sprite = spr_Magic_Shot;
    }
    if champ = 3 {
        bullet_sprite = spr_Lightning_Bullet;
    }

if bossActiveAttackDelay[1] <= 0 and bossPatternCooldown <= 0 and bossPatternCount > 0 {
        
    if bossActiveAttack[1] = 1 {
		scr_Boss_Stretch("Horizontal", 0.3);
		
        bullet_count = 12;
		
		if bossPatternCount != bossPatternCountMax {
			bullet_count = 6;
		}
		bullet_direction = random(360);
		
        bullet_spread = 360 / bullet_count;
        bullet_lifespan = 400;
        bullet_speed = bossbulletspeed * 0.8;
        if champ = 1 {
            bullet_count = 16 + irandom(4);
            bullet_spread = 360 / bullet_count;
        }
        
		scr_Just_Shoot();
		
        bossPatternCount -= 1;
        bossPatternCooldown += bossPatternCooldownMax;
    }
    
}

#endregion

/* */
/// Active Attack Post
   
if bossActiveAttackDuration[1] <= 0 { 
    bossActiveAttack[1] = 0;
}

/* */
/*  */

#region /// Boss Sprite

scr_Boss_Size_Lerp(0.15);

if currentphase = 1 {
	if bossActiveAttack[1] = 1 || bossActiveAttack[1] = -1 || bossActiveAttack[1] = 3 || bossActiveAttack[1] = -3 /* and (bossActiveAttackDelay[1] > 0)*/ {
		sprite_index = spr_Fire_Starter_Core_Shoot;
		if image_index > 4 {
			image_index = 4;	
		}
		//image_speed = 1;
		//}
	} else if bossActiveAttack[1] = 2 || bossActiveAttack[1] = -2 {
		sprite_index = spr_Fire_Starter_Forward_Shoot;
		if image_index > 4 {
			image_index = 4;	
		}
		//image_speed = 1;
	} else {
		sprite_index = spr_Fire_Starter;
		//image_index = 0;	
	}
} else {
	sprite_index = spr_Fire_Starter_Too;
	image_speed = 1;
}

   
#endregion

scr_Boss_Soul_Hitbox(sprite_index);