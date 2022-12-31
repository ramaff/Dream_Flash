/// @description  Boss Step Event

image_angle = direction + 180

if direction <= 90 || direction > 270 {
	image_angle = direction;
}

scr_Boss_Step();

///Passive Attack Prep

if bossPassiveAttackDelay[1] <= 0 and bossPassiveAttackCooldown[1] <= 0 {
    
}


///Passive Attack Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Sorrow_Bullet;
    bullet_sprite = spr_Sorrow_Bullet;
    bullet_speed = bossbulletspeed * 0.9;
    bullet_power = bosspower * 1.5;
    bullet_direction = image_angle - 90 + (-15 + random(30)) / bossaccuracy;
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
    scr_Just_Shoot();    
}
if bossPassiveAttack[1] = 2 {
    bullet_type = obj_Toxic_Sorrow_Bullet;
    bullet_sprite = spr_Toxic_Sorrow_Bullet;
    
    if currentphase = 2 {
        bullet_count = 2;
        bullet_spread = 15 + irandom(15);
    }
    scr_Just_Shoot();
}
if bossPassiveAttack[1] = 3 {
    if currentphase = 2 {
        bullet_count = 3;
        bullet_spread = 10 + irandom(15);
    }
    scr_Just_Shoot();    
}

bossPassiveAttack[1] = 0;
bossPassiveAttack[2] = 0;

///Active Attack Prep

