/// @description  Boss Step Event

scr_Boss_Step();

scr_Room_Loop_Everywhere();

///Active Attack Prep

if bossActiveAttackDelay[1] <= 0 and bossActiveAttackCooldown[1] <= 0 and bossActiveAttackDuration[1] <= 0 {
    
    bossPhase = 0;
    
    bossActiveAttack[1] = choose(1,2,3);
    if currentphase = 2 {
        bossActiveAttack[1] = choose(1,4,5);
    }
    
    if champ = 8 {
        bossActiveAttack[1] = choose(6,2,3);
        if currentphase = 2 {
            bossActiveAttack[1] = choose(7,4,5);
        }
    }
	bossActiveAttackDelay[1] = 10;
    
    if bossActiveAttack[1] = 1 {
        bossPatternCount = 3;
        bossPatternCooldown = 0;
        bossPatternCooldownMax = 60;
        bossActiveAttackDuration[1] = 30 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 45 + random(30);
    }
    if bossActiveAttack[1] = 2 {
        scr_Boss_Dash_Setup();
        bossPatternCount = 145;
        bossPatternCountMax = bossPatternCount;
        bossPatternCooldown = 1;
        bossPatternCooldownMax = 1;
        bossActiveAttackDuration[1] = 15 + bossattackspeed * bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 30 + random(15);
		
		var bossdirection = scr_Soul_Point();
		bossdirection = clamp(bossdirection, 0, 180);
        bossMaxDashSpeed = 5.5 * bossmovespeed;
		bossDashSpeed = 0;
    }
    if bossActiveAttack[1] = 3 {
        scr_Boss_Dash_Setup();
        bossPatternCount = 130;
        bossPatternCountMax = bossPatternCount;
        bossPatternCooldown = 1;
        bossPatternCooldownMax = 1;
        bossActiveAttackDuration[1] = 15 + bossattackspeed * bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 30 + random(15);
		
		var bossdirection = scr_Soul_Point();
        bossMaxDashSpeed = 3 * bossmovespeed;
		bossDashSpeed = 0;
    }
    if bossActiveAttack[1] = 4 {
        scr_Boss_Dash_Setup();
        bossPatternCount = 245;
		if champ = 8 {
			bossPatternCount = 360;	
		}
        bossPatternCountMax = bossPatternCount;
        bossPatternCooldown = 1;
        bossPatternCooldownMax = 1;
        bossActiveAttackDuration[1] = 15 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 30 + random(15);
		
		var bossdirection = scr_Soul_Point();
		bossdirection = clamp(bossdirection, 0, 180);
        bossMaxDashSpeed = 5.5 * bossmovespeed;
		bossDashSpeed = 0;
    }
    if bossActiveAttack[1] = 5 {
        scr_Boss_Dash_Setup();
        bossPatternCount = 90;
        bossPatternCountMax = bossPatternCount;
        bossPatternCooldown = 1;
        bossPatternCooldownMax = 1;
        bossActiveAttackDuration[1] = 15 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 30 + random(15);
		
		var bossdirection = scr_Soul_Point();
        bossMaxDashSpeed = 2.25 * bossmovespeed;
		bossDashSpeed = 0;
    }
    if bossActiveAttack[1] = 6 {
        bossActiveAttackDelay[1] = 15;
        bossPatternCount = 3 + irandom(1);
        bossPatternCooldown = 50;
        bossPatternCooldownMax = 50;
        bossActiveAttackDuration[1] = 30 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 60 + random(30);
    }
    if bossActiveAttack[1] = 7 {
        bossActiveAttackDelay[1] = 15;
        bossPatternCount = 30 + irandom(3);
        bossPatternCooldown = 3;
        bossPatternCooldownMax = 3;
        bossActiveAttackDuration[1] = 30 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 60 + random(30);
    }
    bossPatternCountMax = bossPatternCount;
}


/// Active Attack Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Basic_Red_Bullet;
    bullet_sprite = spr_Enemy_Shot;
    bullet_speed = bossbulletspeed;
    bullet_power = bosspower * 1;
    bullet_direction = (-5 + random(10)) / bossaccuracy;
    bullet_lifespan = 120 + random(180);
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;
    
    if champ = 1 {
        bullet_type = obj_Bounce_Bullet;
        bullet_sprite = spr_Lob_Shot;
        bullet_lifespan = 136;
        bullet_image_speed = 0.25;
        bullet_speed = bossbulletspeed * 0.8;
    }
    
