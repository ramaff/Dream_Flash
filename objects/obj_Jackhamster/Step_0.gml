/// @description  Boss Step Event

scr_Boss_Step();

//image_angle = direction;

if state = states.phasing {
	exit;	
}

#region ///Passive Attack Prep

/*
if champ = 1 {
	speed = bossmovespeed * 0.175;
	direction = point_direction(x,y,obj_Soul_Parent.x,obj_Soul_Parent.y);	
}
*/

if bossPassiveAttackDelay[1] <= 0 and bossPassiveAttackCooldown[1] <= 0 {
	
    if champ = 1 {
	/*	
    bossPassiveAttack[1] = 1;
    bossPassiveAttackCooldown[1] = 1 + 12 / (1 + speed);
    bossPassiveAttackDelay[1] = 2;
	*/
	}
    
}

#endregion

#region ///Passive Attack Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Poison_Pool;
    bullet_sprite = spr_Poison_Pool;
    bullet_speed = bossbulletspeed * 0;
    bullet_power = bosspower * 0.15;
    bullet_direction = (-180 + random(360)) / bossaccuracy;
    bullet_lifespan = 75 + irandom(15);
    bullet_size = 0.65 + random(0.15);
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;
	bullet_image_speed = 0.2;

if bossPassiveAttack[1] = 1 {
	//bullet_blend = c_lime;
    scr_Just_Shoot();    
}

bossPassiveAttack[1] = 0;
bossPassiveAttack[2] = 0;

#endregion


#region ///Active Attack Prep///
////////////////////////

