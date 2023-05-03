/// @description  Boss Step Event


scr_Boss_Step();

///Active Attack Prep

if bossActiveAttackDelay[1] <= 0 and bossActiveAttackCooldown[1] <= 0 and bossActiveAttackDuration[1] <= 0 {
    mCount = instance_number(obj_Minion_Parent)
    bCount = instance_number(obj_Main_Boss_Parent)    
    bossScare = 0;

    bossActiveAttack[1] = choose(1,2,3);
	if champ = 2 {
		bossActiveAttack[1] = choose(6,3,4);
	}
	//bossActiveAttack[1] = 3;
	/*
    if ((mCount - 3) / bCount) >= 3 {
        bossActiveAttack[1] = choose(1,1,2);
    } */
    if currentphase = 2 {
        bossActiveAttack[1] = choose(3,4,5); 
		if champ = 2 {
			bossActiveAttack[1] = choose(6,3,7);
		}
		/*
        if ((mCount - 3) / bCount) >= 3 {
            bossActiveAttack[1] = choose(4,4,5); 
        } */
    }
	
	if bossActiveAttack[1] = 1 {
        bossActiveAttackDelay[1] = 10;
        bossPatternCount = 2;
        bossPatternCooldown = 45;
        bossPatternCooldownMax = 45;
        bossActiveAttackDuration[1] = 10 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 120 + random(15);
    }
    if bossActiveAttack[1] = 2 {
        bossActiveAttackDelay[1] = 10;
        bossPatternCount = 12;
        bossPatternCooldown = 15;
        bossPatternCooldownMax = 15;
        bossActiveAttackDuration[1] = 10 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 120 + random(15);
    }
    if bossActiveAttack[1] = 3 {
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
	if bossActiveAttack[1] = 4 {
        bossActiveAttackDelay[1] = 10;
        bossPatternCount = 100;
        bossPatternCooldown = 1;
        bossPatternCooldownMax = 1;
        bossPatternDirection = scr_Soul_Point() + ((-5 + random(10)) / bossaccuracy);
		
		if champ = 2 {
			bossPatternCount = 200;
			bossPatternDirection = scr_Soul_Point() - 105;
		}
		
        bossActiveAttackDuration[1] = 10 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 120 + random(15);
    }
    if bossActiveAttack[1] = 5 {
        bossActiveAttackDelay[1] = 10;
        bossPatternCount = 9;
        bossPatternCooldown = 20;
        bossPatternCooldownMax = 20;
        bossActiveAttackDuration[1] = 10 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 120 + random(15);
    }
	if bossActiveAttack[1] = 6 {
        bossActiveAttackDelay[1] = 10;
        bossPatternCount = 100;
        bossPatternCooldown = 2;
        bossPatternCooldownMax = 2;
        bossActiveAttackDuration[1] = 10 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 120 + random(15);
		
		bossPatternDirection = random(360);
		bossPatternDirection2 = bossPatternDirection + 180;
    }
	if bossActiveAttack[1] = 7 {
        bossActiveAttackDelay[1] = 10;
        bossPatternCount = 180;
        bossPatternCooldown = 1;
        bossPatternCooldownMax = 1;
        bossPatternDirection = scr_Soul_Point() + ((-5 + random(10)) / bossaccuracy);
		
        bossActiveAttackDuration[1] = 10 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 120 + random(15);
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
    
	scr_Beam_Shoot_Properties();
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
    bullet_image_speed = 1;
    boss_radius = 0;

if bossActiveAttackDelay[1] <= 0 and bossPatternCooldown <= 0 and bossPatternCount > 0 {
        
    if bossActiveAttack[1] = 1 {
		scr_Boss_Stretch("Vertical", 0.4);
		
        bullet_speed = bossbulletspeed * 1.75;
        bullet_type = obj_5_Way_Split_Bullet;
		bullet_lifespan = 40;
		
		bullet_sprite = spr_Big_Glowy_Red_Shot;
		
		if champ = 1 {
			bullet_type = obj_5_and_12_Way_Split_Bullet;
			bullet_sprite = spr_Big_Glowy_Green_Shot;
		}
		
		if bossPatternCount > 1 {
       
			bullet_count = 3;
			bullet_spread = 45;
	        scr_Soul_Shoot();
		
			if champ != 1 {
				bullet_count = 2;
				bullet_speed = bossbulletspeed * 1.25;
				scr_Soul_Shoot();
			}
		}
		
		if bossPatternCount = 1 {
			bullet_lifespan = 80;
			bullet_image_speed = 0.5;
			
			if champ != 1 {
				bullet_speed = bossbulletspeed * 0.95;
				bullet_count = 6;
				bullet_spread = 33;
		        scr_Soul_Shoot();
				
				bullet_count = 5;
				bullet_speed = bossbulletspeed * 1.25;
				scr_Soul_Shoot();
			} else {
				bullet_count = 3;
				bullet_spread = 45;
		        scr_Soul_Shoot();
			}
			
		}
		
    }
    if bossActiveAttack[1] = 2 {
		scr_Boss_Stretch("Vertical", 0.2);
		
		bullet_direction = scr_Soul_Point();
		bullet_direction += -90 + random(180);
		
		if champ != 1 {
	        bullet_speed = bossbulletspeed * 2.25;
			bullet_count = 4;
			bullet_spread = 30;
	        scr_Just_Shoot();
			
			bullet_count = 5;
			bullet_speed = bossbulletspeed * 1.75;
			scr_Just_Shoot();
		} else {
			bullet_type = obj_1_and_4_Way_Split_Bullet;
			bullet_sprite = spr_Big_Glowy_Green_Shot;
			bullet_count = 3;
			bullet_speed = bossbulletspeed * 1.75;
			bullet_spread = 60;
			bullet_lifespan = 40;
			bullet_image_speed = 1;
			
			scr_Just_Shoot();
		}
		
    }
	
	if bossActiveAttack[1] = 3 {
		
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
			
			state = states.normal	
			
	        bullet_type = obj_Basic_Bullet;
	        bullet_sprite = spr_Glowy_Enemy_Shot;
			bullet_count = 18;
			bullet_speed = bossbulletspeed * 2.5;
			if champ = 1 {
				bullet_count = 15;	
				bullet_sprite = spr_Glowy_Green_Shot;
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
			
			bullet_type = obj_8_Way_Split_Bullet;
			bullet_lifespan = 40;
			bullet_sprite = spr_Big_Glowy_Red_Shot;
			bullet_count = 4;
			bullet_spread = 360 / bullet_count;
			bullet_speed = bossbulletspeed * 1.75;
			
			if champ = 1 {
				bullet_type = obj_1_and_4_Way_Split_Bullet;
				bullet_sprite = spr_Big_Glowy_Green_Shot;	
				
				bullet_count = 12;
				bullet_spread = 360 / bullet_count;
			}
			
			scr_Just_Shoot();
			
		}
    }
	
	if bossActiveAttack[1] = 4 {
        scr_Default_Attack_Settings();
        bullet_power = bosspower * 0.5;
        bullet_direction = bossPatternDirection;
        bullet_size = 1;
        bullet_count = 1;
        bullet_spread = 0;
        boss_radius = 0;
        
        bullet_sprite = spr_Red_Beam;
        beam_sprite = spr_Red_Beam;
        beamSize = 1;
        bossbeamattackactive = 1;
		
		if champ = 1 {
		bullet_sprite = spr_Green_Beam;
        beam_sprite = spr_Green_Beam;
		}
		
		scr_Easy_Boss_Beam_Shoot(bossPatternCountMax, 36);
		
		var bFrame = (bossPatternCountMax - 30)
    
        if (bossPatternCount < bFrame) {
			
			if bossPatternCount mod 10 {
				scr_Boss_Stretch("Vertical", 0.05);	
			}
			
            //scr_Boss_Beam_Attack_New("Active",35,scr_Boss_Beam_Frame(bFrame));
            
            souldir = scr_Soul_Point();
            var adif = angle_difference(bossPatternDirection, souldir);
			if champ != 2 {
	            if adif < 0 {
	                bossPatternDirection += 0.25;
	            }
	            if adif > 0 {
	                bossPatternDirection -= 0.25;
	            }
			} else {
				var aacc = (bossPatternCountMax - bossPatternCount) / 120;
				if adif < 0 {
	                bossPatternDirection += 0.25 + aacc;
	            }
	            if adif > 0 {
	                bossPatternDirection -= 0.25 + aacc;
	            }
			}
         
        } else {
            //scr_Boss_Beam_Attack_New("Dormant",35,scr_Boss_Beam_Frame(bFrame));
        }
        
        if ((bossPatternCount mod 25 = 0) and (bossPatternCount > 0) and (bossPatternCount < bossPatternCountMax - 10)) {
            var length = 0
            while(!collision_point(x + lengthdir_x(length,bullet_direction),y + lengthdir_y(length,bullet_direction),obj_The_Border,true,true)) {
                length += 32;
            }
        
            boss_xoffset = bossxx[boss_beam_num] + lengthdir_x(length - 16, bullet_direction);
            boss_yoffset = bossyy[boss_beam_num] + lengthdir_y(length - 16, bullet_direction);
            
            bullet_type = obj_Basic_Bullet;
            bullet_sprite = spr_Glowy_Enemy_Shot;
            bullet_speed = bossbulletspeed * (1.85 + random(0.1));
            bullet_lifespan = 400;
            bullet_size = 1;
            bullet_count = 16;
            bullet_spread = 360 / bullet_count;
			
			if champ = 1 {
				bullet_sprite = spr_Glowy_Green_Shot;
			}
            
            scr_Offset_Soul_Shoot();
			
			if champ = 0 {
				bullet_speed += bossbulletspeed * (0.5);
				bullet_direction += bullet_spread / 2;
			
				scr_Offset_Soul_Shoot();
			} else if champ = 1 {
				repeat(2) {
					bullet_speed += bossbulletspeed * (0.4);
					scr_Offset_Soul_Shoot();
				}
			}
        }
        
    }
	
	if bossActiveAttack[1] = 5 {
		scr_Boss_Stretch("Vertical", 0.2);
		
		if champ != 1 {
		
        bullet_speed = bossbulletspeed * 2.25;
		bullet_count = 6;
		bullet_spread = 360 / bullet_count;
        scr_Just_Shoot();
		
		bullet_count = 12;
		bullet_speed = bossbulletspeed * 1.75;
		bullet_spread = 360 / bullet_count;
		scr_Just_Shoot();
		
		} else {
			if bossPatternCount mod 3 = 0 {
				bullet_type = obj_5_and_12_Way_Split_Bullet;
				bullet_sprite = spr_Big_Glowy_Green_Shot;
				
				bullet_lifespan = 80;
				bullet_image_speed = 1;
				
				bullet_speed = bossbulletspeed * 1.5;
				bullet_count = 3;
				bullet_spread = 360 / bullet_count;
		        scr_Just_Shoot();
			}
		}
    }
	
	if bossActiveAttack[1] = 6 {
		if bossPatternCount mod 10 = 0 {
			scr_Boss_Stretch("Vertical", 0.2);
		}
		
		bullet_direction = bossPatternDirection;
		
	    bullet_speed = bossbulletspeed * 2;
		bullet_count = 2;
		bullet_spread = 90;
	    scr_Just_Shoot();
			
		bullet_count = 1;
		bullet_direction = bossPatternDirection2;
		bullet_speed = bossbulletspeed * 1.6;
		scr_Just_Shoot();
		
		bossPatternDirection += 8;
		bossPatternDirection2 -= 8;
		
    }
	
	if bossActiveAttack[1] = 7 {
        scr_Default_Attack_Settings();
        bullet_power = bosspower * 0.5;
        bullet_direction = bossPatternDirection;
        bullet_size = 1;
        bullet_count = 2;
		
		var countInc = bossPatternCountMax - bossPatternCount;
        bullet_spread = 180 - ((countInc / 10) * (countInc / 10));
        boss_radius = 0;
        
        bullet_sprite = spr_Red_Beam;
        beam_sprite = spr_Red_Beam;
        beamSize = 1;
        bossbeamattackactive = 1;
		
		var bFrame = (bossPatternCountMax - 30)
		scr_Easy_Boss_Beam_Shoot(bossPatternCountMax, 36);
    
        if (bossPatternCount < bFrame) {
			
			if bossPatternCount mod 10 {
				scr_Boss_Stretch("Vertical", 0.05);	
			}
			
            //scr_Boss_Beam_Attack_New("Active",35,scr_Boss_Beam_Frame(bFrame));
            
            souldir = scr_Soul_Point();
            var adif = angle_difference(bossPatternDirection, souldir);
	        if adif < 0 {
	            bossPatternDirection += 0.25;
	        }
	        if adif > 0 {
	            bossPatternDirection -= 0.25;
	        }
         
        } else {
            //scr_Boss_Beam_Attack_New("Dormant",35,scr_Boss_Beam_Frame(bFrame));
        }
        
		
        if ((bossPatternCount mod 50 = 0) and (bossPatternCount > 0) and (bossPatternCount < bossPatternCountMax - 10)) {
            var length = 0
            while(!collision_point(x + lengthdir_x(length,bullet_direction + bullet_spread / 2),y + lengthdir_y(length,bullet_direction + bullet_spread / 2),obj_The_Border,true,true)) {
                length += 32;
            }
			
			bullet_direction = bossPatternDirection;
        
            boss_xoffset = bossxx[boss_beam_num] + lengthdir_x(length - 16, bullet_direction + bullet_spread / 2);
            boss_yoffset = bossyy[boss_beam_num] + lengthdir_y(length - 16, bullet_direction + bullet_spread / 2);
            
            bullet_type = obj_Basic_Bullet;
            bullet_sprite = spr_Glowy_Enemy_Shot;
            bullet_speed = bossbulletspeed * (1.85 + random(0.1));
            bullet_lifespan = 400;
            bullet_size = 1;
            bullet_count = 16;
            bullet_spread = 360 / bullet_count;
            
            scr_Offset_Normal_Shoot();
			
			bullet_direction = bossPatternDirection;
			bullet_spread = 180 - ((countInc / 10) * (countInc / 10));
			
			length = 0;
			
			while(!collision_point(x + lengthdir_x(length,bullet_direction - bullet_spread / 2),y + lengthdir_y(length,bullet_direction - bullet_spread / 2),obj_The_Border,true,true)) {
                length += 32;
            }
        
            boss_xoffset = bossxx[boss_beam_num] + lengthdir_x(length - 16, bullet_direction - bullet_spread / 2);
            boss_yoffset = bossyy[boss_beam_num] + lengthdir_y(length - 16, bullet_direction - bullet_spread / 2);
            
			//boss_xoffset = lengthdir_x(length - 16, bullet_direction - bullet_spread / 2);
			//boss_yoffset = lengthdir_y(length - 16, bullet_direction - bullet_spread / 2);
			
            bullet_type = obj_Basic_Bullet;
            bullet_sprite = spr_Glowy_Enemy_Shot;
            bullet_speed = bossbulletspeed * (1.85 + random(0.1));
            bullet_lifespan = 400;
            bullet_size = 1;
            bullet_count = 16;
            bullet_spread = 360 / bullet_count;
            
            scr_Offset_Normal_Shoot();
		
			
        }
        
    }
    
    bossPatternCount -= 1;
    bossPatternCooldown += bossPatternCooldownMax;
    
}

/// Active Attack Post
   
if bossActiveAttackDuration[1] <= 0 { 
	state = states.normal;
	speed = 0;
    bossActiveAttack[1] = 0;
    bossActiveAttack[2] = 0;
    bossActiveAttack[3] = 0;
    bossActiveAttack[0] = 0;
}

#region /// Boss Sprite


scr_Boss_Size_Lerp(0.15);

image_speed = 1;

if bossActiveAttack[1] = 1 || bossActiveAttack[1] = 2 || bossActiveAttack[1] = 4 || bossActiveAttack[1] = 5 || bossActiveAttack[1] = 6 || bossActiveAttack[1] = 7 {
	sprite_index = spr_Behemoth_Shoot;
	if image_index >= 4 and bossActiveAttackDuration[1] > 10 {
		image_index = 4;	
	}
} else if bossActiveAttack[1] = 3 {
	sprite_index = spr_Behemoth_Hop;
	if image_index >= 4 and bossActiveAttackDuration[1] > 25 {
		image_index = 4;	
	}
} else {
	sprite_index = spr_Behemoth;
}

#endregion


scr_Boss_Soul_Hitbox(sprite_index);