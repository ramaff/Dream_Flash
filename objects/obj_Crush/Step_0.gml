/// @description  Boss Step Event


scr_Boss_Step();

///Active Attack Prep

if bossActiveAttackDelay[1] <= 0 and bossActiveAttackCooldown[1] <= 0 and bossActiveAttackDuration[1] <= 0 {
    mCount = instance_number(obj_Minion_Parent)
    bCount = instance_number(obj_Main_Boss_Parent)    
    bossScare = 0;

    bossActiveAttack[1] = choose(1,1,2,3);
    if ((mCount - 3) / bCount) >= 3 {
        bossActiveAttack[1] = choose(1,1,2);
    }
    if currentphase = 2 {
        bossActiveAttack[1] = choose(4,4,5);
        if ((mCount - 3) / bCount) >= 3 {
            bossActiveAttack[1] = choose(4,4,5);
        }
    }
    if bossActiveAttack[1] = 1 {
        bossActiveAttackDelay[1] = 30;
        bossPatternCount = 550;
        bossPatternCooldown = 1;
        bossPatternCooldownMax = 1;
        bossActiveAttackDuration[1] = 10 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 90 + random(15);
    }
    if bossActiveAttack[1] = 2 {
        bossActiveAttackDelay[1] = 10;
        bossPatternCount = 120;
        bossPatternCooldown = 1;
        bossPatternCooldownMax = 1;
        bossActiveAttackDuration[1] = 10 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 60 + random(15);
    }
    if bossActiveAttack[1] = 3 {
        bossActiveAttackDelay[1] = 10;
        bossPatternCount = 3;
        bossPatternCooldown = 30;
        bossPatternCooldownMax = 30;
        bossActiveAttackDuration[1] = 10 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 90 + random(15);
    }
    if bossActiveAttack[1] = 4 {
		bossActiveAttackDelay[1] = 15;
		jumpDirection = "Up";
		jumpHeight = 0;
		
        scr_Boss_Dash_Setup();
        bossPatternCount = 90;
        bossPatternCountMax = bossPatternCount;
        bossPatternCooldown = 10;
        bossPatternCooldownMax = 1;
		
		var bossdirection = scr_Soul_Point();
        bossDashDirection = bossdirection;
		
		scr_Leap_Distance_Calc(1 * bossmovespeed,30);
		
		bossDashSpeed = 0;
		state = states.leaping;
		
		bossActiveAttackDuration[1] = 15 + bossattackspeed * bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 75 + random(15);
        
    }
	if bossActiveAttack[1] = 5 {
        bossActiveAttackDelay[1] = 10;
        bossPatternCount = 120;
        bossPatternCooldown = 1;
        bossPatternCooldownMax = 1;
        bossActiveAttackDuration[1] = 10 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 60 + random(15);
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
    bullet_sprite = spr_Glowy_Enemy_Shot;
    bullet_speed = bossbulletspeed * (1.2 + random(0.3));
    bullet_power = bosspower;
    bullet_direction = (-20 + random(40)) / bossaccuracy;
    bullet_lifespan = 600;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    bullet_image_speed = 0.2;
    boss_radius = 0;

if bossActiveAttackDelay[1] <= 0 and bossPatternCooldown <= 0 and bossPatternCount > 0 {
        
    if bossActiveAttack[1] = 1 {
		if bossPatternCount mod 15 = 0 {
			scr_Boss_Stretch("Horizontal", 0.075);
		}
		
		if bossPatternCount = bossPatternCountMax {
			scr_Boss_Stretch("Horizontal", 0.4);
		
	        bullet_count = 1;
	        bullet_direction = 0;
			bullet_size = 1.25;
			for(var i = 1; i < 30; i++) {
		        bullet_power = bosspower * 1;
		        bullet_type = obj_Increasing_Orbital_Mace_Bullet;
		        bullet_spread = 0;
				if i = 29 {
					bullet_sprite = spr_Big_Glowy_Red_Shot;
					bullet_power = bosspower * 1.5;
				}
		        bullet_speed = bossbulletspeed * (0.65);
				bullet_speed = 360 / 160;
		        scr_Orbit_Shoot(i / 7,self,true);
			}
		}
    }
    if bossActiveAttack[1] = 2 {
		if bossPatternCount mod 10 = 0 {
			scr_Boss_Stretch("Horizontal", 0.075);
		}
		
		if bossPatternCount = bossPatternCountMax {
			scr_Boss_Stretch("Horizontal", 0.4);
			
	        bullet_direction = 0;
	        bullet_count = 1;
	        bullet_spread = 0;
	        bullet_speed = bossbulletspeed * (2.5 + random(0.15));
			bullet_type = obj_Crush_Bomb_Grow;
			bullet_sprite = spr_Crush_Ball;
			bullet_size = 0;
			
			boss_xoffset = 0;
		    boss_yoffset = -150;
		    scr_Offset_Normal_Shoot();
		}
		/*
        bullet_direction += 8;
        bullet_speed -= 0.1;
        scr_Just_Shoot();
		*/
    }
	
	if bossActiveAttack[1] = 3 {
		scr_Boss_Stretch("Horizontal", 0.4);
		
        minion_count = 2;
        minion_type = obj_Crush_Ghost;
        minion_health = bossmaxhealth / 25;
        scr_Minion_Spawn();
        //direction = scr_Soul_Point();
		//speed = 0.3 * bossmovespeed;
    
    }
	
	if bossActiveAttack[1] = 4 {
		
		if bossPatternCountMax - bossPatternCount = 0 {
			scr_Boss_Stretch("Horizontal", 0.4);
		}
		
		scr_Boss_Dash_Movement(30,30);
		
		speed = bossDashSpeed;
        direction = bossDashDirection;
		
		//if bossPatternCountMax - bossPatternCount > 5 {
			scr_Jump_Movement(30);
		//}
		
		if bossPatternCount <= 1 {
			
			scr_Boss_Stretch("Horizontal", 1);
			scr_Screen_Shake(10,5);	
			
			state = states.normal	
			
	        bullet_type = obj_Basic_Bullet;
	        bullet_sprite = spr_Glowy_Enemy_Shot;
			bullet_count = 15;
			bullet_speed = bossbulletspeed * 2.65;
			if champ = 1 {
				bullet_count = 15;	
			}
	        bullet_spread = 360 / bullet_count;
	        scr_Just_Shoot();
			bullet_speed = bossbulletspeed * 2.1;
			if champ = 0 {
				bullet_direction += 180 / bullet_count;
			}
	        scr_Just_Shoot();
			if champ = 1 {
				bullet_speed = bossbulletspeed * 2.8;
				scr_Just_Shoot();
			}
		}
    }
	
	if bossActiveAttack[1] = 5 {
		if bossPatternCount mod 10 = 0 {
			scr_Boss_Stretch("Horizontal", 0.075);
		}
		
		if bossPatternCount = bossPatternCountMax {
			scr_Boss_Stretch("Horizontal", 0.4);
			
	        bullet_direction = 0;
	        bullet_count = 1;
	        bullet_spread = 0;
	        bullet_speed = bossbulletspeed * (2.5 + random(0.15));
			bullet_type = obj_Crush_Explode_Grow;
			bullet_sprite = spr_Crush_Ball;
			bullet_size = 0;
			
			boss_xoffset = 0;
		    boss_yoffset = -150;
		    scr_Offset_Normal_Shoot();
		}
		/*
        bullet_direction += 8;
        bullet_speed -= 0.1;
        scr_Just_Shoot();
		*/
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
	sprite_index = spr_Crush_Spin;
	if image_index > 1 {
		image_speed = 0.5	
	}
	if image_index >= 10 and bossActiveAttackDuration[1] > 160 {
		image_index = 2;	
	}
} else if bossActiveAttack[1] = 2 || bossActiveAttack[1] = 5 {
	sprite_index = spr_Crush_Bomb;
	if image_index >= 3 and bossActiveAttackDuration[1] > 10 {
		image_index = 3;	
	}
} else if bossActiveAttack[1] = 3 {
	sprite_index = spr_Crush_Squeal;
	if image_index >= 3 and bossActiveAttackDuration[1] > 10 {
		image_index = 3;	
	}
} else if bossActiveAttack[1] = 4 {
	sprite_index = spr_Crush_Smush;
	if image_index >= 4 and bossActiveAttackDuration[1] > 15 {
		image_index = 4;	
	}
} else {
	sprite_index = spr_Crush;
}

#endregion

scr_Boss_Soul_Hitbox(sprite_index);