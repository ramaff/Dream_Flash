/// @description  Boss Step Event

scr_Boss_Step();

scr_Boss_Two_Face_Direction();

scr_Spirit_Outside_View();

var min_teleport_dist = 150;
if tier >= 2 {
	min_teleport_dist = 225;	
}

///Passive Attack Prep

if bossPassiveAttackDelay[1] <= 0 and bossPassiveAttackCooldown[1] <= 0 {
        bossPassiveAttack[1] = 1;
        bossPassiveAttackCooldown[1] = 15;
        bossPassiveAttackDelay[1] = 0;
}

if bossActiveAttack[1] = 2 {
	random_y = 1;
    y_displacement = 0;
    scr_Room_Loop_Target();
	if x < ((room_width / 2) - (global.roomSizeX / 2)) {
		bossPatternCooldown = 30;
		image_index = 0;	
	}
	speed = lerp(speed, bossmovespeed * 5, bossmovespeed * 0.05);
	direction = 0;
} else {
	var bossdirection = scr_Soul_Point();
    speed = 0.95 * bossmovespeed;
    direction = bossdirection;
    if (bossActiveAttack[1] = 1 || bossActiveAttack[1] = 4) and bossActiveAttackDuration[1] > 0 {
        speed = 0;
    }
}
if bossPatternCooldown < 32 and bossPatternCooldown > 30 and (bossActiveAttack[1] = 1 || bossActiveAttack[1] = 4) and bossPatternCount != bossPatternCountMax {
	bossPatternCooldown = 30;	
}
if (bossActiveAttack[1] = 1 || bossActiveAttack[1] = 4) and bossPatternCooldown = 30 and bossPatternCount != bossPatternCountMax {
	image_index = 0;
	scr_Boss_Teleport();
}

///Passive Attack Code   

bossPassiveAttack[1] = 0;
bossPassiveAttack[2] = 0;

///Active Attack Prep

if bossActiveAttackDelay[1] <= 0 and bossActiveAttackCooldown[1] <= 0 and bossActiveAttackDuration[1] <= 0 {
    
    if currentphase = 2 {
        bossActiveAttack[1] = choose(1,2,3);
        bossActiveAttackDelay[1] = 10;
        if tier >= 2 {
            bossActiveAttack[1] = choose(4,2,5);
        }
    }
	
	bossActiveAttackDelay[1] = 30;
    
    if bossActiveAttack[1] = 1 {
		scr_Boss_Stretch("Horizontal", 0.2);
		scr_Boss_Teleport();
        bossActiveAttackCooldown[1] = (180 + random(30));
        bossPatternCount = 183;
        bossPatternCountMax = bossPatternCount - 3;
        bossPatternCooldown = 30;
        bossPatternCooldownMax = 90;
        bulletdirection = 0;
        bossPatternDirection = bulletdirection;
        bossActiveAttackDuration[1] = 15 + 453;
    }
    if bossActiveAttack[1] = 2 {
		scr_Boss_Stretch("Horizontal", 0.2);
        bossActiveAttackCooldown[1] = (180 + random(30));
        bossPatternCount = 4;
        bossPatternCooldown = 200;
        bossPatternCooldownMax = 200;
        if tier >= 2 {
            bossPatternCount = 5;
        }
        bulletdirection = random(360);
        bossPatternDirection = bulletdirection;
        bossActiveAttackDuration[1] = -150 + bossPatternCooldownMax * (bossPatternCount - 1);
    }
    if bossActiveAttack[1] = 3 {
		scr_Boss_Stretch("Horizontal", 0.2);
        bossPatternCount = 3;
        bossPatternCooldown = 3;
        bossPatternCooldownMax = 72;
        bossActiveAttackCooldown[1] = (120 + random(30));
        bossActiveAttackDuration[1] = 15 + bossPatternCooldown * bossPatternCount;
    }
    if bossActiveAttack[1] = 4 {
		
		scr_Boss_Stretch("Horizontal", 0.2);
        bossActiveAttackCooldown[1] = (180 + random(30));
        bossPatternCount = 633;
        bossPatternCountMax = bossPatternCount - 3;
        bossPatternCooldown = 30;
        bossPatternCooldownMax = 60;
        bulletdirection = 0;
        bossPatternDirection = bulletdirection;
        bossActiveAttackDuration[1] = 15 + 803;
    }
    if bossActiveAttack[1] = 5 {
		scr_Boss_Stretch("Horizontal", 0.2);
        bossActiveAttackCooldown[1] = (180 + random(30));
        bossPatternCount = 1;
        bossPatternCooldown = 6;
        bossPatternCooldownMax = 6;
        bulletdirection = random(360);
        bossPatternDirection = bulletdirection;
        bossActiveAttackDuration[1] = 15 + bossPatternCooldown * bossPatternCount;
    }
    
}


/// Active Attack Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Loathing_Explode_Bullet;
    bullet_sprite = spr_Big_Glowy_Red_Shot
    bullet_speed = bossbulletspeed;
    bullet_power = bosspower * 2;
    bullet_direction = (-5 + random(10)) / bossaccuracy;
    bullet_lifespan = 600;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;

