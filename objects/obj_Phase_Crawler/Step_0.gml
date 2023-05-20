/// @description  Boss Step Event


scr_Boss_Step();

///Active Attack Prep

if bossActiveAttackDelay[1] <= 0 and bossActiveAttackCooldown[1] <= 0 and bossActiveAttackDuration[1] <= 0 {
    mCount = instance_number(obj_Minion_Parent)
    bCount = instance_number(obj_Main_Boss_Parent)    
    bossScare = 0;

    bossActiveAttack[1] = choose(1,2,3);
	//bossActiveAttack[1] = 3;
	/*
    if ((mCount - 3) / bCount) >= 3 {
        bossActiveAttack[1] = choose(1,1,2);
    } */
    if currentphase = 2 {
        bossActiveAttack[1] = choose(3,4,5); /*
        if ((mCount - 3) / bCount) >= 3 {
            bossActiveAttack[1] = choose(4,4,5); 
        } */
    }
	if bossActiveAttack[1] = 1 {
        bossActiveAttackDelay[1] = 10;
        bossPatternCount = 27;
        bossPatternCooldown = 15;
        bossPatternCooldownMax = 15;
        bossActiveAttackDuration[1] = 10 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 120 + random(15);
		
		bossPatternDirection = random(360);
    }
	
    if bossActiveAttack[1] = 2 {
        bossActiveAttackDelay[1] = 10;
        bossPatternCount = 6;
        bossPatternCooldown = 15;
        bossPatternCooldownMax = 15;
		if champ = 1 {
			bossPatternCount = 5;
			bossPatternCooldown = 20;
			bossPatternCooldownMax = 20;
		}
        bossActiveAttackDuration[1] = 10 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 150 + random(30);
    }
	if bossActiveAttack[1] = 3 {
        bossActiveAttackDelay[1] = 10;
        bossPatternCount = 3;
        bossPatternCooldown = 30;
        bossPatternCooldownMax = 30;
		if champ = 1 {
			bossPatternCount = 2;
			bossPatternCooldown = 60;
			bossPatternCooldownMax = 60;	
		}
        bossActiveAttackDuration[1] = 30 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 120 + random(15);
    }
    if bossActiveAttack[1] = 4 {
		bossActiveAttackDelay[1] = 0;
		jumpDirection = "Up";
		jumpHeight = 0;
		
        scr_Boss_Dash_Setup();
        bossPatternCount = 90;
        bossPatternCountMax = bossPatternCount;
        bossPatternCooldown = 15;
        bossPatternCooldownMax = 1;
		
		var bossdirection = scr_Soul_Point();
        bossDashDirection = bossdirection;
		
		scr_Leap_Distance_Calc(1 * bossmovespeed,30);
		
		bossDashSpeed = 0;
		state = states.leaping;
		
		bossActiveAttackDuration[1] = 30 + bossattackspeed * bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 105 + random(15);
        
    }
	if bossActiveAttack[1] = 5 {
        bossActiveAttackDelay[1] = 10;
        bossPatternCount = 4;
        bossPatternCooldown = 15;
        bossPatternCooldownMax = 15;
        bossActiveAttackDuration[1] = 300 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 150 + random(15);
    }
    bossPatternCountMax = bossPatternCount;
}


/// Active Attack Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Speed_UpDown_Bullet;
    bullet_sprite = spr_Ache_Direction_Bullet;
    bullet_speed = bossbulletspeed * (2.1 + random(0.3));
    bullet_power = bosspower;
    bullet_direction = (-20 + random(40)) / bossaccuracy;
    bullet_lifespan = 400;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    bullet_image_speed = 0.2;
    boss_radius = 0;
    
if bossActiveAttackDelay[1] <= 0 {
        
}

/// Active Attack Pattern Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Basic_Bullet;
    bullet_sprite = spr_Glowy_Purple_Shot;
    bullet_speed = bossbulletspeed * (1.2 + random(0.3));
    bullet_power = bosspower;
    bullet_direction = (-5 + random(10)) / bossaccuracy;
    bullet_lifespan = 400;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    bullet_image_speed = 1;
    boss_radius = 0;

