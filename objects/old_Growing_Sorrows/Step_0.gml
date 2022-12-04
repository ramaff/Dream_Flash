/// @description  Boss Step Event

scr_Boss_Step();

image_angle = direction + 180;

if direction <= 90 || direction > 270 {
	image_angle = direction;
}


#region ///////Passive Attack Prep/////////
///////////////////////////////////

if bossPassiveAttackDelay[1] <= 0 and bossPassiveAttackCooldown[1] <= 0 {
	/*
    if champ = 0 || champ = 8 {
        bossPassiveAttack[1] = 1;
        bossPassiveAttackCooldown[1] = 60;
        bossPassiveAttackDelay[1] = 0;
    }
    if champ = 1 {
        bossPassiveAttack[1] = 2;
        bossPassiveAttackCooldown[1] = 60;
        bossPassiveAttackDelay[1] = 0;
    }
    if champ = 3 {
        bossPassiveAttack[1] = 3;
        bossPassiveAttackCooldown[1] = 40;
        if currentphase = 2 {
            bossPassiveAttackCooldown[1] += 20;
        }
        bossPassiveAttackDelay[1] = 0;
    }
	*/
}

#endregion

/* */
#region ///Passive Attack Code
    
	/*
	
    scr_Default_Attack_Settings();
    bullet_type = obj_Sorrow_Bullet;
    bullet_sprite = spr_Sorrow_Bullet;
    bullet_speed = bossbulletspeed * 0.9;
    bullet_power = bosspower * 1.5;
    bullet_direction = 90 + (-15 + random(30)) / bossaccuracy;
    bullet_lifespan = 600;
    bullet_size = 0.2;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;

if bossPassiveAttack[1] = 1 {
    if currentphase = 2 {
        bullet_count = 2;
        bullet_spread = 15 + irandom(15);
    }
    if champ = 8 { bullet_sprite = spr_Blood_Sorrow; }
    scr_Direction_Shoot();    
}
if bossPassiveAttack[1] = 2 {
    bullet_type = obj_Toxic_Sorrow_Bullet;
    bullet_sprite = spr_Toxic_Sorrow_Bullet;
    
    if currentphase = 2 {
        bullet_count = 2;
        bullet_spread = 15 + irandom(15);
    }
    scr_Direction_Shoot();
}
if bossPassiveAttack[1] = 3 {
    if currentphase = 2 {
        bullet_count = 3;
        bullet_spread = 10 + irandom(15);
    }
    scr_Direction_Shoot();    
}

bossPassiveAttack[1] = 0;
bossPassiveAttack[2] = 0;

*/

/* */

#endregion

#region ///Active Attack Prep

if bossActiveAttackDelay[1] <= 0 and bossActiveAttackCooldown[1] <= 0 and bossActiveAttackDuration[1] <= 0 {
    
	bossActiveAttack[1] = choose(1,3);	
	if champ = 1 {
		bossActiveAttack[1] = choose(1,4);	
	}
	if champ = 3 {
		bossActiveAttack[1] = choose(1,5);	
	}
	if champ = 8 {
		bossActiveAttack[1] = choose(2,3);
	}
		
	if bossActiveAttack[1] = 1 {
		bossActiveAttackDelay[1] = 25;
		bossActiveAttackDuration[1] = 5;
		bossActiveAttackCooldown[1] = 90 + (40 * irandom(1));
	}
		
    if bossActiveAttack[1] = 2 {
        bossActiveAttackDelay[1] = 0;
        bossPatternCount = 2;
        bossPatternCooldown = 25;
        bossPatternCooldownMax = 30;
        bossActiveAttackCooldown[1] = 145 + (40 * irandom(1));
		
		bossPatternCountMax = bossPatternCount;
		bossActiveAttackDuration[1] = -5 + bossPatternCooldownMax * bossPatternCount;
    }
	if bossActiveAttack[1] = 3 || bossActiveAttack[1] = 4 || bossActiveAttack[1] = 5 {
        bossActiveAttackDelay[1] = 0;
        bossPatternCount = 5;
        bossPatternCooldown = 0;
        bossPatternCooldownMax = 40;
		if currentphase = 2 and champ = 3 {
			
			bossPatternCount -= 3;
				
			/*
			bossPatternCooldown += 20;
			bossPatternCooldownMax += 20;
			bossPatternCount -= 5;
			if champ = 3 {
				bossPatternCount -= 2;
				bossPatternCooldown += 20;
				bossPatternCooldownMax += 20;
			}
			*/
		}
		if champ = 8 {
			bossPatternCount += 5;
			bossPatternCooldown = bossPatternCooldown / 2;
			bossPatternCooldownMax = bossPatternCooldownMax / 2;
		}
        bossActiveAttackCooldown[1] = 65 + (40 * irandom(1));
		
		if champ = 3 {
			bossActiveAttackCooldown[1] += 40;
		}
		
		tearCycle = 0;
		
		bossPatternCountMax = bossPatternCount;
		bossActiveAttackDuration[1] = -25 + bossPatternCooldownMax * bossPatternCount;
    }
}

