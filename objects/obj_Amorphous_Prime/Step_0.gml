/// @description  Boss Step Event

scr_Boss_Step();

///Passive Attack Prep

if currentphase = 2 {
	direction = scr_Soul_Point();
	speed = 0.3 * bossmovespeed;
} else {
	direction = scr_Soul_Point();
	speed = 0.1 * bossmovespeed;
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
    minion_count = 1;
    minion_type = obj_Hand_Slime;
    minion_health = bossmaxhealth / 20;
    minion_defense = 2;
    scr_Minion_Spawn();   
}
bossPassiveAttack[1] = 0;
bossPassiveAttack[2] = 0;

///Active Attack Prep

if bossActiveAttackDelay[1] <= 0 and bossActiveAttackCooldown[1] <= 0 and bossActiveAttackDuration[1] <= 0 {
    bossActiveAttack[1] = choose(1,2,4,5);
	//bossActiveAttack[1] = 5;
    if currentphase = 2 {
        bossActiveAttack[1] = choose(3);
    }
	//bossActiveAttack[1] = 5;
	if bossActiveAttack[1] = 1 {
        bossActiveAttackDelay[1] = 15;
        bossPatternCount = 3;
        bossPatternCooldown = 15;
        bossPatternCooldownMax = 60;
        bossActiveAttackDuration[1] = 20 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 60 + random(30);
    }
    if bossActiveAttack[1] = 2 {
        bossActiveAttackDelay[1] = 30;
        bossActiveAttackDuration[1] = 45;
        bossActiveAttackCooldown[1] = 120 + random(30);
    }
    if bossActiveAttack[1] = 3 {
        bossActiveAttackDelay[1] = 20;
        bossActiveAttackDuration[1] = 30;
        bossActiveAttackCooldown[1] = 120 + random(30);
    }
    if bossActiveAttack[1] = 4 {
        bossActiveAttackDelay[1] = 20;
        bossActiveAttackDuration[1] = 30;
        bossActiveAttackCooldown[1] = 180 + random(30);
    }
	if bossActiveAttack[1] = 5 {
		bossActiveAttackDelay[1] = 20;
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
        bossActiveAttackCooldown[1] = 40 + random(15);
    }
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
		scr_Boss_Stretch("Horizontal", 0.4);
		
		boss_yoffset = -160;
		
        bullet_type = obj_Multi_Jelly_Bullet;
        bullet_sprite = spr_Lob_Shot;
		bullet_count = 8;
        bullet_spread = 360 / bullet_count;
		bullet_speed = bossbulletspeed * 1.8;
        scr_Offset_Normal_Shoot();
		bullet_speed = bossbulletspeed * 1;
		bullet_direction += 180 / bullet_count;
        scr_Offset_Normal_Shoot();
		
		bossActiveAttack[1] = -2;
    }
    if bossActiveAttack[1] = 3 {
		scr_Boss_Stretch("Horizontal", 0.25);
		
		boss_yoffset = -120;
		boss_xoffset = 80 * image_xscale;
		
		bullet_type = obj_Lob_Bullet;
        bullet_count = 8 + irandom(1);
        bullet_spread = 50;
        bullet_power = bosspower * 0.5;
        bullet_speedfac_min = 0.5;
        bullet_speedfac_add = 1;
        bullet_timefac_min = 0.6;
        bullet_timefac_add = 0.6;
        
        scr_Soul_Shoot_Vomit();
    
		bossActiveAttack[1] = -3;
	}
    if bossActiveAttack[1] = 4 {
		scr_Boss_Stretch("Horizontal", 0.25);
		
        minion_count = 4;
        minion_type = obj_Hand_Slime;
        minion_health = bossmaxhealth / 30;
        minion_defense = 2;
        scr_Minion_Spawn();
		
		bossActiveAttack[1] = -4;
    }

}

/* */
/// Active Attack Pattern Code
    
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

if bossActiveAttackDelay[1] <= 0 and bossPatternCooldown <= 0 and bossPatternCount > 0 {
        
    if bossActiveAttack[1] = 1 {
		scr_Boss_Stretch("Horizontal", 0.25);
		
		boss_yoffset = -120;
		boss_xoffset = 80 * image_xscale;
		
        bullet_type = obj_Basic_Bullet;
        bullet_sprite = spr_Big_Glowy_Purple_Shot;
		bullet_count = 5;
        bullet_spread = 15;
        scr_Soul_Shoot();
		bullet_power = bosspower * 1;
		bullet_sprite = spr_Glowy_Purple_Shot;
		bullet_speed = bossbulletspeed * 1.25;
        scr_Soul_Shoot();
    }
	
	if bossActiveAttack[1] = 5 {
        scr_Boss_Dash_Movement(30,30);
		
		speed = bossDashSpeed;
        direction = bossDashDirection;
		
		//if bossPatternCountMax - bossPatternCount > 5 {
			scr_Jump_Movement(30);
		//}
		
		if bossPatternCount <= 1 {
			scr_Boss_Stretch("Horizontal", 0.6);
			
			state = states.normal	
			
	        bullet_type = obj_Basic_Bullet;
	        bullet_sprite = spr_Big_Glowy_Purple_Shot;
			bullet_count = 12;
			bullet_speed = bossbulletspeed * 1.75;
	        bullet_spread = 360 / bullet_count;
	        scr_Just_Shoot();
			bullet_sprite = spr_Glowy_Purple_Shot;
			bullet_power = bosspower * 1;
			bullet_count = 24;
			bullet_spread = 360 / bullet_count;
			bullet_speed = bossbulletspeed * 1.35;
			bullet_spread = 360 / bullet_count;
	        scr_Just_Shoot();
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

scr_Boss_Size_Lerp_DirAlt(0.15);

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

if bossActiveAttack[1] = 1 || bossActiveAttack[1] = 3 || bossActiveAttack[1] = 4 || bossActiveAttack[1] = -3 || bossActiveAttack[1] = -4 {
	sprite_index = spr_Amorphous_Prime_Sling;
	if bossActiveAttackDuration[1] > 15 {
		if image_index > 6 {
			image_index = 6;		
		}
	}
} else if bossActiveAttack[1] = 2 || bossActiveAttack[1] = -2 {
	sprite_index = spr_Amorphous_Prime_Cannon;
	if bossActiveAttackDuration[1] > 15 {
		if image_index > 6 {
			image_index = 6;		
		}
	}
} else if bossActiveAttack[1] = 5 {
	sprite_index = spr_Amorphous_Prime_Leap;
	if bossActiveAttackDuration[1] > 15 {
		if image_index > 6 {
			image_index = 6;		
		}
		if jumpDirection = "Down" {
			if image_index < 7 {
				image_index = 7;	
			}
			if bossPatternCount > 1 {
				if image_index > 10 {
					image_index = 10;		
				}
			} else {
				if image_index < 11 {
					image_index = 11;	
				}
			}
		}
	}
	/*
	if jumpDirection = "Down" and bossPatternCount <= 1 {
		if image_index < 11 {
			image_index = 11;	
		}
	}*/
} else {
	sprite_index = spr_Amorphous_Prime;	
}

#endregion
   
if bossActiveAttackDuration[1] <= 0 {
    bossActiveAttack[1] = 0;
    bossActiveAttack[2] = 0;
    bossActiveAttack[3] = 0;
    bossActiveAttack[0] = 0;
}

scr_Boss_Soul_Hitbox(sprite_index);