if bossActiveAttackDelay[1] <= 0 and bossActiveAttackCooldown[1] <= 0 and bossActiveAttackDuration[1] <= 0 {
    if currentphase = 1 {
        bossActiveAttack[1] = choose(1,2);
    }
    if currentphase = 2 {
        bossActiveAttack[1] = choose(3,4);
		if champ = 1 {
			bossActiveAttack[1] = choose(5,4);
		}
    }
	//bossActiveAttack[1] = 1;
    bossActiveAttackDelay[1] = 10;   
	
	state = states.normal;
    
    if bossActiveAttack[1] = 1  {
		jumpDirection = "Up";
		jumpHeight = 0;
		
		//bossActiveAttackDelay[champ] = 10;
		
        scr_Boss_Dash_Setup();
        bossPatternCount = 30;
        bossPatternCountMax = bossPatternCount;
        bossPatternCooldown = 10;
        bossPatternCooldownMax = 1;
		
		var bossdirection = scr_Soul_Point();
        bossDashDirection = bossdirection;
		
		scr_Hop_Distance_Calc(2.5 * bossmovespeed);
		
		bossDashSpeed = 0;
		state = states.jumping;
		ghit = 1;
		
		bossActiveAttackDuration[1] = 5 + bossattackspeed * bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 15;
    }
    if bossActiveAttack[1] = 2  {
		bossHopCount = 5;
		
		jumpDirection = "Up";
		jumpHeight = 0;
		
		//bossActiveAttackDelay[champ] = 10;
		
        scr_Boss_Dash_Setup();
        bossPatternCount = 60;
        bossPatternCountMax = bossPatternCount;
        bossPatternCooldown = 15;
        bossPatternCooldownMax = 1;
		
		var bossdirection = scr_Soul_Point();
        bossDashDirection = bossdirection;
		
		scr_Hop_Distance_Calc(3.5 * bossmovespeed);
		
		bossPatternDirection = random(360);
		
		bossDashSpeed = 0;
		state = states.jumping;
		
		bossActiveAttackDuration[1] = 0 + bossattackspeed * (bossPatternCooldownMax * bossPatternCount + (15 * bossHopCount));
        bossActiveAttackCooldown[1] = 30 + random(15);
        
    }
    if bossActiveAttack[1] = 3  {
		bossHopCount = 5;
		
		jumpDirection = "Up";
		jumpHeight = 0;
		
		//bossActiveAttackDelay[champ] = 10;
		
        scr_Boss_Dash_Setup();
        bossPatternCount = 15;
        bossPatternCountMax = bossPatternCount;
        bossPatternCooldown = 15;
        bossPatternCooldownMax = 1;
		
		var bossdirection = scr_Soul_Point();
        bossDashDirection = bossdirection;
		
		scr_Hop_Distance_Calc(3.5 * bossmovespeed);
		
		bossPatternDirection = random(360);
		
		bossDashSpeed = 0;
		state = states.jumping;
		
		bossActiveAttackDuration[1] = 0 + bossattackspeed * (bossPatternCooldownMax * bossPatternCount + (15 * bossHopCount));
        bossActiveAttackCooldown[1] = 30 + random(15);
    }
    if bossActiveAttack[1] = 4 {
		bossActiveAttackDelay[1] = 15;
		jumpDirection = "Up";
		jumpHeight = 0;
		
        scr_Boss_Dash_Setup();
        bossPatternCount = 100;
        bossPatternCountMax = bossPatternCount;
        bossPatternCooldown = 10;
        bossPatternCooldownMax = 1;
		
		var bossdirection = scr_Soul_Point();
        bossDashDirection = bossdirection;
		
		scr_Leap_Distance_Calc(1 * bossmovespeed,30);
		
		bossDashSpeed = 0;
		state = states.leaping;
		
		bossActiveAttackDuration[1] = 15 + bossattackspeed * bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 60 + random(15);
        
    }
    if bossActiveAttack[1] = 5  {
		bossHopCount = 10;
		
		jumpDirection = "Up";
		jumpHeight = 0;
		
		//bossActiveAttackDelay[champ] = 10;
		
        scr_Boss_Dash_Setup();
        bossPatternCount = 15;
        bossPatternCountMax = bossPatternCount;
        bossPatternCooldown = 15;
        bossPatternCooldownMax = 1;
		
		var bossdirection = scr_Soul_Point();
        bossDashDirection = bossdirection;
		
		scr_Hop_Distance_Calc(0.5 * bossmovespeed);
		
		bossPatternDirection = random(360);
		
		bossDashSpeed = 0;
		state = states.jumping;
		
		bossActiveAttackDuration[1] = 0 + bossattackspeed * (bossPatternCooldownMax * bossPatternCount + (15 * bossHopCount));
        bossActiveAttackCooldown[1] = 30 + random(15);
    }
    if bossActiveAttack[1] = 6  {
        scr_Boss_Dash_Setup();
        bossPatternCount = 40;
        bossPatternCountMax = bossPatternCount;
        bossPatternCooldown = 1;
        bossPatternCooldownMax = 1;
        bossActiveAttackDuration[1] = 15 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 60 + (40 * irandom(1))
		
		var bossdirection = scr_Soul_Point();
        bossMaxDashSpeed = 7.5 * bossmovespeed;
		bossDashSpeed = 0;
    }
}

#endregion


#region /// Active Attack Code ///
//////////////////////////

    scr_Default_Attack_Settings();
    bullet_type = obj_Fright_Bullet;
    bullet_sprite = spr_Spectre_Shot;
    bullet_speed = bossbulletspeed;
    bullet_power = bosspower * 1;
    bullet_direction = (-15 + random(30)) / bossaccuracy;
    bullet_lifespan = 400;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;

if bossActiveAttackDelay[1] <= 0 {
        
    
}

#endregion

#region /// Active Attack Pattern Code
    