if bossActiveAttackDelay[1] <= 0 {        
    
    if bossActiveAttack[1] = 3 {
		scr_Boss_Stretch("Vertical", 0.4);
		
		bullet_part = 2;
		bullet_part_sprite = spr_Soul_Big_Bit;
		bullet_part_area = 25;
		bullet_part_life = 40;
		bullet_part_color1 = make_color_rgb(255,0,50);
		bullet_part_color2 = make_color_rgb(255,0,0);
		bullet_part_frequency = 3;
		
        bullet_count = 1;
        bullet_spread = 10 + irandom(20);
        bullet_speed = bossbulletspeed * (1.55 + random(0.15));
        scr_Soul_Shoot();
        
        bossActiveAttack[1] = -3;   
    }
    
}

/// Active Attack Pattern Code

    scr_Beam_Shoot_Properties();
    scr_Default_Attack_Settings();
    bullet_type = obj_Homing_Bullet;
    bullet_sprite = spr_Glowy_Enemy_Shot;
    bullet_speed = bossbulletspeed;
    bullet_power = bosspower;
    bullet_direction = (-5 + random(10)) / bossaccuracy;
    bullet_lifespan = 300;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;
	
	bullet_part = 2;
	bullet_part_sprite = spr_Bullet_Part;
	bullet_part_area = 25;
	bullet_part_life = 40;
	bullet_part_color1 = make_color_rgb(255,0,0);
	bullet_part_color2 = make_color_rgb(255,0,0);
	bullet_part_frequency = 4;

