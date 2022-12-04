/// @description  Boss Step Event

scr_Boss_Step();

scr_Boss_Two_Face_Direction();

scr_Spirit_Outside_View();

if currentphase = 2 {
    var bossdirection = scr_Soul_Point();
    speed = 0.7 * bossmovespeed;
    direction = bossdirection;
} else {
	scr_Spirit_Move_Away();
}

///Passive Attack Prep

if bossPassiveAttackDelay[1] <= 0 and bossPassiveAttackCooldown[1] <= 0 {
    if champ = 0 and currentphase = 2 {
        bossPassiveAttack[1] = 1;
        bossPassiveAttackCooldown[1] = 1;
        bossPassiveAttackDelay[1] = 0;
    }
}

if bossPassiveAttackDelay[2] <= 0 and bossPassiveAttackCooldown[2] <= 0 {
    if champ = 0 and currentphase = 2 {
        bossPassiveAttack[2] = 1;
        bossPassiveAttackCooldown[2] = 30 + random(15);
        bossPassiveAttackDelay[2] = 0;
        if tier >= 1 {
            bossPassiveAttackCooldown[2] -= 5;
        }
        if tier >= 3 {
            bossPassiveAttackCooldown[2] -= 5;
        }
    }
}

///Passive Attack Code   

if currentphase = 2 {
	if bossPassiveAttack[1] = 1 {
	    var bossdirection = scr_Soul_Point();
	    speed = 0.7 * bossmovespeed;
	    direction = bossdirection;
	    if bossActiveAttack[1] = 4 and bossActiveAttackDuration[1] > 0 {
	        speed = 0.1 * bossmovespeed;   
	    }
	}
}

    scr_Default_Attack_Settings();
    bullet_type = obj_Homing_Dormant_Bullet;
    bullet_sprite = spr_Homing_Dormant_Shot;
    bullet_speed = bossbulletspeed * (0.45 + random(0.35));
    bullet_power = bosspower * 1;
    bullet_direction = (-180 + random(360)) / bossaccuracy;
    bullet_lifespan = 240 + random(60);
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;
    
if bossPassiveAttack[2] = 1 {
    bullet_direction = scr_Soul_Point();
    bullet_direction += (-180 + random(360)) / bossaccuracy;
    scr_Just_Shoot(); 
}

bossPassiveAttack[1] = 0;
bossPassiveAttack[2] = 0;

///Active Attack Prep

if bossActiveAttackDelay[1] <= 0 and bossActiveAttackCooldown[1] <= 0 and bossActiveAttackDuration[1] <= 0 {
    
    if currentphase = 2 {
        bossActiveAttack[1] = choose(1,1,2);
        bossActiveAttackDelay[1] = 30;
        if tier >= 2 {
            bossActiveAttack[1] = choose(1,2,3,4);
        }
    }
    
    if bossActiveAttack[1] = 1 {
		scr_Boss_Stretch("Horizontal", 0.2);
        bossActiveAttackCooldown[1] = (210 + random(30));
        bossActiveAttackDuration[1] = 30;
    }
    if bossActiveAttack[1] = 2 {
		scr_Boss_Stretch("Horizontal", 0.2);
        bossActiveAttackCooldown[1] = (210 + random(30));
        bossActiveAttackDuration[1] = 60;
    }
    if bossActiveAttack[1] = 3 {
		scr_Boss_Stretch("Horizontal", 0.2);
        bossActiveAttackCooldown[1] = (210 + random(30));
        bossPatternCount = 1;
        bossPatternCooldown = 30;
        bossPatternCooldownMax = 30;
        bossActiveAttackDuration[1] = 15 + bossPatternCooldownMax * bossPatternCount;
    }
    if bossActiveAttack[1] = 4 {
		scr_Boss_Stretch("Horizontal", 0.2);
        speed = 0.1 * bossmovespeed;   
        bossActiveAttackCooldown[1] = (180 + random(30));
        bossPatternCount = 200;
        bossPatternCountMax = bossPatternCount;
        bossPatternCooldown = 1;
        bossPatternCooldownMax = 1;
        bulletdirection = scr_Soul_Point() + ((-10 + random(20)) / bossaccuracy);
        bossPatternDirection = bulletdirection;
        bossActiveAttackDuration[1] = 15 + bossPatternCooldown * bossPatternCount;
    }
    if tier >= 1 {
        bossActiveAttackCooldown[1] -= 40;
    }
    
}


/// Active Attack Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Exploding_Hope_Bullet;
    bullet_sprite = spr_Hope_Bullet;
    bullet_speed = bossbulletspeed;
    bullet_power = bosspower * 2;
    bullet_direction = (-10 + random(20)) / bossaccuracy;
    bullet_lifespan = 450;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;