if bossActiveAttackDelay[1] <= 0 and bossPatternCooldown <= 0 and bossPatternCount > 0 {
        
    if bossActiveAttack[1] = 1 {
		scr_Boss_Stretch("Vertical", 0.1);
		
        bullet_speed = bossbulletspeed * 1.5;
		bullet_direction = bossPatternDirection;
		
		if champ = 0 {
			bullet_count = 8;
		
			if (bossPatternCount + 6) mod 7 = 0 and bossPatternCount != 27 {
				bullet_count = 24;	
				//bullet_direction = random(360);
			}
		
			bullet_spread = 360 / bullet_count;	
			scr_Just_Shoot();
		}
		
		if champ = 1 {
			bullet_speed = bossbulletspeed * 1.75;
			bullet_count = 8;
			bullet_type = obj_Spin_Bullet;
			bullet_sprite = spr_Glowy_Dreamy_Shot;
			bullet_direction = bossPatternDirection
		
			bullet_spread = 360 / bullet_count;	
			scr_Just_Shoot();
			
			bullet_type = obj_Alt_Spin_Bullet;
			scr_Just_Shoot();
			
			bossPatternDirection += 3;
		}
		
		if (bossPatternCount + 7) mod 7 = 0 and bossPatternCount != 27 {
		
			bullet_type = obj_Portal_Shooter
			bullet_sprite = spr_Portal_Shot;
			bullet_lifespan = 300;
		
			bullet_count = 1;
			bullet_spread = 360 / bullet_count;
			bullet_speed = bossbulletspeed * 1.1;
		
			scr_Just_Shoot();
		}
		
    }
    if bossActiveAttack[1] = 2 {
		scr_Boss_Stretch("Vertical", 0.25);
		
        bullet_speed = bossbulletspeed * 1;
		
		bullet_sprite = spr_Portal_Shot;
		bullet_lifespan = 300;
		
		if champ = 0 {
			bullet_type = obj_Portal_Shooter
		} else if champ = 1 {
			bullet_type = obj_Portal_Shooter_Silk;
		}
		
		bullet_count = 1;
		bullet_spread = 360 / bullet_count;
		
		scr_Just_Shoot();
    }
	
	if bossActiveAttack[1] = 3 {
		scr_Boss_Stretch("Vertical", 0.1);
		
        //bullet_speed = 0;
		
		bullet_type = obj_Spider_Portal;
		
		if champ = 1 {
			bullet_type = obj_Spider_Nest_Portal;	
		}
		
		bullet_sprite = spr_Portal_Shot;
		bullet_lifespan = 130;
		
		bullet_count = 1;
		bullet_spread = 360 / bullet_count;
		
		scr_Just_Shoot();
		
    }
	
	if bossActiveAttack[1] = 4 {
		
		if bossPatternCountMax - bossPatternCount = 0 {
			scr_Boss_Stretch("Vertical", 0.3);
		}
		
		scr_Boss_Dash_Movement(30,30);
		
		speed = bossDashSpeed;
        direction = bossDashDirection;
		
		//if bossPatternCountMax - bossPatternCount > 5 {
			scr_Jump_Movement(30);
		//}
		
		if bossPatternCount <= 1 {
			
			scr_Boss_Stretch("Horizontal", 0.5);
			scr_Screen_Shake(10,5);	
			
			state = states.normal;
			
			if champ = 0 {
		        bullet_type = obj_Basic_Bullet;
		        bullet_sprite = spr_Glowy_Purple_Shot;
				bullet_count = 24;
				bullet_speed = bossbulletspeed * 2.75;
		        bullet_spread = 360 / bullet_count;
			
		        scr_Just_Shoot();
				bullet_speed = bossbulletspeed * 1;
		        scr_Just_Shoot();
			
				repeat(4) {
					bullet_count = 8;
					bullet_spread = 360 / bullet_count;
					bullet_speed += bossbulletspeed * 0.35;
			        scr_Just_Shoot();
				}
			} else if champ = 1 {
				
				bullet_count = 1;
				bullet_direction = random(360);
				bullet_spread = 360 / bullet_count;
			    bullet_sprite = spr_Glowy_Dreamy_Shot;
				
				repeat(10) {
					bullet_crowd_direction = bullet_direction;
			
					bullet_type = obj_Spin_Expand_Bullet;
					bullet_speed = bossbulletspeed * 2;
					
					bullet_crowd_speed = bossbulletspeed;
			
			        scr_Just_Shoot();
					
					bullet_type = obj_Spin_Expand_Bullet_Alt;
					bullet_speed = bossbulletspeed * 1;
					
					bullet_crowd_speed = bossbulletspeed;
			        scr_Just_Shoot();
					
					bullet_direction += 360 / 10;
				}
			
				repeat(4) {
					bullet_type = obj_Basic_Bullet;
					bullet_count = 8;
					bullet_spread = 360 / bullet_count;
					bullet_speed += bossbulletspeed * 0.35;
			        scr_Just_Shoot();
				}
				
			}
			
		}
    }
	
	if bossActiveAttack[1] = 5 {
		scr_Boss_Stretch("Vertical", 0.25);
		
        bullet_speed = bossbulletspeed * 1;
		
		bullet_type = obj_Portal_Web;
		if champ = 1 {
			bullet_type = obj_Portal_Web_Spin;	
		}
		bullet_sprite = spr_Portal_Shot;
		bullet_lifespan = 465;
		
		bullet_count = 1;
		bullet_spread = 360 / bullet_count;
		
		scr_Just_Shoot();
    }
    
    bossPatternCount -= 1;
    bossPatternCooldown += bossPatternCooldownMax;
    
}

/// Active Attack Post
   
if bossActiveAttackDuration[1] <= 0 { 
    bossActiveAttack[1] = 0;
    bossActiveAttack[2] = 0;
    bossActiveAttack[3] = 0;
    bossActiveAttack[0] = 0;
}

#region /// Boss Sprite


scr_Boss_Size_Lerp(0.15);

image_speed = 1;

if bossActiveAttack[1] = 1 {
	sprite_index = spr_Phase_Crawler_Shoot;
	if image_index >= 3 and bossActiveAttackDuration[1] > 10 {
		image_index = 3;	
	}
} else if bossActiveAttack[1] = 2 || bossActiveAttack[1] = 3 || bossActiveAttack[1] = 5 {
	sprite_index = spr_Phase_Crawler_Portal;
	if image_index >= 3 and bossActiveAttackDuration[1] > 10 {
		image_index = 3;	
	}
} else if bossActiveAttack[1] = 4 {
	sprite_index = spr_Phase_Crawler_Hop;
	if image_index >= 4 and bossActiveAttackDuration[1] > 10 {
		image_index = 4;	
	}
} else {
	sprite_index = spr_Phase_Crawler;
}

#endregion

scr_Boss_Soul_Hitbox(sprite_index);