if bossActiveAttackDelay[1] <= 0 and bossActiveAttackCooldown[1] <= 0 and bossActiveAttackDuration[1] <= 0 {
    
    bossActiveAttack[1] = choose(1,2);
    if currentphase = 2 {
        bossActiveAttack[1] = choose(3,4);
    }
    if champ = 1 {
        bossActiveAttack[1] = choose(5);
        if currentphase = 2 {
            bossActiveAttack[1] = choose(6);
        }
    }
    
    if bossActiveAttack[1] = 1 {
        bossActiveAttackDelay[1] = 25;
        bossPatternsCount[1] = 6;
		bossPatternsCountMax[1] = bossPatternsCount[1];
        bossPatternsCooldown[1] = 5;
        bossPatternsCooldownMax[1] = 45;
        bossActiveAttackDuration[1] = 10 + bossPatternsCooldownMax[1] * bossPatternsCount[1];
        bossActiveAttackCooldown[1] = 120 + random(30);
    }
    
    if bossActiveAttack[1] = 2 {
        bossActiveAttackDelay[1] = 25;
        bossPatternsCount[1] = 20 + irandom(3);
		bossPatternsCountMax[1] = bossPatternsCount[1];
        bossPatternsCooldown[1] = 5;
        bossPatternsCooldownMax[1] = 7;
        bossActiveAttackDuration[1] = 10 + bossPatternsCooldownMax[1] * bossPatternsCount[1];
        bossActiveAttackCooldown[1] = 120 + random(30);
    }
    if bossActiveAttack[1] = 3 {
        bossActiveAttackDelay[1] = 25;
        bossPatternsCount[1] = 18;
		bossPatternsCountMax[1] = bossPatternsCount[1];
        bossPatternsCooldown[1] = 5;
        bossPatternsCooldownMax[1] = 5;
        bossActiveAttackDuration[1] = 10 + bossPatternsCooldownMax[1] * bossPatternsCount[1];
        bossActiveAttackCooldown[1] = 120 + random(30);
    }
    if bossActiveAttack[1] = 4 {
        bossActiveAttackDelay[1] = 25;
        bossPatternsCount[1] = 3;
		bossPatternsCountMax[1] = bossPatternsCount[1];
        bossPatternsCooldown[1] = 5;
        bossPatternsCooldownMax[1] = 30;
        bossActiveAttackDuration[1] = 10 + bossPatternsCooldownMax[1] * bossPatternsCount[1];
        bossActiveAttackCooldown[1] = 120 + random(30);
    }
	if bossActiveAttack[1] = 5 {
		bossActiveAttackDelay[1] = 25;
        bossPatternsCount[1] = 240;
        bossPatternCountMax = bossPatternsCount[1];
		
		beamTurnSpeed = 0.133;
		beamAccel = 0.0015;
		bossPatternDirection = image_angle - 90;
        bossPatternsCooldown[1] = 1;
        bossPatternsCooldownMax[1] = 1;
        bossActiveAttackDuration[1] = 10 + bossattackspeed * bossPatternsCooldownMax[1] * bossPatternsCount[1];
        bossActiveAttackCooldown[1] = 120 + random(30);
	}
	if bossActiveAttack[1] = 6 {
		bossActiveAttackDelay[1] = 25;
        bossPatternsCount[1] = 360;
        bossPatternCountMax = bossPatternsCount[1];
		
		beamTurnSpeed = 0.133;
		beamAccel = 0.0015;
		bossPatternDirection = 0
        bossPatternsCooldown[1] = 1;
        bossPatternsCooldownMax[1] = 1;
        bossActiveAttackDuration[1] = 10 + bossattackspeed * bossPatternsCooldownMax[1] * bossPatternsCount[1];
        bossActiveAttackCooldown[1] = 120 + random(30);
	}
	bossPatternsCountMax[1] = bossPatternsCount[1];
}
/*
if bossActiveAttackDelay[2] <= 0 and bossActiveAttackCooldown[2] <= 0 and bossActiveAttackDuration[2] <= 0 {
    
    bossActiveAttack[2] = choose(1);
    if currentphase = 2 {
        bossActiveAttack[2] = choose(2);
    }
    if champ = 1 {
        bossActiveAttack[2] = choose(3);
        if currentphase = 2 {
            bossActiveAttack[2] = choose(4);
        }
    }
    
    if bossActiveAttack[2] = 1 {
        bossActiveAttackDelay[2] = 10;
        bossActiveAttackDuration[2] = 10;
        bossActiveAttackCooldown[2] = 50 + random(30);
    }
    
    if bossActiveAttack[2] = 2 {
        bossActiveAttackDelay[2] = 15;
        bossPatternsCount[2] = 8 + irandom(3);
        bossPatternsCooldown[2] = 6;
        bossPatternsCooldownMax[2] = 6;
        bossActiveAttackDuration[2] = 30 + bossPatternsCooldownMax[2] * bossPatternsCount[2];
        bossActiveAttackCooldown[2] = 90 + random(60);
    }
    if bossActiveAttack[2] = 3 {
        bossActiveAttackDelay[2] = 15;
        bossPatternsCount[2] = 6;
        bossPatternsCooldown[2] = 30;
        bossPatternsCooldownMax[2] = 30;
        bossActiveAttackDuration[2] = 30 + bossPatternsCooldownMax[2] * bossPatternsCount[2];
        bossActiveAttackCooldown[2] = 120 + random(30);
    }
    if bossActiveAttack[2] = 4 {
        bossActiveAttackDelay[2] = 15;
        bossPatternsCount[2] = 120;
        bossPatternCountMax = bossPatternsCount[2];
        bossPatternsCooldown[2] = 1;
        bossPatternsCooldownMax[2] = 1;
        bossActiveAttackDuration[2] = 30 + bossPatternsCooldownMax[2] * bossPatternsCount[2];
        bossActiveAttackCooldown[2] = 180 + random(60);
    }
}

if bossActiveAttackDelay[3] <= 0 and bossActiveAttackCooldown[3] <= 0 and bossActiveAttackDuration[3] <= 0 {
    
    bossActiveAttack[3] = choose(1);
    if currentphase = 2 {
        bossActiveAttack[3] = choose(2);
    }
    if champ = 1 {
        bossActiveAttack[3] = choose(3);
        if currentphase = 2 {
            bossActiveAttack[3] = choose(4);
        }
    }
    
    if bossActiveAttack[3] = 1 {
        bossActiveAttackDelay[3] = 15;
        bossPatternsCount[3] = 8 + irandom(3);
        bossPatternsCooldown[3] = 10;
        bossPatternsCooldownMax[3] = 10;
        bossActiveAttackDuration[3] = 30 + bossPatternsCooldownMax[3] * bossPatternsCount[3];
        bossActiveAttackCooldown[3] = 150 + random(60);
    }
    if bossActiveAttack[3] = 2 {
        bossActiveAttackDelay[3] = 15;
        bossPatternsCount[3] = 3;
        bossPatternsCountMax[3] = 3;
        bossPatternsCooldown[3] = 20;
        bossPatternsCooldownMax[3] = 20;
        bossActiveAttackDuration[3] = 30 + bossPatternsCooldownMax[3] * bossPatternsCount[3];
        bossActiveAttackCooldown[3] = 180 + random(60);
    }
    if bossActiveAttack[3] = 3 {
        bossActiveAttackDelay[3] = 15;
        bossPatternsCount[3] = 120;
        bossPatternCountMax = bossPatternsCount[3];
        bossPatternsCooldown[3] = 1;
        bossPatternsCooldownMax[3] = 1;
        bossActiveAttackDuration[3] = 30 + bossPatternsCooldownMax[3] * bossPatternsCount[3];
        bossActiveAttackCooldown[3] = 180 + random(60);
    }
    if bossActiveAttack[3] = 4 {
        bossActiveAttackDelay[3] = 15;
        bossPatternsCount[3] = 3;
        bossPatternsCountMax[3] = 3;
        bossPatternsCooldown[3] = 20;
        bossPatternsCooldownMax[3] = 20;
        bossActiveAttackDuration[3] = 30 + bossPatternsCooldownMax[3] * bossPatternsCount[3];
        bossActiveAttackCooldown[3] = 180 + random(60);
    }
}
*/


