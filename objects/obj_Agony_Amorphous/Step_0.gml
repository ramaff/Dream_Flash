/// @description  Boss Step Event

scr_Boss_Step();

///Active Attack Prep

if bossActiveAttackDelay[champ] <= 0 and bossActiveAttackCooldown[champ] <= 0 and bossActiveAttackDuration[champ] <= 0 {
    bossActiveAttack[champ] = choose(1,2,4);
    if currentphase = 2 {
        bossActiveAttack[champ] = choose(3,3,4);
    }
    if bossActiveAttack[champ] = 1 {
		image_index = 0;
        bossActiveAttackDelay[champ] = 10;
        bossPatternCount = 7 + irandom(1);
        bossPatternCooldown = 15;
        bossPatternCooldownMax = 15;
		
        bossActiveAttackCooldown[champ] = 90 + random(30);
		
		bossPatternCountMax = bossPatternCount;
		bossActiveAttackDuration[champ] = 15 + bossPatternCooldownMax * bossPatternCount;
    }
    if bossActiveAttack[champ] = 2 {
		image_index = 0;
        bossActiveAttackDelay[champ] = 10;
        bossActiveAttackDuration[champ] = 50;
        bossActiveAttackCooldown[champ] = 105 + random(30);
    }
    if bossActiveAttack[champ] = 4 {
		image_index = 0;
        bossActiveAttackDelay[champ] = 10;
        bossActiveAttackDuration[champ] = 50;
        bossActiveAttackCooldown[champ] = 150 + random(30);
    }
    if bossActiveAttack[champ] = 3 {
		//bossActiveAttackDelay[champ] = 15;
		
        jumpDirection = "Up";
		jumpHeight = 0;
		
        scr_Boss_Dash_Setup();
		bossHopCount = 2;
        bossPatternCount = 75;
        bossPatternCountMax = 60;
        bossPatternCooldown = 1;
        bossPatternCooldownMax = 1;
		image_index = 0;
		
		var bossdirection = scr_Soul_Point();
        bossDashDirection = bossdirection;
		
		scr_Hop_Distance_Calc(6 * bossmovespeed);
		
		bossDashSpeed = 0;
		state = states.jumping;
		
		bossActiveAttackDuration[champ] = 15 + bossattackspeed * bossPatternCooldownMax * bossPatternCount * bossHopCount;
        bossActiveAttackCooldown[champ] = 30 + random(15);
    }
}


/// Active Attack Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Jam_Ball;
    bullet_sprite = spr_Jam_Ball;
    bullet_speed = bossbulletspeed * 1.5;
    bullet_power = bosspower * 1.5;
    bullet_direction = (-5 + random(10)) / bossaccuracy;
    bullet_lifespan = 400;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    bullet_image_speed = 0.5;
    boss_radius = 0;
    
    if champ = 1 {
        bullet_sprite = spr_Spike_Lob;
        bullet_type = obj_Bounce_Direction_Bullet;
    }
    if champ = 2 {
        bullet_power = bosspower * 2;
        bullet_type = obj_Cross_Split_Bullet;
        bullet_sprite = spr_Big_Cross_Split_Shot;
        bullet_lifespan = 150 + random(75);
    }

if bossActiveAttackDelay[champ] <= 0 {
        
    if bossActiveAttack[champ] = 2 {
		scr_Boss_Stretch("Vertical",0.3);
		
		bullet_direction = random(360);
		if champ = 0 {
			bullet_size = 0.85;
	        bullet_count = 4; 
		}
		if champ = 1 {
			bullet_count = 10;
			bullet_type = obj_Direction_Bullet;
			bullet_speed = bossbulletspeed * 1.9;
		}
		if champ = 2 {
			bullet_count = 8;
		}
		bullet_spread = 360 / bullet_count;
        scr_Just_Shoot();
		if champ = 0 {
			bullet_count = 8;
			bullet_type = obj_Lob_Bullet;
			bullet_sprite = spr_Lob_Shot;
			bullet_speed = bossbulletspeed * 1.25;
			bullet_spread = 360 / bullet_count;
			scr_Just_Shoot();
		}
		if champ = 1 {
			bullet_direction += 180 / bullet_count;
			bullet_speed = bossbulletspeed * 1.3;
			scr_Just_Shoot();
		}
        //direction = scr_Soul_Point();
		//speed = 0.03 * bossmovespeed;
		bossActiveAttack[champ] = 0;
	}
    if bossActiveAttack[champ] = 4 {
		scr_Boss_Stretch("Vertical",0.3);
		
        minion_count = 3;
        minion_type = obj_Jumpy_Slime;
        if champ = 1 {
            minion_type = obj_Spike_Slime;
        }
        if champ = 2 {
            minion_type = obj_Toxic_Slime;
        }
        minion_health = bossmaxhealth / 10;
        minion_defense = 1
        scr_Minion_Spawn();
        //move_towards_point(instance_nearest(x,y,obj_Soul).x,instance_nearest(x,y,obj_Soul).y, 0.03 * bossmovespeed);
    
		bossActiveAttack[champ] = 0;
	}
    //if bossActiveAttack[champ] = 4 {
    //    var bossdirection = scr_Soul_Point();
    //    speed = 7 * bossmovespeed;
    //    friction = 0.14 * bossmovespeed;
    //    direction = bossdirection;
    //} 
    //if bossActiveAttack[champ] != 4 {
    //    bossActiveAttack[champ] = 0;
    //}
}