if bossActiveAttackDelay[1] <= 0 {
/*
    if bossActiveAttack[1] = 1 {
        bullet_count = 20;
        bullet_spread = 50;
        bullet_lifespan = 110;
        
        bullet_speedfac_min = 0.8;
        bullet_speedfac_add = 1.65;
        bullet_timefac_min = 0.85;
        bullet_timefac_add = 1;
        
        scr_Soul_Shoot_Vomit();
    
        bossActiveAttack[1] = 0;
    }
    
    if bossActiveAttack[1] = 6 {
    
        bullet_count = 7;
        bullet_spread = 12;
        bullet_speed = bossbulletspeed * 1.95;
        bullet_sprite = spr_Bleeding_Direction_Bullet;
        scr_Soul_Shoot();
        bullet_count = 8;
        bullet_speed = bossbulletspeed * 1.6;
        scr_Soul_Shoot();
        bullet_count = 9;
        bullet_speed = bossbulletspeed * 1.25;
        scr_Soul_Shoot();
        
        bossActiveAttack[1] = 0;
    
    }
 */   
}

/* */
/// Active Attack Pattern Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Basic_Red_Bullet;
    bullet_sprite = spr_Glowy_Enemy_Shot;
    bullet_speed = bossbulletspeed;
    bullet_power = bosspower * 1;
    bullet_direction = (-5 + random(10)) / bossaccuracy;
    bullet_lifespan = 180 + random(60);
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;
    
    bullet_speed = bossbulletspeed * (1.5 + random(0.5));
    
    if champ = 1 {
        bullet_type = obj_Bounce_Bullet;
        bullet_sprite = spr_Lob_Shot;
        bullet_lifespan = 108;
        bullet_image_speed = 0.33;
    }

if bossActiveAttackDelay[1] <= 0 and bossPatternCooldown <= 0 and bossPatternCount > 0 {
        
    if bossActiveAttack[1] = 1 {
		scr_Boss_Stretch("Vertical", 0.4);
	
        bullet_count = 20;
        bullet_spread = 50;
        bullet_lifespan = 110;
        
        bullet_speedfac_min = 0.75;
        bullet_speedfac_add = 0.7;
        bullet_timefac_min = 1.05;
        bullet_timefac_add = 0.8;
		
		if champ = 1 {
			bullet_type = obj_No_Jelly_Ball_Bullet;
			bullet_image_speed = 0.5;
			bullet_lifespan = 80;
			bullet_timefac_min = 1;
			bullet_timefac_add = 0;
		} else {
			bullet_type = obj_Phase_Bullet;
		}
        
        scr_Soul_Shoot_Vomit();
		
		bullet_count = 18;
		bullet_spread = 210 / bullet_count;
		bullet_lifespan = 300;
		bullet_speed = bossbulletspeed;
		
		scr_Soul_Shoot();
		
    }
    
    if bossActiveAttack[1] = 6 {
		scr_Boss_Stretch("Vertical", 0.4);
    
        bullet_count = 7;
        bullet_spread = 12;
        bullet_speed = bossbulletspeed * 1.95;
        bullet_sprite = spr_Bleeding_Bullet;
        scr_Soul_Shoot();
        bullet_count = 8;
        bullet_speed = bossbulletspeed * 1.6;
        scr_Soul_Shoot();
        bullet_count = 9;
        bullet_speed = bossbulletspeed * 1.25;
        scr_Soul_Shoot();
        
        bullet_count = 6;
        bullet_speed = bossbulletspeed * 0.6;
        bullet_spread = 80;
        bullet_lifespan = 330;
        bullet_sprite = spr_Ache_Bullet;
        bullet_type = obj_Slight_Home_No_Dir_Bullet;
        
        bullet_speedfac_min = 0.7;
        bullet_speedfac_add = 0.85;
        bullet_timefac_min = 0.85;
        bullet_timefac_add = 1;
        
        scr_Soul_Shoot_Vomit();
    
    }

    if bossActiveAttack[1] = 2 {
        scr_Boss_Dash_Movement(30,25);
		
		speed = bossDashSpeed;
        direction = bossDashDirection;
		
		if frac(bossPatternCount / 5) = 0 {
			scr_Boss_Stretch("Vertical", 0.1);
	        bullet_direction = direction + (-15 + random(30)) / bossaccuracy;
	        bullet_count = 2;
	        bullet_spread = 180;
	        scr_Just_Shoot();
		}
    }
    if bossActiveAttack[1] = 3 {
		
		scr_Boss_Dash_Movement(30,25);
		
		speed = bossDashSpeed;
        direction = bossDashDirection;
		
		if frac(bossPatternCount / 30) = 0 {
			scr_Boss_Stretch("Vertical", 0.3);
			//bullet_type = obj_Spin_Quick_Phase_Bullet;
			bullet_type = obj_Spin_Phase_Bullet;
			
	        bullet_count = 16;
			if champ = 8 {
				bullet_count += 4;	
			}
			bullet_crowd_direction = 180 * round(bossPatternCount / 30);
			bullet_crowd_speed = bossbulletspeed;
	        bullet_spread = 360 / bullet_count;
	        scr_Just_Shoot();
		}
    }
    if bossActiveAttack[1] = 4 {
        scr_Boss_Dash_Movement(30,25);
		
		speed = bossDashSpeed;
        direction = bossDashDirection;
		
		if frac(bossPatternCount / 4) = 0 {
			scr_Boss_Stretch("Vertical", 0.1);
			
	        bullet_direction = direction + (-20 + random(40)) / bossaccuracy;
	        bullet_count = 2;
	        bullet_spread = 200;
	        scr_Just_Shoot();
		}
    }
    if bossActiveAttack[1] = 5 {
        scr_Boss_Dash_Movement(30,15);
		
		speed = bossDashSpeed;
        direction = bossDashDirection;
		
		if frac(bossPatternCount / 5) = 0 {
			if bossPatternCount mod 15 = 0 {
				scr_Boss_Stretch("Vertical", 0.1);
			}
			
	        bullet_count = 5;
	        bullet_spread = 72;
	        bullet_direction = bossPatternDirection;
	        bullet_speed = bossbulletspeed * 1.8;
	        bossPatternDirection -= 8;
	        scr_Just_Shoot();
	        if champ = 8 {
	            bullet_direction = random(360);
	            bullet_sprite = spr_Ache_Bullet;
	            bullet_type = obj_Slight_Home_No_Dir_Bullet;
	            bullet_count = 1;
	            scr_Just_Shoot();
	        }
		}
    }
    
    if bossActiveAttack[1] = 7 {
		
		if bossPatternCount mod 4 = 0 {
			scr_Boss_Stretch("Vertical", 0.1);
		}
		
        bullet_count = 1;
        bullet_spread = 33;
        bullet_lifespan = 180;
        
        bullet_speedfac_min = 0.65;
        bullet_speedfac_add = 0.5;
        bullet_timefac_min = 0.85;
        bullet_timefac_add = 1;
        bullet_size = 1;
        
        bullet_sprite = spr_Big_Bleeding_Bullet;
        bullet_type = obj_Wall_Spit_Bullet;
        
        scr_Soul_Shoot_Vomit();
    }
    
    bossPatternCount -= 1;
    bossPatternCooldown += bossPatternCooldownMax;
}