if bossActiveAttackDelay[1] <= 0 {        
    
    if bossActiveAttack[1] = 1 {
		scr_Boss_Stretch("Vertical", 0.4);
		
        bullet_count = 6;
        if tier >= 1 {
            bullet_count += 2 * tier;
        }
        bullet_spread = 180 / bullet_count;
        bullet_speed = bossbulletspeed * (1.65 + random(0.2));
        scr_Soul_Shoot();
        
        bossActiveAttack[1] = 0;   
    }
    if bossActiveAttack[1] = 2 {
		scr_Boss_Stretch("Vertical", 0.4);
		
        minion_count = 2;
        if tier >= 1 {
            minion_count += 1;
        }
        minion_type = obj_Hope_Mask;
        minion_health = bossmaxhealth / 20;
        scr_Minion_Spawn();
        
        bossActiveAttack[1] = 0;   
    }
    
}

/// Active Attack Pattern Code
    
    scr_Beam_Shoot_Properties();
    scr_Default_Attack_Settings();
    bullet_type = obj_Mega_Hope_Ball;
    bullet_sprite = spr_Mega_Hope_Ball;
    bullet_speed = bossbulletspeed * (1.3 + random(0.1));
    bullet_power = bosspower;
    bullet_direction = (-10 + random(20)) / bossaccuracy;
    bullet_lifespan = 300;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;

if bossActiveAttackDelay[1] <= 0 and bossPatternCooldown <= 0 and bossPatternCount > 0 {
        
    if bossActiveAttack[1] = 3 {
		bullet_part = 2;
		bullet_part_sprite = spr_Bullet_Part;
		bullet_part_area = 25;
		bullet_part_life = 40;
		bullet_part_color1 = make_color_rgb(255,125,255);
		bullet_part_color2 = make_color_rgb(255,200,255);
		
		scr_Boss_Stretch("Vertical", 0.4);
        bullet_speed = bossbulletspeed * (2.85 + random(0.3));
        bullet_power = bosspower * 4;
        scr_Soul_Shoot();
    }
    
    if bossActiveAttack[1] = 4 {
        scr_Default_Attack_Settings();
        bullet_power = bosspower * 0.5;
        bullet_direction = bossPatternDirection;
        bullet_size = 1;
        bullet_count = 1;
        bullet_spread = 0;
        boss_radius = 0;
        
        bullet_sprite = spr_Hope_Beam;
        beam_sprite = spr_Hope_Beam;
        bossbeamattackactive = 1;
		
		beamStart = 200 - bossPatternCount;
		bossPatternDirection = scr_Angle_Converge(bossPatternDirection, scr_Soul_Point(), (bossPatternCountMax - bossPatternCount) / 200)
    
        if bossPatternCount < 180 {
			if bossPatternCount mod 5 = 0 {
				scr_Boss_Stretch("Vertical", 0.05);	
			}
            scr_Boss_Beam_Attack_New("Active",35,scr_Boss_Beam_Frame(beamStart)); 
        } else {
            scr_Boss_Beam_Attack_New("Dormant",35,scr_Boss_Beam_Frame(beamStart));  
        } 
        
        if frac((bossPatternCount - 1) / 45) = 0 and bossPatternCount > 0 {
            var length = 0
            while(!collision_point(x + lengthdir_x(length,bullet_direction),y + lengthdir_y(length,bullet_direction),obj_The_Border,true,true)) {
                length += 5;
            }
        
            boss_xoffset = bossxx[boss_beam_num] + lengthdir_x(length - 16, bullet_direction);
            boss_yoffset = bossyy[boss_beam_num] + lengthdir_y(length - 16, bullet_direction);
            
            bullet_type = obj_Basic_Bullet;
            bullet_sprite = spr_Hope_Beam_Bullet;
            bullet_speed = bossbulletspeed * (2 + random(0.1));
            bullet_lifespan = 360;
            bullet_size = 1.1;
            bullet_count = 16;
			bullet_direction = bullet_direction - 180;
            bullet_spread = 180 / bullet_count;
            
            scr_Offset_Normal_Shoot();
        }
        
    }
    
    bossPatternCount -= 1;
    bossPatternCooldown += bossPatternCooldownMax;
}

/// Active Attack Post
   
if bossActiveAttackDuration[1] <= 0 { 
    bossActiveAttack[1] = 0;
    bossActiveAttack[2] = 0;
}

#region /// Boss Sprite

scr_Boss_Size_Lerp_Dir(0.15);

if tier < 2 {
	scr_Masked_Spirit_Sprite(spr_Masked_Hope_Spirit,spr_Masked_Hope_Spirit_Attack);
} else {
	scr_Masked_Spirit_Sprite(spr_High_Hope_Spirit,spr_High_Hope_Spirit_Attack);
}
   
#endregion

scr_Boss_Soul_Hitbox(sprite_index);