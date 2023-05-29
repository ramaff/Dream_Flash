/// @description  Boss Step Event

scr_Boss_Step();

scr_Boss_Two_Face_Direction();

if currentphase = 2 and swordOut = 0 {
    
    swordOut = 1;

    scr_Default_Attack_Settings();
    bullet_type = obj_Sandmans_Sword;
    bullet_sprite = spr_Sandman_Sword;
    bullet_speed = bossbulletspeed * 1.5;
    bullet_power = bosspower;
    bullet_direction = (-10 + random(20)) / bossaccuracy;
    bullet_lifespan = 99999;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;

    scr_Soul_Shoot();

}

if currentphase = 3 and thoughtOut = 0 {
    instance_destroy(obj_Sandmans_Sword);
    
    thoughtOut = 1;
    global.bosscount += 1;
    
    with instance_create(x,y, obj_Sandman_Thought) {
        champ = other.champ + 0.1;
        boost = other.boost;
		bossValue = other.bossValue;
		
		scr_Boss_Stats_Setup();
    }
    
}

///Active Attack Prep

if bossActiveAttackDelay[1] <= 0 and bossActiveAttackCooldown[1] <= 0 and bossActiveAttackDuration[1] <= 0 {
    speed = bossmovespeed * (0.15 + random(0.1));
    if currentphase = 1 {
        var bossdirection = -scr_Soul_Point();
    } else {
        speed = bossmovespeed * (0.25 + random(0.1));
        bossdirection = scr_Soul_Point();
    }
    if currentphase = 3 {
        speed = 0;
    }  
    direction = bossdirection;
    friction = 0;
    
    bossActiveAttack[1] = choose(1,2,3);
    if currentphase = 2 {
        bossActiveAttack[1] = choose(4,5,6);
    }
    if currentphase = 3 {
        bossActiveAttack[1] = choose(7);
    }
    if bossActiveAttack[1] = 1 {
        bossActiveAttackDelay[1] = 15;
        bossPatternCount = 45;
        bossPatternCooldown = 4;
        bossPatternCooldownMax = 4;
        bossPatternDirection = random(360);
        bossActiveAttackDuration[1] = 30 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 120 + random(30);
    }
    if bossActiveAttack[1] = 2 {
        bossActiveAttackDelay[1] = 15;
        bossPatternCount = 60;
        bossPatternCooldown = 3;
        bossPatternCooldownMax = 3;
        bossPatternDirection = random(360);
        bossActiveAttackDuration[1] = 30 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 120 + random(30);
    }
    if bossActiveAttack[1] = 3 {
        bossActiveAttackDelay[1] = 15;
        bossActiveAttackDuration[1] = 30;
        bossActiveAttackCooldown[1] = 120 + random(30);
    }
    if bossActiveAttack[1] = 4 {
        bossActiveAttackDelay[1] = 15;
        bossPatternCount = 6;
        bossPatternCooldown = 45;
        bossPatternCooldownMax = 45;
        bossPatternDirection = 90;
        bossActiveAttackDuration[1] = 30 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 240 + random(30);
    }
    if bossActiveAttack[1] = 5 {
        bossActiveAttackDelay[1] = 15;
        bossPatternCount = 3;
        bossPatternCooldown = 30;
        bossPatternCooldownMax = 30;
        bossPatternDirection = random(360);
        bossActiveAttackDuration[1] = 30 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 210 + random(30);
    }
    if bossActiveAttack[1] = 6 {
        bossActiveAttackDelay[1] = 30;
        bossActiveAttackDuration[1] = 60;
        bossActiveAttackCooldown[1] = 180 + random(30);
    }
    if bossActiveAttack[1] = 7 {
        bossActiveAttackDelay[1] = 15;
        bossActiveAttackDuration[1] = 30;
        bossActiveAttackCooldown[1] = 180 + random(60);
    }
    bossPatternCountMax = bossPatternCount;
}


/// Active Attack Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Basic_Bullet;
    bullet_sprite = spr_Big_Flash_Shot;
    bullet_speed = bossbulletspeed;
    bullet_power = bosspower * 2;
    bullet_direction = (-15 + random(30)) / bossaccuracy;
    bullet_lifespan = 300;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;
    
