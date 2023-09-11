/// @description  Boss Step Event

scr_Boss_Step();

depth = -3;

///Active Attack Prep

if bossActiveAttackDelay[1] <= 0 and bossActiveAttackCooldown[1] <= 0 and bossActiveAttackDuration[1] <= 0 {
    bossActiveAttack[1] = choose(1);
    speed = bossmovespeed * (0.2 + random(0.2));
    direction = random(360);
        
    if bossActiveAttack[1] = 1 {
        bossActiveAttackDelay[1] = 15;
        
        bossActiveAttackDuration[1] = 5;
        bossActiveAttackCooldown[1] = 120 + random(150);
        if currentphase = 2 {
            bossActiveAttackCooldown[1] = 120 + random(60);
        }
    }
     
    bossPatternCountMax = bossPatternCount;
}

if champ = 1 {
    
    if bossActiveAttackDelay[2] <= 0 and bossActiveAttackCooldown[2] <= 0 and bossActiveAttackDuration[2] <= 0 {
        if bossStack >= 2 {
            bossActiveAttack[2] = choose(1);
        }
        if bossActiveAttack[2] = 1 {
            bossPatternDirection = scr_Soul_Point();
            bossActiveAttackDelay[2] = 5;
            bossPatternCount = 8 + random(6);
            bossPatternCooldown = 5;
            bossPatternCooldownMax = 5;
            bossActiveAttackDuration[2] = 15 + bossPatternCooldownMax * bossPatternCount;
            bossActiveAttackCooldown[2] = 120 + random(120);
        }
        
        bossPatternCountMax = bossPatternCount;
    }
    
    if bossActiveAttackDelay[3] <= 0 and bossActiveAttackCooldown[3] <= 0 and bossActiveAttackDuration[3] <= 0 {
        if bossStack >= 3 {
            bossActiveAttack[3] = choose(1);
        }
        if bossActiveAttack[3] = 1 {
            bossActiveAttackDelay[3] = 5;
            
            bossActiveAttackDuration[3] = 10;
            bossActiveAttackCooldown[3] = 120 + random(150);
            if currentphase = 2 {
                bossActiveAttackCooldown[3] = 120 + random(60);
            }
        }
    }

}

/// Active Attack Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Basic_Bullet;
    bullet_sprite = spr_Glowy_Purple_Shot;
    bullet_speed = bossbulletspeed;
    bullet_power = bosspower;
    bullet_direction = (-15 + random(30)) / bossaccuracy;
    bullet_lifespan = 300;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;
    
    if champ = 2 {
        bullet_type = obj_Direction_Bullet;
        bullet_sprite = spr_Glowy_Red_Laser;
        bullet_speed = bossbulletspeed * 1.3;
    }
    
if bossActiveAttackDelay[1] <= 0 {
        
    if bossActiveAttack[1] = 1 {
		
		if currentphase = 2 {
			scr_Boss_Stretch("Horizontal",0.25);
		} else {
			scr_Boss_Stretch("Horizontal",0.075);
		}
		
        bullet_count = 10;
        if champ = 8 {
            bullet_count = 16;
			bullet_sprite = spr_Glowy_Enemy_Shot;
        }
        bullet_spread = 180 / bullet_count;
        bullet_lifespan = 400;
        //bullet_speed = bossbulletspeed;
		
		bullet_direction = 180 + (-15 + random(30)) / bossaccuracy;
        boss_xoffset = -40;
		boss_yoffset = 10;
		scr_Offset_Normal_Shoot();
		
		bullet_direction = (-15 + random(30)) / bossaccuracy;
		boss_xoffset = 40;
		boss_yoffset = 10;
		scr_Offset_Normal_Shoot();
    
        bossActiveAttack[1] = 0;
    }
    
}

if bossActiveAttackDelay[3] <= 0 {
        
    if bossActiveAttack[3] = 1 {
        bullet_sprite = spr_Glowy_Purple_Shot;
        bullet_count = 3 + (1 * irandom(2));
        bullet_spread = 15;
        bullet_lifespan = 400;
        bullet_speed = bossbulletspeed * 1.5;
        bullet_direction = scr_Soul_Point();
        boss_xoffset = 0;
        boss_yoffset = -100;
        scr_Offset_Normal_Shoot();
    
        bossActiveAttack[3] = 0;
    }
    

}
/// Active Attack Pattern Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Basic_Bullet;
    bullet_sprite = spr_Glowy_Purple_Shot;
    bullet_speed = bossbulletspeed;
    bullet_power = bosspower;
    bullet_direction = (-15 + random(30)) / bossaccuracy;
    bullet_lifespan = 300;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;

if bossActiveAttackDelay[2] <= 0 and bossPatternCooldown <= 0 and bossPatternCount > 0 {
        
    if bossActiveAttack[2] = 1 {
        bullet_sprite = spr_Glowy_Purple_Shot;
        bullet_lifespan = 400;
        bullet_speed = bossbulletspeed * 2;
        boss_xoffset = 0;
        boss_yoffset = -50;
        bullet_direction = bossPatternDirection + (-15 + random(30)) / bossaccuracy;
        scr_Offset_Normal_Shoot();
        
        bossPatternCount -= 1;
        bossPatternCooldown += bossPatternCooldownMax;
    }

}

/// Active Attack Post
   
if bossActiveAttackDuration[1] <= 0 { 
    bossActiveAttack[1] = 0;
}
if bossActiveAttackDuration[2] <= 0 { 
    bossActiveAttack[2] = 0;
}
if bossActiveAttackDuration[3] <= 0 { 
    bossActiveAttack[3] = 0;
}

/// Boss Sprite Code

   scr_Boss_Size_Lerp(0.2);

if bossStack = 3
if bosshealth <= bossmaxhealth / 2 or currentphase = finalphase {
    bossStack -= 1;
    with instance_create(x,y - 100, obj_Flying_Stacklet) {
        champ = other.champ;
        boost = other.boost;
		bossValue = other.bossValue;
        global.bosscount += 1;
    }
}
if bossStack = 2
if currentphase = finalphase {
    bossStack -= 1;
    with instance_create(x,y - 50, obj_Crawling_Stacklet) {
        champ = other.champ;
        boost = other.boost;
		bossValue = other.bossValue;
        global.bosscount += 1;
    }
}

if bossStack = 3 {
    sprite_index = spr_Horror_Stack;
	if champ = 1 {
		sprite_index = spr_Horror_Stack_Champ;
	}
}
if bossStack = 2 {
    sprite_index = spr_Horror_Stack_Two;
	if champ = 1 {
		sprite_index = spr_Horror_Stack_Champ_Two;
	}
}
if bossStack = 1 {
    sprite_index = spr_Cannon_Stacklet
}

if bossStack = 1 {
	
	if bossActiveAttack[1] != 0 {
		image_speed = 1;
	} else {
		image_index = 0;	
	}
}

scr_Boss_Soul_Hitbox(sprite_index);