if bossActiveAttackDuration[1] > 0 and (bossActiveAttack[1] = 1 || bossActiveAttack[1] = 2) {
    path_speed = bossmovespeed * 0.2;
	} else {
    path_speed = bossmovespeed * 1;
    }

#endregion

/* */
#region /// Active Attack Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Echolocation_Shot;
    bullet_sprite = spr_Echolocation_Shot;
    bullet_speed = bossbulletspeed * 1.4;
    bullet_power = bosspower;
    bullet_direction = (-10 + random(20)) / bossaccuracy;
    bullet_lifespan = 800;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;

if bossActiveAttackDelay[1] <= 0 {
        
    if bossActiveAttack[1] = 1 {
		scr_Boss_Stretch("Horizontal",0.15);
		
		bullet_count = 3;
        bullet_spread = 25;
		if champ >= 1 {
			bullet_count += 1;
			bullet_spread -= 4;
		}
        scr_Soul_Shoot();
		bossActiveAttack[1] = 0;
    }
  
}

#endregion

#region /// Active Attack Pattern Code

    //scr_Beam_Shoot_Properties();
	
	scr_Default_Attack_Settings();
    bullet_type = obj_Sorrow_Bullet;
    bullet_sprite = spr_Sorrow_Bullet;
    bullet_speed = bossbulletspeed * 0.8;
    bullet_power = bosspower * 1.5;
    bullet_direction = image_angle - 90 + (-5 + random(10)) / bossaccuracy;
    bullet_lifespan = 600;
    bullet_size = 0.2;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;
	
	bullet_direction += -10 + tearCycle * 5;
    