if bossActiveAttackDelay[1] <= 0 {
        
    if bossActiveAttack[1] = 3 {
        
		scr_Boss_Stretch("Vertical", 0.4);
		
        bullet_count = 16;
        bullet_spread = 360 / bullet_count;
        bullet_type = obj_Speed_UpDown_Bullet;
        bullet_size = 1;
        bullet_sprite = spr_Heart_Sword_Energy;
        bullet_speed = bossbulletspeed * 2.6;
        scr_Just_Shoot();
		
		bullet_speed = bossbulletspeed * 2;
		bullet_direction += bullet_spread / 2;
        scr_Just_Shoot();
		
		bullet_speed = bossbulletspeed * 1.4;
		bullet_direction -= bullet_spread / 2;
        scr_Just_Shoot();
		
		
    
        bossActiveAttack[1] = -3;
    }

    if bossActiveAttack[1] = 6 {
		
		scr_Boss_Stretch("Vertical", 0.2);
        
        with(obj_Sandmans_Sword) {
            deathSlash = 1;
            direction = scr_Soul_Point();
			speed = 1.65 * bulletspeed;
            alarm[10] = 120 + (point_distance(x,y,obj_Soul_Parent.perX,obj_Soul_Parent.perY) / (bulletspeed * 1.35));
        }
        
        bossActiveAttack[1] = -6;
        
    }
    
    if bossActiveAttack[1] = 7 {
        
		scr_Boss_Stretch("Vertical", 0.4);
		
        bullet_direction = random(360);
        bullet_count = 4;
        bullet_spread = 90;
        bullet_power = bosspower;
        bullet_type = obj_Basic_Bullet;
        bullet_size = 1;
        bullet_sprite = spr_Glowy_Enemy_Shot;
        bullet_lifespan = 600;
        
        bullet_speed = bossbulletspeed * 2;
        scr_Just_Shoot();
        angAdd = 0;
        
        repeat(6) {
            angAdd += 3;
            bullet_direction += (40/6);
            bullet_speed = bossbulletspeed * (2 - (sqrt(angAdd) / 3));
            scr_Just_Shoot();
        }
        
        bullet_direction -= 40;
        angAdd = 0;
        
        repeat(6) {
            angAdd += 3;
            bullet_direction -= (40/6);
            bullet_speed = bossbulletspeed * (2 - (sqrt(angAdd) / 3));
            scr_Just_Shoot();
        }
    
        bossActiveAttack[1] = -7;
    }
    

    
}

/// Active Attack Pattern Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Basic_Red_Bullet;
    bullet_sprite = spr_Glowy_Enemy_Shot;
    bullet_speed = bossbulletspeed;
    bullet_power = bosspower * 1;
    bullet_direction = (-5 + random(10)) / bossaccuracy;
    bullet_lifespan = 120 + random(180);
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;
    
    bullet_speed = bossbulletspeed * 1.5;