if bossActiveAttackDelay[1] <= 0 and bossPatternCooldown <= 0 and bossPatternCount > 0 {
    
	
	if bossActiveAttack[1] = 1 {
		
		if bossPatternCountMax - bossPatternCount = 0 {
			scr_Boss_Stretch("Horizontal", 0.3);
		}
		
		scr_Boss_Dash_Movement(4,2);
		
		speed = bossDashSpeed;
        direction = bossDashDirection;
		
		scr_Jump_Movement(3);
		
		//if (ghit = 1 and state = states.normal) {
		
		if bossPatternCount = 1 {
			scr_Boss_Stretch("Horizontal", 0.75);
			scr_Screen_Shake(3,5);
			
			bullet_speed = bossbulletspeed * (1.75 + random(0.35));
	        bullet_type = obj_Basic_Bullet;
	        bullet_sprite = spr_Glowy_Enemy_Shot;
       
			if champ = 0 {
				bullet_count = 6;
				bullet_direction = random(360);
				bullet_spread = 360 / bullet_count;
		        scr_Just_Shoot();
			}
			if champ = 1 {
				bullet_count = 4;
				bullet_direction = random(360);
				bullet_spread = 360 / bullet_count;
		        scr_Just_Shoot();
				
				repeat(2) {
					bullet_speed += bossbulletspeed * 0.5;
					scr_Just_Shoot();
				}
				
			}
			ghit = 0;
		}
		
    }
	
    if bossActiveAttack[1] = 2 {
		//if bossSizeY > 0.75 {
			//scr_Boss_Stretch("Horizontal",0.05);
		//}
		
		if bossPatternCountMax - bossPatternCount = 0 and bossHopCount = 5 {
			scr_Boss_Stretch("Horizontal", 0.3);
		}
		
		scr_Boss_Dash_Movement(4,2);
		
		speed = bossDashSpeed;
        direction = bossDashDirection;
		
		scr_Jump_Movement(3);
		
		//if (ghit = 1 and state = states.normal) {
		
		if bossPatternCount = 1 {
			if bossHopCount > 1 and bossPatternCount <= 1 {
				
				if bossHopCount = 5 {
					scr_Screen_Shake(3,5);	
				}
				bossHopCount--;
				bossPatternCountMax = 15;
				bossPatternCount = bossPatternCountMax;
				jumpDirection = "Up";
				jumpHeight = 0;
			
				scr_Boss_Dash_Setup();
				var bossdirection = scr_Soul_Point();
			    bossDashDirection = bossdirection;
		
				scr_Hop_Distance_Calc(2 * bossmovespeed);
		
				bossDashSpeed = 0;
				state = states.jumping;
			}
			if bossPatternCount < 1 and bossHopCount <= 1 {
				speed = 0;
			}
			
			scr_Boss_Stretch("Horizontal", 0.25);
			
			bullet_speed = bossbulletspeed * 1.5;
	        bullet_type = obj_Basic_Bullet;
	        bullet_sprite = spr_Glowy_Enemy_Shot;
       
			if champ = 1 {
				bullet_count = 3;
				bullet_direction = bossPatternDirection;
				bullet_spread = 360 / bullet_count;
				repeat(3) {
					scr_Just_Shoot();
					bullet_speed += bossbulletspeed * 0.5;
				}
			} else {
				bullet_speed = bossbulletspeed * (1.8 + random(0.35));
				bullet_count = 4;
				bullet_direction = random(360);
				bullet_spread = 360 / bullet_count;
				scr_Just_Shoot();
				
			}
			bossPatternDirection += 15;

			
		}
    }
	
	if bossActiveAttack[1] = 3 {
		
		scr_Boss_Dash_Movement(4,2);
		
		speed = bossDashSpeed;
        direction = bossDashDirection;
		
		scr_Jump_Movement(3);
		
		//if (ghit = 1 and state = states.normal) {
		
		if bossPatternCount = 1 {
			if bossHopCount > 1 and bossPatternCount <= 1 {
				
				if bossHopCount = 5 {
					scr_Screen_Shake(3,5);	
				}
				bossHopCount--;
				bossPatternCountMax = 15;
				bossPatternCount = bossPatternCountMax;
				jumpDirection = "Up";
				jumpHeight = 0;
			
				scr_Boss_Dash_Setup();
				var bossdirection = scr_Soul_Point();
			    bossDashDirection = bossdirection;
		
				scr_Hop_Distance_Calc(2 * bossmovespeed);
		
				bossDashSpeed = 0;
				state = states.jumping;
			}
			if bossPatternCount < 1 and bossHopCount <= 1 {
				speed = 0;
			}
			
			scr_Boss_Stretch("Horizontal", 0.25);
			
			bullet_speed = bossbulletspeed * 1.5;
	        bullet_type = obj_Basic_Bullet;
	        bullet_sprite = spr_Glowy_Enemy_Shot;
       
			if champ = 1 {
				bullet_count = 3;
				bullet_direction = bossPatternDirection;
				bullet_spread = 360 / bullet_count;
				repeat(3) {
					scr_Just_Shoot();
					bullet_speed += bossbulletspeed * 0.5;
				}
			} else {
				bullet_speed = bossbulletspeed * (1.8 + random(0.35));
				bullet_count = 4;
				bullet_direction = random(360);
				bullet_spread = 360 / bullet_count;
				scr_Just_Shoot();
				
			}
			bossPatternDirection += 15;

			
		}
		
    }
	
	if bossActiveAttack[1] = 4 {
		
		if bossPatternCountMax - bossPatternCount = 0 {
			scr_Boss_Stretch("Horizontal", 0.3);
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
			bullet_count = 10;
			bullet_speed = bossbulletspeed * 2.35;
			if champ = 1 {
				bullet_count = 15;	
			}
	        bullet_spread = 360 / bullet_count;
	        scr_Just_Shoot();
			bullet_speed = bossbulletspeed * 1.9;
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
		
		scr_Boss_Dash_Movement(4,2);
		
		speed = bossDashSpeed;
        direction = bossDashDirection;
		
		scr_Jump_Movement(3);
		
		//if (ghit = 1 and state = states.normal) {
		
		if bossPatternCount = 1 {
			if bossHopCount > 1 and bossPatternCount <= 1 {
				
				if bossHopCount = 10 {
					scr_Screen_Shake(3,5);	
				}
				bossHopCount--;
				bossPatternCountMax = 15;
				bossPatternCount = bossPatternCountMax;
				jumpDirection = "Up";
				jumpHeight = 0;
			
				scr_Boss_Dash_Setup();
				var bossdirection = scr_Soul_Point();
			    bossDashDirection = bossdirection;
		
				scr_Hop_Distance_Calc(0.5 * bossmovespeed);
		
				bossDashSpeed = 0;
				state = states.jumping;
			}
			if bossPatternCount < 1 and bossHopCount <= 1 {
				speed = 0;
			}
			
			scr_Boss_Stretch("Horizontal", 0.25);
			
			bullet_speed = bossbulletspeed * 1.5;
	        bullet_type = obj_Basic_Bullet;
	        bullet_sprite = spr_Glowy_Enemy_Shot;
       
			if champ = 1 {
				bullet_count = 3;
				bullet_direction = bossPatternDirection;
				bullet_spread = 360 / bullet_count;
				repeat(3) {
					scr_Just_Shoot();
					bullet_speed += bossbulletspeed * 0.5;
				}
			} 
			bossPatternDirection += 15;

			
		}
		
    }
    
    bossPatternCount -= 1;
    bossPatternCooldown += bossPatternCooldownMax;
}

#endregion


#region /// Active Attack Post ///
//////////////////////////
   
if state = states.jumping {
	if jumpHeight > 10 || bossPatternCooldown > 0 {
		//sprite_index = spr_Jello_Hop;
	} else if jumpHeight <= 10 {
		if jumpDirection = "Down" {
			state = states.normal;
			//ghit = 1;
		}
		if bossActiveAttackDuration[champ] <= 0 {
			
		}
	}
}
   
if bossActiveAttackDuration[1] <= 0 { 
	
	state = states.normal;
	jumpDirection = "None"
	jumpHeight = 0;
	
    bossActiveAttack[1] = 0;
}

#endregion

#region /// Boss Sprite Code

scr_Boss_Size_Lerp(0.15);

if bossActiveAttack[1] = 1 || bossActiveAttack[1] = -1 /* and (bossActiveAttackDelay[1] > 0)*/ {
	//sprite_index = spr_Gutsy_Attack;
	image_speed = 1;
} else if bossActiveAttack[1] = 2 || bossActiveAttack[1] = 3 || bossActiveAttack[1] = 5 {
	sprite_index = spr_Jackhamster_Flip;
	if image_index > 9 and bossPatternCount > 1 {
		image_index = 9;	
	}
	image_speed = 1;
} else if bossActiveAttack[1] = 4 {
	//sprite_index = spr_Gutsy_Attack;
	if image_index > 3 and bossPatternCount > 1 {
		image_index = 3;	
	}
	image_speed = 1;
}else { // Default
	sprite_index = spr_Jackhamster;	
}

#endregion

scr_Boss_Soul_Hitbox(sprite_index);