if bossActiveAttackDelay[1] <= 0 and bossPatternCooldown <= 0 and bossPatternCount > 0 {
    
	if bossActiveAttack[1] = 2 {
		bullet_type = obj_Echolocation_Shot;
	    bullet_sprite = spr_Echolocation_Shot;
	    bullet_speed = bossbulletspeed * 1.3;
	    bullet_power = bosspower;
	    bullet_direction = image_angle - 90 + (-5 + random(10)) / bossaccuracy;
	    bullet_lifespan = 800;
	    bullet_size = 1;
	    bullet_count = 1;
		bullet_spread = 20;
	    boss_radius = 0;
		
		scr_Boss_Stretch("Horizontal",0.15);
		
        if bossPatternCount = 2 {
            bullet_count = 4;
        }
        if bossPatternCount = 1 {
            bullet_count = 5;
			bullet_speed = bossbulletspeed * 1.15;
			bullet_lifespan = 600;
        }
        scr_Just_Shoot();
    }
	
	if bossActiveAttack[1] = 3 {
		scr_Boss_Stretch("Horizontal",0.05);
		
	    if currentphase = 2 {
	        bullet_count = 2;
	        bullet_spread = 40;
	    }
	    if champ = 8 { 
			bullet_sprite = spr_Blood_Sorrow; 
			bullet_speed = bossbulletspeed * 1.35;
		}
		if champ != 8 and currentphase != 1 {
		
			scr_Just_Shoot();    
		} else {
			bullet_direction = (-5 + random(10)) / bossaccuracy;
			scr_Soul_Shoot();	
		}
		
		bullet_count = 2;
		bullet_spread = 40;
		bullet_speed = bullet_speed * 0.66;
			
		if currentphase = 2 {
			bullet_count = 1;	
			bullet_spread = 0;
		}
		
		if champ != 8 and currentphase != 1 {
			scr_Just_Shoot();    
		} else {
			bullet_direction = (-5 + random(10)) / bossaccuracy;
			scr_Soul_Shoot();	
		} 
		
		tearCycle += 1;
	
		if tearCycle > 4 {
			tearCycle = 0;
		}
	}
	if bossActiveAttack[1] = 4 {
		scr_Boss_Stretch("Horizontal",0.05);
		
	    bullet_type = obj_Toxic_Sorrow_Bullet;
	    bullet_sprite = spr_Toxic_Sorrow_Bullet;
		
		if currentphase = 2 {
	        bullet_count = 2;
	        bullet_spread = 40;
	    }

		
	    scr_Just_Shoot();    
		
		bullet_count = 2;
		bullet_spread = 40;
		bullet_speed = bullet_speed * 0.66;
			
		if currentphase = 2 {
			bullet_count = 1;	
			bullet_spread = 0;
		}
		
		
		scr_Just_Shoot();    
		
		tearCycle += 1;
	
		if tearCycle > 4 {
			tearCycle = 0;
		}
	}
	if bossActiveAttack[1] = 5 {
		
		scr_Boss_Stretch("Horizontal",0.15);
			
		if currentphase = 1 {
			if currentphase = 2 {
		        bullet_count = 2;
		        bullet_spread = 40;
		    }
			
		    scr_Just_Shoot();      
		
			bullet_count = 2;
			bullet_spread = 40;
			bullet_speed = bullet_speed * 0.66;
			
			if currentphase = 2 {
				bullet_count = 1;	
				bullet_spread = 0;
			}
		
			scr_Just_Shoot();  
			
			bullet_speed = bossbulletspeed * 1;
			bullet_count = 5;
			bullet_spread = 30;
			bullet_size = 1;
			bullet_type = obj_Direction_Bullet;
			bullet_sprite = spr_Water_Drop_Bullet;
			scr_Just_Shoot();     
		}
		if currentphase = 2 {
	        bullet_count = 5;
	        bullet_spread = 30;
			bullet_speed = bossbulletspeed * 1.5;
			scr_Just_Shoot();    
			bullet_count = 10;
			bullet_spread = 15;
			bullet_size = 1;
			bullet_speed = bossbulletspeed * 1.1;
			bullet_type = obj_Direction_Bullet;
			bullet_sprite = spr_Water_Drop_Bullet;
			scr_Just_Shoot();     
	    }
		
		tearCycle += 1;
	
		if tearCycle > 4 {
			tearCycle = 0;
		}
	} 
    
    bossPatternCount -= 1;
    bossPatternCooldown += bossPatternCooldownMax;
}

#endregion

/* */
#region /// Active Attack Post
   
if bossActiveAttackDuration[1] <= 0 { 
    bossActiveAttack[1] = 0;
}

#endregion

#region /// Boss Sprite Code

scr_Boss_Size_Lerp(0.15);

//if champ = 0 {
	if bossActiveAttack[1] = 1 || bossActiveAttack[1] = 2 { // Sonic Attack
		if bossActiveAttackDuration[1] > 0 {
			sprite_index = spr_Sorrow_Attack;
		} else {
			sprite_index = spr_Growing_Sorrows;	
		}
	} else { // Default
		sprite_index = spr_Growing_Sorrows;		
	}
//}

#endregion
/* */
/*  */
scr_Boss_Soul_Hitbox(sprite_index);