/// Active Attack Code
    
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
        
	/*
    if bossActiveAttack[1] = 1 {
        bullet_type = obj_Phase_Bullet;
        bullet_sprite = spr_Enemy_Shot;
        bullet_speed = bossbulletspeed * 1.2;
        bullet_count = 5;
        bullet_spread = 15;
        bullet_direction = direction + 90 + (-10 + random(20)) / bossaccuracy;
        boss_xoffset = lengthdir_x(-85,direction + 180);
        boss_yoffset = lengthdir_y(-85,direction + 180);
        scr_Offset_Normal_Shoot();
		
		boss_xoffset = lengthdir_x(85,direction + 180);
        boss_yoffset = lengthdir_y(85,direction + 180);
        scr_Offset_Normal_Shoot();
        
        bossActiveAttack[1] = 0;
    }
	*/
}


/// Active Attack Pattern Code

    scr_Beam_Shoot_Properties();
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Echolocation_Shot;
    bullet_sprite = spr_Echolocation_Shot;
    bullet_speed = bossbulletspeed * 1.4;
    bullet_power = bosspower;
    bullet_direction = image_angle - 90 + (-10 + random(20)) / bossaccuracy;
	bullet_direction = scr_Soul_Point() + (-10 + random(20)) / bossaccuracy;
    bullet_lifespan = 800;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;
    
