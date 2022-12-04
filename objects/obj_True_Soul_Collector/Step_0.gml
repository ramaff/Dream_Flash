/// @description  Boss Step Event

scr_Boss_Step();

///Passive Attack Prep

currentphase = 2;
image_alpha = 1;

if currentphase = 2 {
	direction = scr_Soul_Point();
	//speed = 0.3 * bossmovespeed;
} else {
	direction = scr_Soul_Point();
	//speed = 0.1 * bossmovespeed;
}

if bossPassiveAttackDelay[1] <= 0 and bossPassiveAttackCooldown[1] <= 0 {
    if champ = 0 and currentphase = 2 {
        bossPassiveAttack[1] = 1;
        bossPassiveAttackCooldown[1] = 60 + random(30);
        bossPassiveAttackDelay[1] = 0;
    }
}


///Passive Attack Code

if bossPassiveAttack[1] = 1 {
	/*
    minion_count = 1;
    minion_type = obj_Hand_Slime;
    minion_health = bossmaxhealth / 20;
    minion_defense = 2;
    scr_Minion_Spawn();  
	*/
}
bossPassiveAttack[1] = 0;
bossPassiveAttack[2] = 0;

///Active Attack Prep

if bossActiveAttackDelay[1] <= 0 and bossActiveAttackCooldown[1] <= 0 and bossActiveAttackDuration[1] <= 0 {
    bossActiveAttack[1] = choose(1);
	//bossActiveAttack[1] = 5;
    if currentphase = 2 {
        bossActiveAttack[1] = choose(2, 3);
    }
	if champ = 1 {
		if currentphase = 2 {
			bossActiveAttack[1] = choose(5);
		}
	}
	//bossActiveAttack[1] = 5;
	if bossActiveAttack[1] = 1 {
        bossActiveAttackDelay[1] = 15;
        bossPatternCount = 6;
        bossPatternCooldown = 15;
        bossPatternCooldownMax = 30;
        bossActiveAttackDuration[1] = 20 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 60 + random(30);
    }
    if bossActiveAttack[1] = 2 {
        bossActiveAttackDelay[1] = 30;
        bossActiveAttackDuration[1] = 45;
        bossActiveAttackCooldown[1] = 120 + random(30);
    }
    if bossActiveAttack[1] = 3 {
        bossActiveAttackDelay[1] = 15;
        bossPatternCount = 480;
        bossPatternCooldown = 1;
        bossPatternCooldownMax = 1;
		bossPatternDirection = random(360);
        bossActiveAttackDuration[1] = 20 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 60 + random(30);
    }
    if bossActiveAttack[1] = 4 {
        bossActiveAttackDelay[1] = 15;
        bossPatternCount = 480;
        bossPatternCooldown = 1;
        bossPatternCooldownMax = 1;
		for(var i = 0; i < 10; i++) {
			bossPatternDirectionArray[i] = random(360);
		}
        bossActiveAttackDuration[1] = 20 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 60 + random(30);
    }
	if bossActiveAttack[1] = 5 {
        bossActiveAttackDelay[1] = 15;
        bossPatternCount = 480;
        bossPatternCooldown = 1;
        bossPatternCooldownMax = 1;
		bossPatternDirection = random(360);
        bossActiveAttackDuration[1] = 20 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 60 + random(30);
    }
	
	bossPatternCountMax = bossPatternCount;
}


/// Active Attack Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Bounce_Bullet;
    bullet_sprite = spr_Lob_Shot;
    bullet_speed = bossbulletspeed * 1.5;
    bullet_power = bosspower * 1.5;
    bullet_direction = (-5 + random(10)) / bossaccuracy;
    bullet_lifespan = 240;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    bullet_image_speed = 0.5;
    boss_radius = 0;
    
if bossActiveAttackDelay[1] <= 0 {
        
    if bossActiveAttack[1] = 2 {
		scr_Boss_Stretch("Vertical", 0.4);
		
		boss_yoffset = -160;
		
        bullet_type = obj_Soul_Line_Shot;
        bullet_sprite = spr_Glowy_Night_Shot;
		bullet_count = 10;
        bullet_direction = (-180 + random(360)) / bossaccuracy;
		bullet_spread = 360;
		bullet_size = 1.25;
		bullet_speed = bossbulletspeed * 2;
		bullet_speedfac_min = 1;
		bullet_speedfac_add = 0.8;
		
        scr_Soul_Shoot_Vomit();
		
		bossActiveAttack[1] = -2;
    }
	
}

/* */
/// Active Attack Pattern Code
    
    scr_Default_Attack_Settings();
	scr_Beam_Shoot_Properties();
    bullet_type = obj_Phase_Bullet;
    bullet_sprite = spr_Glowy_Night_Shot;
    bullet_speed = bossbulletspeed * 1.5;
    bullet_power = bosspower * 1;
    bullet_direction = (-5 + random(10)) / bossaccuracy;
    bullet_lifespan = 240;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    bullet_image_speed = 0.5;
    boss_radius = 0;

