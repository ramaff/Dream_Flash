/// @description  Boss Step Event

scr_Boss_Step();

scr_Room_Loop_Horizontal();

scr_Boss_Height_Bob(40, 0.5, 0);

///Passive Attack Prep

///////////////////////////////////////////////////////////////////
//////////////////////////////////////Active Attack Prep
///////////////////////////


var bossdirection = scr_Soul_Point()
    speed = 0.3 * bossmovespeed;
    direction = bossdirection;

if bossActiveAttackDelay[1] <= 0 and bossActiveAttackCooldown[1] <= 0 and bossActiveAttackDuration[1] <= 0 {
	
    bossActiveAttack[1] = choose(1,2,2,2);
	
	if scr_Minion_Count() {
        bossActiveAttack[1] = choose(1);
    }
    if currentphase = 2 {
        bossActiveAttack[1] = choose(3,4);
    }
    if bossActiveAttack[1] = 1 {
		/*
        bossActiveAttackDelay[1] = 10;
        bossPatternCount = 3;
        bossPatternCooldown = 60;
        bossPatternCooldownMax = 60;
        bossActiveAttackDuration[1] = 10 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 100 + (irandom(1) * 20);
		*/
		scr_Boss_Attack_Time_Setup(3, 40, 50, 120, 30, 0);
    }
    if bossActiveAttack[1] = 2 {
		/*
        bossActiveAttackDelay[1] = 10;
        bossPatternCount = 6;
        bossPatternCooldown = 15;
        bossPatternCooldownMax = 15;
        bossActiveAttackDuration[1] = 10 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 90 + (irandom(1) * 20);
		*/
		scr_Boss_Attack_Time_Setup(4, 31, 20, 120, 30, 0);
		spawnFrame = 0;
    }
	if bossActiveAttack[1] = 3 {
        bossActiveAttackDelay[1] = 10;
        bossPatternCount = 3;
        bossPatternCooldown = 20;
        bossPatternCooldownMax = 20;
        bossActiveAttackDuration[1] = 10 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 90 + (irandom(1) * 20);
    }
	if bossActiveAttack[1] = 4 {
        scr_Boss_Dash_Setup();
        bossPatternCount = 150;
        bossPatternCountMax = bossPatternCount;
        bossPatternCooldown = 1;
        bossPatternCooldownMax = 1;
        bossActiveAttackDuration[1] = 10 + bossattackspeed * bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 40 + (irandom(1) * 20);
		
		var bossdirection = scr_Soul_Point()
        bossDashDirection = bossdirection;
		bossMaxDashSpeed = 1.5 * bossmovespeed;
		bossDashSpeed = 0;
    }
	if bossActiveAttack[1] = 5 {
        bossActiveAttackDelay[1] = 10;
        bossPatternCount = 9;
        bossPatternCooldown = 7;
        bossPatternCooldownMax = 7;
        bossActiveAttackDuration[1] = 7 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 120 + (irandom(1) * 20);
    }
    bossPatternCountMax = bossPatternCount;
}


/// Active Attack Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Spectre_Big_Blast;
    bullet_sprite = spr_Spectre_Blast;
    bullet_speed = bossbulletspeed * 1.5;
    bullet_power = bosspower * 1;
    bullet_direction = (-5 + random(10)) / bossaccuracy;
    bullet_lifespan = 240 + random(180);
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;
    
if bossActiveAttackDelay[1] <= 0 {
            
    
    /*
    if bossActiveAttack[1] = 4 and speed < (0.5 * bossmovespeed) {
    
        bullet_type = obj_Basic_Bullet;
        bullet_sprite = spr_Enemy_Shot;
        bullet_count = 12;
        bullet_spread = 360;
        bullet_lifespan = 300;
        bullet_power = bosspower * 1;
        
        bullet_speedfac_min = 0.75;
        bullet_speedfac_add = 0.5;
        bullet_timefac_min = 0.9;
        bullet_timefac_add = 0.5;
        
        scr_Soul_Shoot_Vomit();
    
        scr_Default_Attack_Settings();
        
        bullet_type = obj_Laser_Beam_Charge;
        bullet_sprite = spr_Laser_Beam_Charge;
        bullet_speed = path_speed * 1;
        bullet_power = bosspower * 0.5;
        bullet_direction = 0 + (-1 + random(2)) / bossaccuracy;
        bullet_lifespan = 7;
        bullet_size = 1;
        bullet_count = 1;
        bullet_spread = 0;
        boss_radius = 0;
    
        scr_Direction_Beam();
        
        bossActiveAttack[1] = 0;
    
    }
    */
    
}