if bossActiveAttackDelay[1] <= 0 and bossPatternsCooldown[1] <= 0 and bossPatternsCount[1] > 0 {
        
	if bossActiveAttack[1] = 1 {
		scr_Boss_Stretch("Horizontal", 0.1);
		
        bullet_type = obj_Phase_Bullet;
        bullet_sprite = spr_Glowy_Enemy_Shot;
		if bossPatternsCount[1] = bossPatternsCountMax[1] {
			bullet_speed = bossbulletspeed * 0.9;
	        bullet_count = 15;
	        bullet_spread = 15;
		} else {
	        bullet_speed = bossbulletspeed * 1.35;
			bullet_sprite = spr_Glowy_Orange_Shot;
	        bullet_count = 5;
	        bullet_spread = 18 + irandom(12);
		}
        bullet_direction = image_angle - 90 + (-10 + random(20)) / bossaccuracy;
        boss_xoffset = lengthdir_x(-85,image_angle + 180);
        boss_yoffset = lengthdir_y(-85,image_angle + 180);
        scr_Offset_Normal_Shoot();
		
		boss_xoffset = lengthdir_x(85,image_angle + 180);
        boss_yoffset = lengthdir_y(85,image_angle + 180);
        scr_Offset_Normal_Shoot();
    }
	
    if bossActiveAttack[1] = 2 { 
		scr_Boss_Stretch("Horizontal", 0.1);
		
        bullet_type = obj_Phase_Bullet;
        bullet_sprite = spr_Glowy_Enemy_Shot;
		if (bossPatternsCount[1] = bossPatternsCountMax[1]) || (bossPatternsCount[1] = bossPatternsCountMax[1] - 6) {
			bullet_speed = bossbulletspeed * 0.9;
	        bullet_count = 12;
	        bullet_spread = 24;
			
			bullet_direction = image_angle - 90 + (-10 + random(20)) / bossaccuracy;
	        boss_xoffset = lengthdir_x(-85,image_angle + 180);
	        boss_yoffset = lengthdir_y(-85,image_angle + 180);
	        scr_Offset_Normal_Shoot();
		
			boss_xoffset = lengthdir_x(85,image_angle + 180);
	        boss_yoffset = lengthdir_y(85,image_angle + 180);
	        scr_Offset_Normal_Shoot();
		}
		
		bullet_type = obj_Degrade_Home_Bullet;
        bullet_sprite = spr_Soaring_Tear;
        bullet_power = bosspower * 1.5;
		bullet_speed = bossbulletspeed * (1.85 + random(0.2));
        bullet_size = 0.8 + random(0.3);
        bullet_direction = image_angle - 90 + (-10 + random(20)) / bossaccuracy;
        bullet_count = 1;
        scr_Just_Shoot();
    }
    if bossActiveAttack[1] = 3 { 
		scr_Boss_Stretch("Horizontal", 0.04);
		
        bullet_type = obj_Phase_Bullet;
        bullet_sprite = spr_Glowy_Enemy_Shot;
        bullet_speed = bossbulletspeed * 1.55;
        bullet_direction = image_angle - 90 + (-10 + random(20)) / bossaccuracy;
        bullet_count = 2;
        bullet_spread = 180 - (bossPatternsCount[1] * 9);
        boss_xoffset = lengthdir_x(85,image_angle + 180);
        boss_yoffset = lengthdir_y(85,image_angle + 180);
        scr_Offset_Normal_Shoot();
		
		boss_xoffset = lengthdir_x(-85,image_angle + 180);
	    boss_yoffset = lengthdir_y(-85,image_angle + 180);
	    scr_Offset_Normal_Shoot();
		
		/*
		if bossPatternCount = 1 {
			boss_xoffset = 0;
		    boss_yoffset = 0;
			bullet_count = 20;
			bullet_spread = 10;
		    scr_Offset_Normal_Shoot();
		}
		*/
		
    }
    if bossActiveAttack[1] = 4 { 
		scr_Boss_Stretch("Horizontal", 0.15);
		
        bullet_type = obj_Echolocation_Shot;
        bullet_sprite = spr_Soaring_Echo;
        bullet_lifespan = 540;
        bullet_speed = bossbulletspeed * (1.5 - 0.25 * (bossPatternsCountMax[1] - bossPatternsCount[1]));
        bullet_count = 3 + 3 * (bossPatternsCountMax[1] - bossPatternsCount[1]);
		if bossPatternCount = 1 {
			bullet_count = 13;	
		}
        bullet_spread = 15;
        scr_Just_Shoot();
    }
	
	if bossActiveAttack[1] = 5 {
        scr_Default_Attack_Settings();
        bullet_power = bosspower * 0.5;
        bullet_direction = bossPatternDirection + (-0.1 + random(0.2)) / bossaccuracy;
        bullet_size = 0.75;
        bullet_count = 1;
        bullet_spread = 0;
        boss_radius = 0;
        
        bullet_sprite = spr_Arcane_Beam;
        beam_sprite = spr_Arcane_Beam;
        bossbeamattackactive = 1;
		beamSize = 0.75
		
		var beamstart = bossPatternsCountMax[1] - bossPatternsCount[1];
    
		var beamFr = min(5,floor((bossPatternsCountMax[1] - bossPatternsCount[1]) / 5));
		
        if bossPatternsCount[1] < 210 {
           scr_Boss_Beam_Attack_New("Active",36,beamFr);
			
			if bossPatternsCount[1] < 210 {
				souldir = scr_Soul_Point();
				var adif = angle_difference(bossPatternDirection, souldir);
	            if adif < 0 {
	                bossPatternDirection += beamTurnSpeed;
	            }
	            if adif > 0 {
	                bossPatternDirection -= beamTurnSpeed;
	            }	
				beamTurnSpeed += beamAccel;
				beamAccel -= beamAccel / 200;
			}
        } else {
            scr_Boss_Beam_Attack_New("Dormant",36,beamFr); 
        }
		
		
		if frac(bossPatternsCount[1] / 35) = 0 {
			scr_Boss_Stretch("Horizontal", 0.1);
			
			bullet_power = bosspower;
			bullet_type = obj_Phase_Bullet;
	        bullet_sprite = spr_Glowy_Blue_Shot;
	        bullet_speed = bossbulletspeed * 1.3;
	        bullet_direction = image_angle - 90 + (-10 + random(20)) / bossaccuracy;
			bullet_lifespan = 450;
	        bullet_count = 9;
	        bullet_spread = 30;
			bullet_size = 1.2;
	        boss_xoffset = lengthdir_x(85,image_angle + 180);
	        boss_yoffset = lengthdir_y(85,image_angle + 180);
	        scr_Offset_Normal_Shoot();
			
			boss_xoffset = lengthdir_x(-85,image_angle + 180);
			boss_yoffset = lengthdir_y(-85,image_angle + 180);
			scr_Offset_Normal_Shoot();
		}
        
    }  
	
	if bossActiveAttack[1] = 6 {
        scr_Default_Attack_Settings();
        bullet_power = bosspower * 0.5;
        bullet_size = 1;
        bullet_count = 1;
        bullet_spread = 0;
        boss_radius = 0;
        bullet_direction = image_angle - 90 + (-0.1 + random(0.2)) / bossaccuracy;
        bullet_sprite = spr_Arcane_Beam;
        beam_sprite = spr_Arcane_Beam;
        bossbeamattackactive = 1;
		beamSize = 0.7;
		
		var beamstart = bossPatternsCountMax[1] - bossPatternsCount[1];
		
		var beamFr = min(5,floor((bossPatternsCountMax[1] - bossPatternsCount[1]) / 5));
    
        if bossPatternsCount[1] < 330 {
			if bossPatternsCount[1] mod 10 = 0 {
				scr_Boss_Stretch("Horizontal", 0.1);	
			}
			
			bullet_direction = -bossPatternDirection + image_angle - 90 + (-0.1 + random(0.2)) / bossaccuracy;
			boss_xoffset = lengthdir_x(85,image_angle + 180);
	        boss_yoffset = lengthdir_y(85,image_angle + 180);
	        bossoffsetangle = 0;
            scr_Boss_Beam_Attack_New("Active",36, beamFr);
			
			bullet_direction = bossPatternDirection + image_angle - 90 + (-0.1 + random(0.2)) / bossaccuracy;
			boss_xoffset = lengthdir_x(-85,image_angle + 180);
	        boss_yoffset = lengthdir_y(-85,image_angle + 180);
	        bossoffsetangle = 0;
            scr_Boss_Beam_Attack_New("Active",36, beamFr);
			
			if bossPatternsCount[1] < 325 {
				bossPatternDirection += beamTurnSpeed;
				beamTurnSpeed += beamAccel;
				
				beamAccel -= beamAccel / 100;
			}
        } else {
            boss_xoffset = lengthdir_x(85,image_angle + 180);
	        boss_yoffset = lengthdir_y(85,image_angle + 180);
	        bossoffsetangle = 0;
            scr_Boss_Beam_Attack_New("Dormant",36,beamFr);
			
			boss_xoffset = lengthdir_x(-85,image_angle + 180);
	        boss_yoffset = lengthdir_y(-85,image_angle + 180);
	        bossoffsetangle = 0;
            scr_Boss_Beam_Attack_New("Dormant",36,beamFr);
        }
		
		if frac(bossPatternsCount[1] / 100) = 0 {
			scr_Boss_Stretch("Horizontal", 0.15);
			
			bullet_power = bosspower;
			bullet_type = obj_Arcane_Echo;
	        bullet_sprite = spr_Arcane_Echo;
	        bullet_lifespan = 540;
	        bullet_speed = bossbulletspeed * (1.15);
	        bullet_count = 3;
	        bullet_spread = 70;
	        scr_Just_Shoot();
		}
        
    } 
    
    bossPatternsCount[1] -= 1;
    bossPatternsCooldown[1] += bossPatternsCooldownMax[1];
}