if bossActiveAttackDelay[1] <= 0 and bossPatternCooldown <= 0 and bossPatternCount > 0 {
        
    if bossActiveAttack[1] = 1 {
		scr_Boss_Stretch("Horizontal", 0.25);
		
        minion_count = 1;
		if bossPatternCount > 1 {
			minion_type = obj_Soul_Collection_Small;
			minion_health = bossmaxhealth / 8;
		} else {
			minion_type = obj_Soul_Collection_Large;
			minion_health = bossmaxhealth / 3;
		}
        minion_defense = 2;
        scr_Minion_Spawn();
		
    }
	
	if bossActiveAttack[1] = 3 {
		
		boss_yoffset = -160;
		if bossPatternCount mod 10 = 0 {
			scr_Boss_Stretch("Vertical", 0.05);
		}
		if bossPatternCount mod 3 = 0 and bossPatternCount >= 345 {
		bullet_direction = bossPatternDirection;
		bullet_count = 3;
		bullet_spread = 360 / bullet_count;
		bullet_lifespan = bossPatternCount;
		boss_yoffset = -160;
		
		scr_Offset_Normal_Shoot();
		
		bossPatternDirection += 12;
		}
		if bossPatternCount < 345 {
			scr_Boss_Bullet_Pull(boss_xoffset, boss_yoffset, 4 - (bossPatternCount / 90));	
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
    
        if (bossPatternCount < (bossPatternCountMax - 20)) {
			
			if bossPatternCount mod 10 {
				scr_Boss_Stretch("Vertical", 0.05);	
			}
			
            scr_Boss_Beam_Attack("Active",35); 
            
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
            scr_Boss_Beam_Attack("Dormant",35);  
        }
        
        if ((bossPatternCount mod 25 = 0) and (bossPatternCount > 0) and (bossPatternCount < bossPatternCountMax - 10)) {
            var length = 0
            while(!collision_point(x + lengthdir_x(length,bullet_direction),y + lengthdir_y(length,bullet_direction),obj_The_Border,true,true)) {
                length += 5;
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
		
		boss_yoffset = -160;
		if bossPatternCount mod 10 = 0 {
			scr_Boss_Stretch("Vertical", 0.05);
		}
		if bossPatternCount >= 345 and bossPatternCount mod 120 = 0 {
			scr_Boss_Stretch("Vertical", 0.4);

			bullet_speed = bossbulletspeed * 2.25
			bullet_direction = bossPatternDirection;
			bullet_crowd_direction = bullet_direction;
			bullet_crowd_speed = bullet_speed;
			bullet_count = 6;
			bullet_spread = 360 / bullet_count;
			bullet_lifespan = 360;
			boss_yoffset = -160;
			bullet_power = bosspower * 2;
				
			bullet_type = obj_Spin_Expand_Line_Bullet;
			bullet_sprite = spr_Big_Glowy_Purple_Shot;
		
			scr_Offset_Normal_Shoot();
			
			bossPatternDirection += 30;
			bullet_direction = bossPatternDirection;
			bullet_crowd_direction = bullet_direction;
			bullet_type = obj_Spin_Expand_Line_Bullet_Alt;
		
			scr_Offset_Normal_Shoot();
		
		}
		if bossPatternCount < 345 {
			//scr_Boss_Bullet_Pull(boss_xoffset, boss_yoffset, 4 - (bossPatternCount / 90));	
		}
    }
    
    bossPatternCount -= 1;
    bossPatternCooldown += bossPatternCooldownMax;
}

/* */
/// Boss Sprite Code

/*
scr_Boss_Two_Face_Direction();

if (bossActiveAttack[1] = 5 and (bossActiveAttackDelay[1] > 0)) {
    sprite_index = spr_Amorphous_Prime_Squish;
	//bossSize = 0.35;
	if champ = 1 {
		sprite_index = spr_Beam_Apparition;
	}
} 
if bossActiveAttack[1] = 5 and (bossActiveAttackDelay[1] < 0) {
	if jumpDirection = "Down" {
		sprite_index = spr_Amorphous_Prime_Fall_Down;	
	} else {
		sprite_index = spr_Amorphous_Prime_Spring_Up;	
	}
	//bossSize = 0.4;
	if jumpHeight < 20 {
		sprite_index = spr_Amorphous_Prime_Squish;
		//bossSize = 0.35;
	}
	if champ = 1 {
		sprite_index = spr_Beam_Apparition_Attack;
	}
}
if bossActiveAttack[1] != 5 {
	sprite_index = spr_Amorphous_Prime;
	//bossSize = 0.325;
}
*/

#region ///Sprites

scr_Boss_Size_Lerp(0.15);

/*
if bossActiveAttack[1] = 3 {
	sprite_index = spr_Agony_Amorphous_Hop;
}
*/

if state = states.jumping {
	//if jumpHeight > 10 || bossPatternCooldown > 0 {
	
		//sprite_index = spr_Agony_Amorphous_Hop;
	/*} else*/ if jumpHeight <= 10 {
		if jumpDirection = "Down" {
			state = states.normal;
		}
		if bossActiveAttackDuration[1] <= 0 {
			
		}
	}
}

if bossActiveAttack[1] = 2 {
	sprite_index = spr_Soul_Collector_Shoot;
	if bossActiveAttackDuration[1] > 10 {
		if image_index > 5 {
			image_index = 5;		
		}
	}
} else if bossActiveAttack[1] = 3 || bossActiveAttack[1] = 5 {
	sprite_index = spr_Soul_Collector_Shoot_Suck;
	if bossPatternCount >= 360 {
		if image_index > 6 {
			image_index = 6;		
		}
	} else {
		if bossActiveAttackDuration[1] > 10 {
		if image_index > 8 {
			image_index = 8;		
		}	
		}
	}
} else {
	if sprite_index = spr_Soul_Collector_Spawn and image_index = 3 {
		sprite_index = spr_Soul_Collector
	} else if sprite_index = spr_Soul_Collector_Spawn and image_index <= 2 {
		sprite_index = spr_Soul_Collector_Spawn;
	} else {
		sprite_index = spr_Soul_Collector;	
	}
}

#endregion
   
if bossActiveAttackDuration[1] <= 0 {
    bossActiveAttack[1] = 0;
    bossActiveAttack[2] = 0;
    bossActiveAttack[3] = 0;
    bossActiveAttack[0] = 0;
}

if currentphase = 2 {
	scr_Boss_Soul_Hitbox(sprite_index);
}