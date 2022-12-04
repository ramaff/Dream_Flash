/// @description  Boss Step Event

scr_Boss_Step();

scr_Room_Loop_Horizontal();

///Passive Attack Prep

///////////////////////////////////////////////////////////////////
//////////////////////////////////////Active Attack Prep
///////////////////////////


if bossActiveAttack[1] = 0 and bossActiveAttackDuration[1] <= 0 {
    if distance_to_point(x,instance_nearest(x,y,obj_Soul_Parent).perY) <= 30 {
        bossActiveAttack[1] = 3;
        if champ = 1 {
            bossActiveAttack[1] = 4;
        }
        bossActiveAttackDelay[1] = 0;
        bossActiveAttackDuration[1] = 0;
        bossActiveAttackCooldown[1] = 0;
    }
}

if bossActiveAttackDelay[1] <= 0 and bossActiveAttackCooldown[1] <= 0 and bossActiveAttackDuration[1] <= 0 {
    if bossActiveAttack[1] = 3 {
		scr_Boss_Dash_Setup();
        bossActiveAttackDelay[1] = 15;
        bossPatternCount = 200;
        bossPatternCountMax = bossPatternCount;
        bossPatternCooldown = 1;
        bossPatternCooldownMax = 1;
        bossActiveAttackDuration[1] = 15 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 30 + random(15);
		
		var bossdirection = scr_Soul_Point();
		if champ != 1 {
	        bossdashorientation = 0;
			if bossdirection > 90 and bossdirection <= 270 {
				bossdashorientation = -1;
				clamp(bossdirection,170,190);
			} else {
				bossdashorientation = 1;
				clamp(bossdirection,350,10);
			}
			bossDashDirection = bossdirection;
		}
		direction = bossdirection;
		
		bossMaxDashSpeed = 3 * bossmovespeed;
		bossDashSpeed = 0;
    }
    if bossActiveAttack[1] = 4 {
        var bossdirection = scr_Soul_Point();
        speed = 0.03 * bossmovespeed;
		direction = bossdirection;
    
        bossActiveAttackDelay[1] = 30;
        bossPatternCount = 120;
        bossPatternCountMax = bossPatternCount;
        bossPatternCooldown = 1;
        bossPatternCooldownMax = 1;
		bossPatternDirection = direction;
        bossActiveAttackDuration[1] = 15 + bossPatternCooldownMax * bossPatternCount;
        
        bossActiveAttackCooldown[1] = 60 + random(30);
    }
}

if bossActiveAttackDelay[1] <= 0 and bossActiveAttackCooldown[1] <= 0 and bossActiveAttackDuration[1] <= 0 {
    var bossdirection = scr_Soul_Point();
    speed = 0.33 * bossmovespeed;
    direction = bossdirection;
    
    bossActiveAttack[1] = choose(1);
	if champ = 1 {
		bossActiveAttack[1] = choose(5);
	}
    if currentphase = 2 {
        bossActiveAttack[1] = choose(2);
    }
    if bossActiveAttack[1] = 1 {
        bossActiveAttackDelay[1] = 10;
        bossPatternCount = 15 + irandom(2);
        bossPatternCooldown = 6;
        bossPatternCooldownMax = 6;
        if champ = 1 {
            bossPatternCooldown = 3;
            bossPatternCooldownMax = 3;
        }
        bossActiveAttackDuration[1] = 15 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 90 + random(30);
    }
    if bossActiveAttack[1] = 2 {
        bossActiveAttackDelay[1] = 10;
        bossActiveAttackDuration[1] = 30;
        bossActiveAttackCooldown[1] = 30 + random(5);
    }
	if bossActiveAttack[1] = 5 {
        bossActiveAttackDelay[1] = 10;
        bossActiveAttackDuration[1] = 30;
        bossActiveAttackCooldown[1] = 90 + random(30);
    }
    bossPatternCountMax = bossPatternCount;
}


/// Active Attack Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Spectre_Big_Blast;
    bullet_sprite = spr_Spectre_Blast;
    bullet_speed = bossbulletspeed * 1.5;
    bullet_power = bosspower * 1;
    bullet_direction = (-5 + random(10)) / bossaccuracy;
    bullet_lifespan = 240 + random(180);
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;
    
if bossActiveAttackDelay[1] <= 0 {
        
    if bossActiveAttack[1] = 2 {
		scr_Boss_Stretch("Vertical",0.4);
		
        bullet_count = 1;
        if champ = 1 {
            bullet_count = 1;
            bullet_spread = 20;
        }
        scr_Soul_Shoot();
    
        bossActiveAttack[1] = -2;
    }
	
	if bossActiveAttack[1] = 5 {
		scr_Boss_Stretch("Vertical",0.4)
		
		bullet_type = obj_Speed_Up_Direction_Bullet;
		bullet_size = 0.75;
		bullet_spread = 21;
        bullet_count = 3;
		bullet_speed = bossbulletspeed * 1.35;
        scr_Soul_Shoot();
		bullet_count = 5;
		bullet_speed = bossbulletspeed * 1;
        scr_Soul_Shoot();
		bullet_count = 7;
		bullet_speed = bossbulletspeed * 0.65;
        scr_Soul_Shoot();
    
        bossActiveAttack[1] = -5;
    }
    
    
    /*
    if bossActiveAttack[1] = 4 and speed < (0.5 * bossmovespeed) {
    
        bullet_type = obj_Basic_Bullet;
        bullet_sprite = spr_Enemy_Shot;
        bullet_count = 12;
        bullet_spread = 360;
        bullet_lifespan = 300;
        bullet_power = bosspower * 1;
        
        bullet_speedfac_min = 0.75;
        bullet_speedfac_add = 0.5;
        bullet_timefac_min = 0.9;
        bullet_timefac_add = 0.5;
        
        scr_Soul_Shoot_Vomit();
    
        scr_Default_Attack_Settings();
        
        bullet_type = obj_Laser_Beam_Charge;
        bullet_sprite = spr_Laser_Beam_Charge;
        bullet_speed = path_speed * 1;
        bullet_power = bosspower * 0.5;
        bullet_direction = 0 + (-1 + random(2)) / bossaccuracy;
        bullet_lifespan = 7;
        bullet_size = 1;
        bullet_count = 1;
        bullet_spread = 0;
        boss_radius = 0;
    
        scr_Direction_Beam();
        
        bossActiveAttack[1] = 0;
    
    }
    */
    
}