if bossActiveAttackDelay[1] <= 0 and bossPatternCooldown <= 0 and bossPatternCount > 0 {
        
    if bossActiveAttack[1] = 1 {
        if bossPatternCount > (bossPatternCountMax) {
			scr_Boss_Stretch("Vertical", 0.4);
            bullet_speed = bossbulletspeed * (1.45 + random(0.3));
            bullet_direction = (-10 + random(20)) / bossaccuracy;
            bullet_count = 4;
			if bossPatternCount mod 2 = 0 {
				bullet_count = 3;
			}
            if tier >= 1 {
                bullet_count += 2;
                bullet_speed += bossbulletspeed * 0.1;
            }
            bullet_spread = 180 / bullet_count;
            scr_Soul_Shoot();
			direction = scr_Soul_Point();
        }
        if bossPatternCount = (bossPatternCountMax) {
            scr_Boss_Teleport_Near(min_teleport_dist, min_teleport_dist + 50);
			scr_Boss_Stretch("Horizontal", 0.2);
            bossPatternCooldownMax = 1;
			
			direction = scr_Soul_Point();
			image_index = 0;
        }
        speed = 0;
        if bossPatternCount <= (bossPatternCountMax - 30) {
            scr_Default_Attack_Settings();
            bullet_power = bosspower * 0.5;
            bullet_direction = 45 + (-0.1 + random(0.2)) / bossaccuracy;
            if bossPatternCount < 30 {
				bullet_size = 0.02 * bossPatternCount;	
			}
			if bossPatternCount > (bossPatternCountMax - 60) {
				bullet_size = 0.02 * ((bossPatternCountMax - 30) - bossPatternCount);	
			}
			if bullet_size > 0.6 {
				bullet_size = 0.6;	
			}
            bullet_count = 4;
            bullet_spread = 90;
            boss_radius = 0;
            beamSize = bullet_size;
            
            bullet_sprite = spr_Red_Beam;
            beam_sprite = spr_Red_Beam;
            bossbeamattackactive = 1;
			
			var beamstart = (bossPatternCountMax - 30) - bossPatternCount;
			
			scr_Easy_Boss_Beam_Shoot(bossPatternCountMax - 30, 36);
        
            if bossPatternCount < (bossPatternCountMax - 60) and bossPatternCount > 30 {
				if bossPatternCount mod 5 = 0 {
					scr_Boss_Stretch("Vertical", 0.1);	
				}
			
				//scr_Boss_Beam_Attack_New("Active",35,scr_Boss_Beam_Frame(beamstart));
            } else {
                //scr_Boss_Beam_Attack_New("Dormant",35,scr_Boss_Beam_Frame(beamstart));
            }
        }
    }
    if bossActiveAttack[1] = 2 {
		scr_Boss_Stretch("Vertical", 0.4);
		
        bullet_speed = bossbulletspeed * (1.6 + random(0.2));
        bullet_count = 4;
        bullet_spread = 48;
        bullet_lifespan = 240;
        if bossPatternCount mod 2 = 0 {
            bullet_count = 3;
            bullet_speed = bossbulletspeed * (2.05 + random(0.2));
            bullet_spread = 60;
        }
        if tier >= 1 {
            bullet_speed += bossbulletspeed * 0.1;
        }
        if tier >= 2 {
            bullet_count += 1;
            bullet_speed += bossbulletspeed * 0.1;
        }
        scr_Soul_Shoot();
    }
    if bossActiveAttack[1] = 3 {
		scr_Boss_Stretch("Vertical", 0.4);
		
        bullet_count = 1;
        bullet_spread = 90;
        bullet_speed = bossbulletspeed * (1.55 + random(0.15));
        if tier >= 2 {
            bullet_count += 2;
            bullet_speed += bossbulletspeed * 0.15;
        }
        scr_Soul_Shoot();
        
    }
    
     if bossActiveAttack[1] = 4 {
        if bossPatternCount > (bossPatternCountMax) {
			scr_Boss_Stretch("Vertical", 0.4);
            bullet_speed = bossbulletspeed * 1.45;
            bullet_direction = (-10 + random(20)) / bossaccuracy;
            bullet_count = 6;
            bullet_spread = 225 / bullet_count;
			bullet_lifespan = 240;
            scr_Soul_Shoot();
			direction = scr_Soul_Point();
        }
        if bossPatternCount = (bossPatternCountMax) {
            scr_Boss_Teleport_Near(min_teleport_dist, min_teleport_dist + 50);
            bossPatternCooldownMax = 1;
			scr_Boss_Stretch("Horizontal", 0.2);
			
			direction = scr_Soul_Point();
			image_index = 0;
        }
        speed = 0;
        if bossPatternCount <= (bossPatternCountMax - 30) {
            scr_Default_Attack_Settings();
            bullet_power = bosspower * 0.5;
            bullet_direction = bossPatternDirection + 45 + (-0.1 + random(0.2)) / bossaccuracy;
            bullet_size = 0.6;
			if bossPatternCount < 30 {
				bullet_size = 0.02 * bossPatternCount;	
			}
			if bossPatternCount > (bossPatternCountMax - 60) {
				bullet_size = 0.02 * ((bossPatternCountMax - 30) - bossPatternCount);	
			}
            bullet_count = 4;
            bullet_spread = 90;
            boss_radius = 0;
            beamSize = bullet_size;
			//scr_Boss_Stretch("Vertical", 0.4);
            
            bullet_sprite = spr_Red_Beam;
            beam_sprite = spr_Red_Beam;
            bossbeamattackactive = 1;
			bossPatternDirection += 0.45 + ((bossPatternCountMax - bossPatternCount) / 2000);
			if bossPatternCount mod 5 = 0 {
					scr_Boss_Stretch("Vertical", 0.1);	
				}
				
			var beamstart = (bossPatternCountMax - 30) - bossPatternCount;
        
			scr_Easy_Boss_Beam_Shoot(bossPatternCountMax - 30, 36);
		
            if bossPatternCount < (bossPatternCountMax - 60) and bossPatternCount > 30 {
               // scr_Boss_Beam_Attack_New("Active",35,scr_Boss_Beam_Frame(beamstart));
             
            } else {
                //scr_Boss_Beam_Attack_New("Dormant",35,scr_Boss_Beam_Frame(beamstart));  
            }
			
			if bossPatternCount mod 36 = 0 and bossPatternCount > 180 {
				bullet_part = 2;
				bullet_part_sprite = spr_Bullet_Part;
				bullet_part_area = 25;
				bullet_part_life = 30;
				bullet_part_color1 = make_color_rgb(255,0,0);
				bullet_part_color2 = make_color_rgb(255,0,0);
				bullet_part_frequency = 4;
	
				bullet_type = obj_Angry_Miner_Bullet;
	            bullet_sprite = spr_Glowy_Enemy_Shot;
				bullet_size = 1;
	            bullet_count = 1;
	            bullet_speed = bossbulletspeed * 1.95;
	            scr_Just_Shoot();
			}
			
        }
    }
    if bossActiveAttack[1] = 5 {
		scr_Boss_Stretch("Vertical", 0.4);
		
        bullet_speed = bossbulletspeed * 5;
        bullet_type = obj_Homing_Miner;
        bullet_sprite = spr_Loathing_Mullet;
        bullet_count = 3;
        bullet_spread = 360 / bullet_count;
        bullet_lifespan = 240;
        scr_Orbit_Shoot(50,obj_Soul_Parent);
    }
	bossPatternCount -= 1;
    bossPatternCooldown += bossPatternCooldownMax;
}

/// Active Attack Post
   
if bossActiveAttackDuration[1] <= 0 { 
    bossActiveAttack[1] = 0;
    bossActiveAttack[2] = 0;
}

scr_Spirit_Outside_View();

#region /// Boss Sprite

scr_Boss_Size_Lerp_Dir(0.15);

if tier < 2 {
	scr_Masked_Spirit_Sprite(spr_Masked_Loathing_Spirit,spr_Masked_Loathing_Spirit_Attack);
} else {
	scr_Masked_Spirit_Sprite(spr_High_Loathing_Spirit,spr_High_Loathing_Spirit_Attack);
}
   
#endregion

scr_Boss_Soul_Hitbox(sprite_index);