/*
if bossActiveAttackDelay[2] <= 0 and bossPatternsCooldown[2] <= 0 and bossPatternsCount[2] > 0 {
        
    if bossActiveAttack[2] = 2 { 
        bullet_type = obj_Phase_Bullet;
        bullet_sprite = spr_Enemy_Shot;
        bullet_speed = bossbulletspeed * 1.1;
        bullet_direction = direction + 90 + (-10 + random(20)) / bossaccuracy;
        bullet_count = 2;
        bullet_spread = 10 + random(10);
        boss_xoffset = lengthdir_x(85,direction + 180);
        boss_yoffset = lengthdir_y(85,direction + 180);
        scr_Offset_Normal_Shoot();
    }
    if bossActiveAttack[2] = 3 { 
        bullet_type = obj_Phase_Bullet;
        bullet_sprite = spr_Arcane_Bullet;
        bullet_speed = bossbulletspeed * 1.55;
        bullet_direction = direction + 90 + (-10 + random(20)) / bossaccuracy;
        bullet_count = 5;
        bullet_spread = 21;
        boss_xoffset = lengthdir_x(85,direction + 180);
        boss_yoffset = lengthdir_y(85,direction + 180);
        scr_Offset_Normal_Shoot();
    }
    if bossActiveAttack[2] = 4 { 
        scr_Default_Attack_Settings();
        bullet_power = bosspower * 0.5;
        bullet_direction = direction + 90 + (-0.1 + random(0.2)) / bossaccuracy;
        bullet_size = 1;
        bullet_count = 1;
        bullet_spread = 0;
        boss_radius = 0;
        
        bullet_sprite = spr_Arcane_Beam;
        beam_sprite = spr_Arcane_Beam;
        bossbeamattackactive = 1;
    
        boss_xoffset = lengthdir_x(85,direction + 180);
        boss_yoffset = lengthdir_y(85,direction + 180);
        bossoffsetangle = 0;
        if bossPatternsCount[2] < 90 {
            scr_Boss_Beam_Attack("Active",36);  
        } else {
            scr_Boss_Beam_Attack("Dormant",36);  
        }
    }
    
    bossPatternsCount[2] -= 1;
    bossPatternsCooldown[2] += bossPatternsCooldownMax[2];
}

if bossActiveAttackDelay[3] <= 0 and bossPatternsCooldown[3] <= 0 and bossPatternsCount[3] > 0 {
        
    if bossActiveAttack[3] = 1 { // Holy Tear Barrage
        bullet_type = obj_Slight_Home_Bullet;
        bullet_sprite = spr_Soaring_Tear;
        bullet_power = bosspower * 1.5;
        bullet_size = 0.75
        bullet_direction = direction + 90 + (-10 + random(20)) / bossaccuracy;
        bullet_count = 1;
        scr_Just_Shoot();
    }
    if bossActiveAttack[3] = 2 { // Echo Barrage
        bullet_type = obj_Echolocation_Shot;
        bullet_sprite = spr_Soaring_Echo;
        bullet_lifespan = 540;
        bullet_speed = bossbulletspeed * 1.75;
        bullet_count = 3 + 1 * (bossPatternsCountMax[3] - bossPatternsCount[3]);
        bullet_spread = 15;
        scr_Just_Shoot();
    }
    
    if bossActiveAttack[3] = 3 {
        scr_Default_Attack_Settings();
        bullet_power = bosspower * 0.5;
        bullet_direction = direction + 90 + (-0.1 + random(0.2)) / bossaccuracy;
        bullet_size = 1;
        bullet_count = 1;
        bullet_spread = 0;
        boss_radius = 0;
        
        bullet_sprite = spr_Arcane_Beam;
        beam_sprite = spr_Arcane_Beam;
        bossbeamattackactive = 1;
    
        if bossPatternsCount[3] < 90 {
            scr_Boss_Beam_Attack("Active",36);  
        } else {
            scr_Boss_Beam_Attack("Dormant",36);  
        }
        
    }  
    
    if bossActiveAttack[3] = 4 { // Echo Barrage
        bullet_sprite = spr_Arcane_Echo;
        bullet_type = obj_Arcane_Echo;
        bullet_speed = bossbulletspeed * 1.75;
        bullet_lifespan = 540;
        bullet_count = 3 + 1 * (bossPatternsCountMax[3] - bossPatternsCount[3]);
        bullet_spread = 18;
        scr_Just_Shoot();
    }
    
    bossPatternsCount[3] -= 1;
    bossPatternsCooldown[3] += bossPatternsCooldownMax[3];
}
*/

/// Active Attack Post
   
if bossActiveAttackDuration[1] <= 0 { 
    bossActiveAttack[1] = 0;
}

//if champ = 0 {
    if (bossActiveAttack[1] != 0 and bossActiveAttackDuration[1] > 0) {
		path_speed = bossmovespeed * 0.05;
		if champ = 1 {
			path_speed = bossmovespeed * 0.03;
		}
    } else {
    path_speed = bossmovespeed * 1;
    }
//}

#region /// Boss Sprite Code

scr_Boss_Size_Lerp(0.15);

//if champ = 0 {
	if bossActiveAttack[1] != 0 { // Sonic Attack
		sprite_index = spr_Soaring_Sorrows_Attack;
		if image_index >= 6 and bossActiveAttackDuration[1] > 10 {
			image_index = 6;	
		}
	} else { // Default
		sprite_index = spr_Soaring_Sorrows;		
	}
//}

#endregion

scr_Boss_Soul_Hitbox(sprite_index);