/* */
/// Active Attack Pattern Code
    
    scr_Beam_Shoot_Properties();
    scr_Default_Attack_Settings();
    bullet_type = obj_Speed_Up_Direction_Bullet;
    bullet_sprite = spr_Spectre_Blast;
    bullet_speed = bossbulletspeed * (0.99 + random(0.5));
    bullet_power = bosspower * 1; 
    bullet_direction = (-5 + random(10)) / bossaccuracy;
    bullet_lifespan = 120 + random(180);
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;

if bossActiveAttackDelay[1] <= 0 and bossPatternCooldown <= 0 and bossPatternCount > 0 {
        
    if bossActiveAttack[1] = 1 {
		scr_Boss_Stretch("Vertical",0.05);
		
		bullet_size = 0.75;
        bullet_direction = (-10 + random(20)) / bossaccuracy;
        scr_Soul_Shoot();
		
		if bossPatternCount = 1 {
			scr_Boss_Stretch("Vertical",0.15);
			
			bullet_count = 8;
			bullet_direction = (-5 + random(10)) / bossaccuracy;
			bullet_speed = bossbulletspeed * (0.99);
			bullet_spread = 15;
			
			scr_Soul_Shoot();
		}
    }
	if bossActiveAttack[1] = 3 {
		scr_Boss_Stretch("Horizontal",0.02)
		
        scr_Boss_Dash_Movement(27,60);
		
		speed = bossDashSpeed;
        direction = bossDashDirection;
	}
    if bossActiveAttack[1] = 4 {
		if bossPatternCount mod 5 = 0 {
		scr_Boss_Stretch("Vertical",0.05)
		}
    
        if bossPatternCount = bossPatternCountMax - 1 {
			scr_Default_Attack_Settings();
            bullet_type = obj_Basic_Bullet;
            bullet_sprite = spr_Glowy_Enemy_Shot;
            bullet_count = 8;
            bullet_spread = 360 / bullet_count;
			bullet_speed = bossbulletspeed * (1.3 + random(0.1));
			bullet_direction = random(360);
            bullet_lifespan = 300;
            bullet_power = bosspower * 1;
            
            scr_Just_Shoot();
			
			bullet_speed = bullet_speed * (1.7 + random(0.1));
			bullet_direction += 22.5;
			
			scr_Just_Shoot();
        }
    
        scr_Default_Attack_Settings();
        bullet_type = obj_Laser_Beam_Charge;
        bullet_sprite = spr_Laser_Beam_Charge;
        bullet_speed = 0;
        bullet_power = bosspower * 0.5;
        bullet_direction = bossPatternDirection + (-0.2 + random(0.4)) / bossaccuracy;
        bullet_lifespan = 7;
        bullet_size = 1;
        bullet_count = 1;
        bullet_spread = 0;
        boss_radius = 0;
        
        bullet_sprite = spr_Solid_Red_Beam;
        beam_sprite = spr_Solid_Red_Beam;
        beamSize = 0.75;
        bossbeamattackactive = 1;
		
		var beamstart = 120 - bossPatternCount
    
        if bossPatternCount < 100 {
            scr_Boss_Beam_Attack_New("Active",24,scr_Boss_Beam_Frame(beamstart));  
			souldir = scr_Soul_Point();
			var adif = angle_difference(bossPatternDirection, souldir);
            if adif < 0 {
                bossPatternDirection += 0.3;
            }
            if adif > 0 {
                bossPatternDirection -= 0.3;
            }
        } else {
            scr_Boss_Beam_Attack_New("Dormant",24,scr_Boss_Beam_Frame(beamstart));   
        }
    
    }
    
    bossPatternCount -= 1;
    bossPatternCooldown += bossPatternCooldownMax;
}

/* */
/// Active Attack Post
   
if bossActiveAttackDuration[1] <= 0 { 
    speed = 0.33 * bossmovespeed;
    friction = 0;
    bossActiveAttack[1] = 0;
    bossActiveAttack[2] = 0;
    bossActiveAttack[3] = 0;
    bossActiveAttack[0] = 0;
}

#region ///Sprites

scr_Boss_Size_Lerp_Dir(0.15);

if bossActiveAttack[1] = 0  {
    sprite_index = spr_Grim_Apparition;
} else if bossActiveAttack[1] != 0  {
    sprite_index = spr_Grim_Apparition_Attack;
	if image_index >= 4 and bossActiveAttackDuration[1] > 10 {
		image_index = 4;	
	}
}

#endregion


//sprite_index = spr_Peering_Spectre_old;
/* */
/*  */

scr_Boss_Soul_Hitbox(sprite_index);