if bossActiveAttackDelay[1] <= 0 and bossPatternCooldown <= 0 and bossPatternCount > 0 {
        
    if bossActiveAttack[1] = 1 {
		if bossPatternCount mod 5 = 0 {
			scr_Boss_Stretch("Vertical", 0.1);
		}
		
        bullet_direction = bossPatternDirection;
        bullet_speed = bossbulletspeed * 1.65;
        bullet_count = 2;
        bullet_spread = 180;
        scr_Just_Shoot();
        bullet_direction = 180 - bossPatternDirection;
        bullet_speed = bossbulletspeed * 1.65;
        bullet_count = 2;
        bullet_spread = 180;
        scr_Just_Shoot();
        
        bossPatternDirection += 12.5;
    }
    
    if bossActiveAttack[1] = 2 {
		if bossPatternCount mod 5 = 0 {
			scr_Boss_Stretch("Vertical", 0.1);
		}
		
        bullet_direction = bossPatternDirection;
        bullet_sprite = spr_Tear_Drop_Bullet;
		bullet_type = obj_Direction_Bullet;
        bullet_count = 2;
        bullet_spread = 360 / bullet_count;
        bullet_speed = bossbulletspeed * 1.5;
        scr_Just_Shoot();
        
        bossPatternDirection += 12.5;
		
		if bossPatternCount mod 20 = 1 {
			bullet_count = 20;
	        bullet_spread = 360 / bullet_count;
	        bullet_speed = bossbulletspeed * 1.25;
	        scr_Just_Shoot();
		}
    }
    
    if bossActiveAttack[1] = 4 {
		scr_Boss_Stretch("Vertical", 0.1);
		
        bullet_direction = 90;
        bullet_lifespan = 240 + random(30);
        bullet_type = obj_Sand_Ball_Barrage
        bullet_sprite = spr_Sand_Ball;
        bullet_size = 0.05;
        bullet_count = 1;
        bullet_spread = 5;
        bullet_speed = bossbulletspeed * (1.35 + random(0.5));
        scr_Just_Shoot();
    }
    
    if bossActiveAttack[1] = 5 {
		if bossPatternCount = bossPatternCountMax {
			scr_Boss_Stretch("Horizontal", 0.2);	
		}
		
        bullet_direction = 90;
        bullet_lifespan = 900 + random(15);
        bullet_type = obj_Sand_Ball_Punch
        bullet_sprite = spr_Sand_Ball;
        bullet_size = 0.05;
        bullet_count = 1;
        bullet_spread = 5;
        bullet_speed = bossbulletspeed * (1.65 + random(0.35));
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

/// Boss Sprite Code

#region /// Boss Sprite


scr_Boss_Size_Lerp(0.15);

if currentphase = 1 {
	
	if bossActiveAttack[1] != 0 {
	    sprite_index = spr_Sandman_Phase_1_Cry
		if image_index >= 3 and bossActiveAttackDuration[1] > 10 {
			image_index = 3;	
		}
	} else {
		sprite_index = spr_Sandman_Phase_1;
	}
	
}

if currentphase = 2 {
	if bossActiveAttack[1] = 4 {
	    sprite_index = spr_Sandman_Phase_2_Raise
		if image_index >= 3 and bossActiveAttackDuration[1] > 10 {
			image_index = 3;	
		}
	} else if bossActiveAttack[1] = 5  {
	    sprite_index = spr_Sandman_Phase_2_Punch
		if image_index >= 5 and bossActiveAttackDuration[1] > 10 {
			image_index = 5;	
		}
	} else if bossActiveAttack[1] = 6 || bossActiveAttack[1] = -6 {
	    sprite_index = spr_Sandman_Phase_2_Send;
		if image_index >= 3 and bossActiveAttackDuration[1] > 10 {
			image_index = 3;	
		}
	} else {
		sprite_index = spr_Sandman_Phase_2;
	}
}

if currentphase = 3 {
	if bossActiveAttack[1] != 0 {
	    sprite_index = spr_Sandman_Phase_3_Shoot
		if image_index >= 3 and bossActiveAttackDuration[1] > 10 {
			image_index = 3;	
		}
	} else {
		sprite_index = spr_Sandman_Phase_3;
	}
}

#endregion

/*

if currentphase = 2 {
    sprite_index = spr_Sandman_Phase_2;
    if ((bossActiveAttack[1] != 6) and (bossActiveAttack[1] = 4 || bossActiveAttack[1] = 5 || bossActiveAttackDelay[1] > 0 || bossActiveAttackDuration[1] > 0)) {
        image_index = 1;
    } else if bossActiveAttack[1] = 6 || bossActiveAttackDelay[1] > 0 || bossActiveAttackDuration[1] > 0 {
        image_index = 2;
    } else {
        image_index = 0;
    }
    if hspeed > 0 {
    image_index += 0;
    } else {
        image_index += 3;
    }
}
if currentphase = 3 {
    sprite_index = spr_Sandman_Phase_3;
    //bossSize = 0.375;
}

*/

scr_Boss_Soul_Hitbox(sprite_index);