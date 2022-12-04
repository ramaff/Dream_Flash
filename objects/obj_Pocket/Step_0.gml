/// @description  Boss Step Event

scr_Boss_Step();

scr_Room_Loop_Everywhere();

/*
if champ = 2 {
	if bossReaction < 1 {
		bossReaction = 1;	
	}
}
*/

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
        bossPassiveAttack[1] = 0;
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
    bullet_power = bosspower * 0.1;
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
    //scr_Just_Shoot();  
}

bossPassiveAttack[1] = 0;
bossPassiveAttack[2] = 0;

/* */
///Active Attack Prep

if bossActiveAttackDelay[1] <= 0 and bossActiveAttackCooldown[1] <= 0 and bossActiveAttackDuration[1] <= 0 {
    if champ = 0 || champ = 1 || champ = 2 || champ = 3 {
        if currentphase = 1 {
            bossActiveAttack[1] = choose(1,2,3);
            bossActiveAttackDelay[1] = 10;
        }
		if bossActiveAttack[1] = 2 and champ = 2 {
			bossActiveAttack[1] = 5;	
		}
        speed = bossmovespeed * (0.05 + random(0.1));
        direction = scr_Soul_Point();
        friction = 0;
        if currentphase = 2 {
            bossActiveAttack[1] = choose(4);
            bossActiveAttackDelay[1] = 10;
            speed = bossmovespeed * (0.1 + random(0.15));
        }
        
		/*
        if bossActiveAttack[1] = 1  {
			bossActiveAttackDelay[1] = 5;  
			scr_Boss_Dash_Setup();
	        bossPatternCount = 240;
	        bossPatternCountMax = bossPatternCount;
	        bossPatternCooldown = 1;
	        bossPatternCooldownMax = 1;
	        bossActiveAttackDuration[1] = 5 + bossattackspeed * bossPatternCooldownMax * bossPatternCount;
	        bossActiveAttackCooldown[1] = 40 + (40 * irandom(1));
		
			var bossdirection = scr_Soul_Point();
        
			var mspeed = bossmovespeed * 1.65 * (1 + (global.roomSizeX / 2048));
		
			if speed > mspeed {
				speed = mspeed;
			}
		
			bossMaxDashSpeed = mspeed;
			bossDashSpeed = 0;
        }
		*/
		if bossActiveAttack[1] = 1  {
			image_index = 0;
            bossActiveAttackCooldown[1] = (120 + random(30));
			
	        bossPatternCount = 3;
			bossPatternCountMax = 3;
			
			bossActiveAttackDelay[1] = 0;
	        bossPatternCooldown = 15;
			bossPatternCooldownMax = 15;
			
	        bossActiveAttackDuration[1] = 60 + bossPatternCooldownMax * bossPatternCount;
        }
        if bossActiveAttack[1] = 2  {
			image_index = 0;
            bossActiveAttackCooldown[1] = (120 + random(30));
			
	        bossPatternCount = 3;
			bossPatternCountMax = 3;
			
			bossActiveAttackDelay[1] = 0;
	        bossPatternCooldown = 45;
			bossPatternCooldownMax = 45;
			
	        bossActiveAttackDuration[1] = 20 + bossPatternCooldownMax * bossPatternCount;
        }
        if bossActiveAttack[1] = 3 {
			image_index = 0;
            bossActiveAttackCooldown[1] = (120 + random(30));
			
	        bossPatternCount = 3;
			bossPatternCountMax = 3;
			
			bossActiveAttackDelay[1] = 0;
	        bossPatternCooldown = 15;
			bossPatternCooldownMax = 15;
			
	        bossActiveAttackDuration[1] = 30 + bossPatternCooldownMax * bossPatternCount;
        }
        if bossActiveAttack[1] = 4  {
            bossActiveAttackDelay[1] = 5;  
			scr_Boss_Dash_Setup();
	        bossPatternCount = 240;
	        bossPatternCountMax = bossPatternCount;
	        bossPatternCooldown = 1;
	        bossPatternCooldownMax = 1;
	        bossActiveAttackDuration[1] = 5 + bossattackspeed * bossPatternCooldownMax * bossPatternCount;
	        bossActiveAttackCooldown[1] = 40 + (40 * irandom(1));
		
			var bossdirection = scr_Soul_Point();
        
			var mspeed = bossmovespeed * 1.65 * (1 + (global.roomSizeX / 2048));
		
			if speed > mspeed {
				speed = mspeed;
			}
		
			bossMaxDashSpeed = mspeed;
			bossDashSpeed = 0;
        }
        if bossActiveAttack[1] = 5  {
			image_index = 0;
            bossActiveAttackCooldown[1] = (120 + random(30));
			
	        bossPatternCount = 9;
			bossPatternCountMax = 9;
			
			bossActiveAttackDelay[1] = 0;
	        bossPatternCooldown = 5;
			bossPatternCooldownMax = 5;
			
			bossPatternDirection = 45;
			
	        bossActiveAttackDuration[1] = 20 + bossPatternCooldownMax * bossPatternCount;
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
    if bossActiveAttack[1] = 3 {
		scr_Boss_Stretch("Horizontal", 0.3);
		
		minion_count = 3;
		minion_type = obj_Mini_Pocket;
		if champ = 1 {
	    minion_type = obj_Popcorn;
		}
		if champ = 2 {
	    minion_type = obj_Coin;
		}
		if champ = 3 {
	    minion_type = obj_Trash_Apple;
		}
	    minion_health = bossmaxhealth / 20;
	    scr_Minion_Spawn();
		
		bossActiveAttack[1] = -3;
    }
	*/
    
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
        
	/*
    if bossActiveAttack[1] = 1 {
		if (bossPatternCount mod 15 = 0) {
			
			scr_Boss_Stretch("Horizontal", 0.2);
			
			bullet_speed = bossbulletspeed * 1.25;
			
			bullet_type = obj_Dormant_Bullet;
	        bullet_sprite = spr_Glowy_Purple_Shot;
			
			if champ = 1 {
	        bullet_type = obj_Pop_Bullet;
	        bullet_sprite = spr_Orange_Shot;
			}
			
			if champ = 2 {
				bullet_sprite = spr_Glowy_Yellow_Shot;
				bullet_direction = random(360);
			}
			if champ = 3 {
				//bullet_sprite = spr_Glowy_Dark_Green_Shot
				bullet_type = obj_Poison_Pool;
			    bullet_sprite = spr_Poison_Pool;
			    bullet_speed = bossbulletspeed * 0;
			    bullet_power = bosspower * 0.15;
			}
       
			bullet_count = 1;
			
			bullet_lifespan = 240;
			
			if champ = 1 {
				bullet_lifespan = 60 + bossPatternCount * 0.75;
			}
			
			bullet_direction = bossDashDirection + 180;
			scr_Just_Shoot();
			
			whit = 0;
		}
		
        scr_Boss_Dash_Movement(15,12);
		
		speed = bossDashSpeed;
        direction = bossDashDirection;
		
    }
	*/
	
	if bossActiveAttack[1] = 1 {
		scr_Boss_Stretch("Vertical", 0.3);
		
        bullet_speed = bossbulletspeed * 1.5;
		bullet_power = bosspower * 2;
		
		bullet_type = obj_Portal_Triple_Shooter;
		bullet_sprite = spr_Portal_Shot;
		bullet_lifespan = 240;
		
		if champ = 1 {
			bullet_type = obj_Portal_Vomit_Shooter;	
		}
		if champ = 2 {
			bullet_type = obj_Portal_Line_Shooter;	
			bullet_lifespan = 120;
		}
		
		bullet_count = 1;
		bullet_spread = 360 / bullet_count;
		
		scr_Just_Shoot();
    }
	
	if bossActiveAttack[1] = 2 {
		
        scr_Boss_Stretch("Vertical", 0.4);
		
		bullet_speed = bossbulletspeed * 1;
		bullet_power = bosspower * 2;
		bullet_type = obj_Portal_Spinner;
        bullet_sprite = spr_Portal_Shot;
		bullet_count = 1;
		bullet_direction = (-120 + random(240)) / bossaccuracy;
		
		if champ = 1 {
			bullet_count = 2;
			bullet_spread = 120;
		}
		
		
		scr_Soul_Shoot();
		
		/*
		
        bullet_speed = bossbulletspeed * 2;
		bullet_type = obj_Basic_Bullet;
        bullet_sprite = spr_Glowy_Purple_Shot;
		bullet_count = 3 + (bossPatternCountMax - bossPatternCount);
		bullet_spread = 20;
		
		if champ = 1 {
	        bullet_type = obj_Speed_Up_Direction_Bullet;
	        bullet_sprite = spr_Fire_Shot;
			bullet_speed = bossbulletspeed * 1.05;
			bullet_count = 3;
			bullet_spread = 33;
		}
		if champ = 2 {
			bullet_sprite = spr_Glowy_Yellow_Shot	
			bullet_count = 4;
			bullet_spread = 25;
		}
		
        scr_Soul_Shoot();
		*/
		
    }
	
	if bossActiveAttack[1] = 3 {
		scr_Boss_Stretch("Vertical", 0.3);
		
        bullet_speed = bossbulletspeed * 1.5;
		
		bullet_type = obj_Portal_Portal;
		if champ = 1 {
			bullet_type = obj_Popcorn_Portal;	
		}
		if champ = 2 {
			bullet_type = obj_Trash_Portal;	
		}
		bullet_sprite = spr_Portal_Shot;
		bullet_lifespan = 120;
		
		bullet_count = 1;
		bullet_spread = 360 / bullet_count;
		
		scr_Just_Shoot();
    }
	
	if bossActiveAttack[1] = 4 {
		
		if bossPatternCountMax - bossPatternCount = 0 {
		
			scr_Boss_Stretch("Horizontal", 0.2);
		
			bullet_speed = bossbulletspeed * 1.5;
		
			bullet_type = obj_Portal_Portal;
			if champ = 1 {
				bullet_type = obj_Popcorn_Portal;	
			}
			if champ = 2 {
				bullet_type = obj_Trash_Portal;	
			}
			bullet_sprite = spr_Portal_Shot;
			bullet_lifespan = 120;
		
			bullet_count = 1;
			bullet_spread = 360 / bullet_count;
		
		scr_Just_Shoot();
		
		}
		
		if (bossPatternCount mod 15 = 0) {
			
			scr_Boss_Stretch("Horizontal", 0.2);
			
			bullet_speed = bossbulletspeed * 1.25;
			
	        bullet_type = obj_Dormant_Bullet;
	        bullet_sprite = spr_Glowy_Purple_Shot;
			
			if champ = 1 {
			    bullet_type = obj_Pop_Bullet;
			    bullet_sprite = spr_Orange_Shot;
			}
			if champ = 2 {
				//bullet_sprite = spr_Glowy_Dark_Green_Shot
				bullet_type = obj_Poison_Pool;
			    bullet_sprite = spr_Poison_Pool;
			    bullet_speed = bossbulletspeed * 0;
			    bullet_power = bosspower * 0.15;
			}
       
			bullet_count = 1;
			
			bullet_lifespan = 240;
			
			if champ = 1 {
				bullet_lifespan = 60 + bossPatternCount * 0.75;
			}
			
			bullet_direction = bossDashDirection + 180;
			scr_Just_Shoot();
			
			whit = 0;
		}
		
        scr_Boss_Dash_Movement(15,12);
		
		speed = bossDashSpeed;
        direction = bossDashDirection;
		
    }
	
	if bossActiveAttack[1] = 5 {
		
        scr_Boss_Stretch("Vertical", 0.2);
		
        bullet_speed = bossbulletspeed * 2;
		bullet_type = obj_Basic_Bullet;
        bullet_sprite = spr_Glowy_Dark_Green_Shot;
		bullet_count = 1;
		bullet_spread = 20;
		
		bullet_direction = bossPatternDirection;
		
        scr_Soul_Shoot();
		
		bullet_direction -= bossPatternDirection * 2;
		
		scr_Soul_Shoot();
		
		bossPatternDirection -= 10;
    }
	
	bossPatternCount -= 1;
    bossPatternCooldown += bossPatternCooldownMax;
    
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

scr_Boss_Size_Lerp_Dir(0.15);

var sp = spr_Pocket;
var spatt = spr_Pocket_Attack;
var spdump = spr_Pocket_Dump;


if bossActiveAttack[1] = 1 || bossActiveAttack[1] = 2 || bossActiveAttack[1] = -2 || bossActiveAttack[1] = 3 || bossActiveAttack[1] = -3 || bossActiveAttack[1] = 5 {
	sprite_index = spatt
	if image_index > 3 and bossActiveAttackDuration[1] >= 10 {
		image_index = 3;	
	}
	image_speed = 1;
} else if bossActiveAttack[1] = 4 || bossActiveAttack[1] = -4 {
	sprite_index = spdump;
	if image_index > 3 and bossActiveAttackDuration[1] >= 10 {
		image_index = 3;	
	}
	image_speed = 1;
} else { // Default
	sprite_index = sp
}

   
#endregion

scr_Boss_Soul_Hitbox(sprite_index);