/// Active Attack Pattern Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Lob_Bullet;
    bullet_sprite = spr_Lob_Shot;
    bullet_speed = bossbulletspeed * 1.5;
    bullet_power = bosspower * 1.5;
    bullet_direction = (-15 + random(30)) / bossaccuracy;
    bullet_lifespan = 300;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    bullet_image_speed = 0.5;
    boss_radius = 0;
    
    if champ = 1 {
        bullet_sprite = spr_Spike_Lob;
        bullet_type = obj_Bounce_Direction_Bullet;
    }
    if champ = 2 {
        bullet_power = bosspower * 2;
        bullet_type = obj_Cross_Split_Bullet;
        bullet_sprite = spr_Big_Cross_Split_Shot;
        bullet_lifespan = 150 + random(75);
    }

if bossActiveAttackDelay[1] <= 0 and bossPatternCooldown <= 0 and bossPatternCount > 0 {
        
    if bossActiveAttack[champ] = 1 {
        if champ = 1 {
            bullet_spread = 24;
            bullet_count = 3;
        }
        if champ = 2 {
	        bullet_power = bosspower * 2;
	        bullet_type = obj_Cross_Split_Bullet;
	        bullet_sprite = spr_Big_Cross_Split_Shot;
	        bullet_lifespan = 150 + random(75);
		}
		scr_Boss_Stretch("Vertical",0.3);
		
        scr_Soul_Shoot();
        direction = scr_Soul_Point();
		speed = 0.3 * bossmovespeed;
    
		bossPatternCount -= 1;
        bossPatternCooldown += bossPatternCooldownMax;
	}
		
	if bossActiveAttack[champ] = 3 {
		bossPatternCountMax = 60;
		
		if bossPatternCount <= bossPatternCountMax {
	        scr_Boss_Dash_Movement(6,2);
		
			speed = bossDashSpeed;
	        direction = bossDashDirection;
		
			scr_Jump_Movement(2.5);
		}
		
		if bossPatternCount = 1 {
			bullet_count = 8;
			bullet_speed = bossbulletspeed * 1.5;
			bullet_power = bosspower;
			bullet_direction = random(360);
			
			bullet_type = obj_Basic_Bullet;
	        bullet_sprite = spr_Glowy_Purple_Shot;
			
			if champ = 1 {
				bullet_count = 8;
				bullet_sprite = spr_Spike_Lob;
				bullet_type = obj_Direction_Bullet;
			}
			if champ = 2 {
				bullet_count = 4;
				bullet_type = obj_Cross_Split_Bullet;
		        bullet_sprite = spr_Big_Cross_Split_Shot;
		        bullet_lifespan = 150 + random(75);
			}
			
			bullet_spread = 360 / bullet_count;
			
			scr_Just_Shoot();
			
			if champ = 1 {
				bullet_count = 4;
				bullet_spread = 360 / bullet_count;
				repeat(2) {
				bullet_speed += bossbulletspeed * 0.5;
				scr_Just_Shoot();	
				}
			}
		}
		
		bossPatternCount -= 1;
        bossPatternCooldown += bossPatternCooldownMax;
		
		if bossHopCount > 1 and bossPatternCount < 1 {
			scr_Boss_Stretch("Horizontal",0.4);
			
			bossHopCount--;
			bossPatternCount = bossPatternCountMax + 15;
			jumpDirection = "Up";
			jumpHeight = 0;
			image_index = 0;
			
			scr_Boss_Dash_Setup();
			var bossdirection = scr_Soul_Point();
		    bossDashDirection = bossdirection;
		
			scr_Hop_Distance_Calc(6 * bossmovespeed);
		
			bossDashSpeed = 0;
			state = states.jumping;
		}
		if bossPatternCount < 1 and bossHopCount <= 1 {
			scr_Boss_Stretch("Horizontal",0.4);
			
			speed = 0;
		}
    }
}

if jumpHeight < 10 {
	state = states.normal;	
} else {
	state = states.jumping;	
}

/// Active Attack Post
   
if bossActiveAttackDuration[champ] <= 0 { 
	
	state = states.normal;
	jumpDirection = "None"
	jumpHeight = 0;
	
	sprite_index = spr_Agony_Amorphous;	
	
    bossActiveAttack[1] = 0;
    bossActiveAttack[2] = 0;
    bossActiveAttack[3] = 0;
    bossActiveAttack[0] = 0;
}

#region ///Sprites

scr_Boss_Size_Lerp(0.15);

if bossActiveAttack[champ] = 3 {
	sprite_index = spr_Agony_Amorphous_Hop;
}

if state = states.jumping {
	//if jumpHeight > 10 || bossPatternCooldown > 0 {
	
		sprite_index = spr_Agony_Amorphous_Hop;
	/*} else*/ if jumpHeight <= 10 {
		if jumpDirection = "Down" {
			state = states.normal;
		}
		if bossActiveAttackDuration[champ] <= 0 {
			
		}
	}
}

if bossActiveAttack[champ] = 1 || bossActiveAttack[champ] = 2 || bossActiveAttack[champ] = 4 {
	if bossActiveAttackDelay[champ] >= 0 || bossActiveAttackDuration[champ] > 0 {
		sprite_index = spr_Agony_Amorphous_Attack;
		if bossActiveAttack[champ] = 1 and bossActiveAttackDuration[champ] > 15 {
			if image_index > 4 {
				image_index = 4;		
			}
		}
	} else {
		sprite_index = spr_Agony_Amorphous;
	}
} else {
	//image_index = 0;	
}

#endregion

/*
if state = states.jumping {
	sprite_index = spr_Agony_Amorphous_Hop;	
} else {
	sprite_index = spr_Agony_Amorphous;	
}
*/

scr_Boss_Soul_Hitbox(sprite_index);