/* */
/// Active Attack Pattern Code
    
    scr_Beam_Shoot_Properties();
    scr_Default_Attack_Settings();
    bullet_type = obj_Basic_Bullet;
    bullet_sprite = spr_Green_Shot;
    bullet_speed = bossbulletspeed * 1;
    bullet_power = bosspower * 1; 
    bullet_direction = (-5 + random(10)) / bossaccuracy;
    bullet_lifespan = 240 + random(180);
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;

if bossActiveAttackDelay[1] <= 0 and bossPatternCooldown <= 0 and bossPatternCount > 0 {
        
	if bossActiveAttack[1] = 1 {
		scr_Boss_Stretch("Vertical", 0.4);
        bullet_direction = (-10 + random(20)) / bossaccuracy;
		bullet_sprite = spr_Pest_Bullet;
		bullet_type = obj_Pest_Bullet;
		bullet_speed = bossbulletspeed * (2.25 + random(0.4));
		bullet_count = 1;
		
        scr_Soul_Shoot();
    }
    if bossActiveAttack[1] = 5 {
		scr_Boss_Stretch("Vertical", 0.4);
        bullet_direction = (-10 + random(20)) / bossaccuracy;
		bullet_sprite = spr_Enemy_Shot;
		bullet_type = obj_Sporadic_Bullet;
		bullet_speed = bossbulletspeed * (1.4 + ((bossPatternCountMax - bossPatternCount) / 2));
		bullet_count = 5 + (bossPatternCountMax - bossPatternCount);
		bullet_spread = 100 / bullet_count;
		
        scr_Soul_Shoot();
    }
	if bossActiveAttack[1] = 2 {
		
		//if (bossPatternCount > bossPatternCountMax - 6) {
			if bossPatternCount mod 2 = 0 {
				scr_Boss_Stretch("Vertical", 0.4);
			} else {
				scr_Boss_Stretch("Horizontal", 0.4);
			}
			show_debug_message("bossPatternCount: " + string(bossPatternCount) + "image_index: " + string(image_index))
			
			if bossPatternCount = bossPatternCountMax {
				boss_xoffset = 0;
				boss_yoffset = -75;
				minion_dir = 90;
				minion_speed = 4;
			} else {
				
				var modCount = bossPatternCount mod 3;
				if modCount = 0 {
					boss_xoffset = -50;
					boss_yoffset = -45;
					minion_dir = 215;
					minion_speed = 4;
				}
				if modCount = 2 {
					boss_xoffset = 45;
					boss_yoffset = 25;
					minion_dir = 30;
					minion_speed = 4;
				}
				if modCount = 1 {
					boss_xoffset = 55;
					boss_yoffset = -20;
					minion_dir = 300;
					minion_speed = 4;
				}
			}
		
			minion_xx = boss_xoffset;
			minion_yy = boss_yoffset;
			minion_count = 1;
	        minion_type = obj_Sweeping_Locust_Clone;
	        minion_health = bossmaxhealth / 20;
			minion_defense = 0;
	        scr_Minion_Spawn();
		//}
	
    }
	if bossActiveAttack[1] = 3 {
		scr_Boss_Stretch("Vertical", 0.4);
		
        bullet_direction = (-20 + random(40)) / bossaccuracy;
		bullet_sprite = spr_Pestilence_Shot;
		bullet_type = obj_Exploding_Green;
		bullet_count = 4;
		bullet_lifespan = 120;
		bullet_image_speed = 0.33;
		bullet_speed = bossbulletspeed * (2.3 + random(0.15));
		bullet_spread = 180 / bullet_count;
		
		if bossPatternCount = 3 {
			scr_Soul_Shoot();
		}
		if bossPatternCount = 2 {
			bullet_count = 5;
			bullet_speed = bossbulletspeed * (1.95 + random(0.15));
			scr_Soul_Shoot();
		}
		
		if bossPatternCount = 1 {
			bullet_lifespan = 300;
			bullet_count = 16;
			bullet_speed = bossbulletspeed * (1.6 + random(0.15));
			bullet_spread = bullet_spread / 3;
			bullet_sprite = spr_Glowy_Enemy_Shot;
			bullet_type = obj_Wave_Bullet;
			scr_Soul_Shoot();
		}
		
    }
	/*
	if bossActiveAttack[1] = 3 {
		minion_count = 1;
        //minion_type = obj_Circling_Locust_Clone;
        minion_health = bossmaxhealth / 20;
        scr_Minion_Spawn();
		
        if bossPatternCount = bossPatternCooldownMax {
			scr_Boss_Dash_Movement(27,60);
		
			speed = bossDashSpeed;
	        direction = bossDashDirection;
		}
	}
	*/
	
	if bossActiveAttack[1] = 5 {
		scr_Boss_Stretch("Vertical", 0.1);
		
        bullet_direction = (-20 + random(40)) / bossaccuracy;
		bullet_sprite = spr_Pestilence_Shot;
		bullet_type = obj_Exploding_Green;
		bullet_count = 1;
		bullet_lifespan = 80;
		bullet_image_speed = 0.5;
		bullet_speed = bossbulletspeed * (1 + random(2));
		
        scr_Soul_Shoot();
    }
	
	if bossActiveAttack[1] = 4 {
		if bossPatternCount mod 10 = 0 {
			scr_Boss_Stretch("Horizontal", 0.05);
		}
		if bossPatternCount mod 20 = 0 {
			bullet_lifespan = 180;
			bullet_count = 3;
			bullet_speed = bossbulletspeed * (1.6 + random(0.15));
			bullet_spread = 360 / bullet_count;
			bullet_sprite = spr_Glowy_Enemy_Shot;
			bullet_type = obj_Spin_Quick_Phase_Bullet;
			scr_Soul_Shoot();
		}
		
        scr_Boss_Dash_Movement(40,20);
		
		speed = bossDashSpeed;
        direction = bossDashDirection;
		
		souldir = scr_Soul_Point();
		var adif = angle_difference(bossDashDirection, souldir);
		if adif < 0 {
			bossDashDirection += 0.66;
		}
		if adif > 0 {
			bossDashDirection -= 0.66;
		}
    }
    
    bossPatternCount -= 1;
    bossPatternCooldown += bossPatternCooldownMax;
}

/* */
/// Active Attack Post
   
if bossActiveAttackDuration[1] <= 0 { 
    //speed = 0.33 * bossmovespeed;
    //friction = 0;
    bossActiveAttack[1] = 0;
    bossActiveAttack[2] = 0;
    bossActiveAttack[3] = 0;
    bossActiveAttack[0] = 0;
}

#region /// Boss Sprite Code

scr_Boss_Size_Lerp_Dir(0.15);

//if champ = 0 {
if bossActiveAttack[1] = 1 { 
	scr_Boss_Attack_Sprite(spr_Locust_Shoot, 50, 0, 5);
	if image_index = 2 || image_index = 3 {
		scr_Boss_Wobble("Horizontal", 1, 0.1, 0);	
	}
} else if bossActiveAttack[1] = 2 { 
	scr_Boss_Attack_Sprite(spr_Locust_Spawning_Slow, 5, 15, 15);
} else { // Default
	sprite_index = spr_Locust;		
}
//}

#endregion


//sprite_index = spr_Peering_Spectre_old;
/* */
/*  */

scr_Boss_Soul_Hitbox(sprite_index);