/* */
/// Active Attack Post
   
if bossActiveAttackDuration[1] <= 0 { 
    bossActiveAttack[1] = 0;
    bossActiveAttack[2] = 0;
    bossActiveAttack[3] = 0;
    bossActiveAttack[0] = 0;
}

#region /// Boss Sprite


scr_Boss_Size_Lerp(0.15);

if bossActiveAttack[1] = 1 || bossActiveAttack[1] = 3 || bossActiveAttack[1] = 6 || bossActiveAttack[1] = 7 {
    sprite_index = spr_Blind_Hunger_Gust;
	if image_index >= 9 and bossActiveAttackDuration[1] > 10 {
		image_index = 2;	
	}
} else if bossActiveAttack[1] = 2 || bossActiveAttack[1] = 4 {
    sprite_index = spr_Blind_Hunger_Sweep;
	if image_index >= 3 and bossActiveAttackDuration[1] > 10 {
		image_index = 3;	
	}
} else if bossActiveAttack[1] = 5 {
    sprite_index = spr_Blind_Hunger_Spin;
	if (bossPatternCount <= (bossPatternCountMax / 2)) {
		image_angle -= (bossPatternCountMax - bossPatternCount) / 20;
	} else {
		image_angle -= bossPatternCount / 20;
	}
	if image_index >= 3 and bossActiveAttackDuration[1] > 10 {
		image_index = 3;	
	}
} else {
	sprite_index = spr_Blind_Hunger;
}

if bossActiveAttack[1] != 5 {
	image_angle = 0;
}
#endregion

/* */
/// Boss Sprite Code
/*
if champ = 0 {
    spr = spr_Blind_Hunger;
}
if champ = 1 {
    spr = spr_Gum_Hunger;
}
if champ = 2 {
    spr = spr_Peering_Hunger;
}
if champ = 8 {
    spr = spr_Demonic_Hunger;
}

if speed < 1 {
    flying = 0;
    spin = 0;
    image_angle = 0;
    sprite_index = spr;
}

if bossActiveAttack[1] = 4 and (bossActiveAttackDelay[1] > 0 || bossActiveAttackDuration[1] > 0) {
    image_angle = direction + 90;
    sprite_index = spr_Hunger_Dash;
}
if bossActiveAttack[1] = 5 and (bossActiveAttackDelay[1] > 0 || bossActiveAttackDuration[1] > 0) {
    sprite_index = spr_Hunger_Dash;
    image_angle += 10;
}
*/

/* */
/*  */

scr_Boss_Soul_Hitbox(sprite_index);