/// @description  Boss Step Event

scr_Boss_Step();

scr_Wall_Bounce();

///Passive Attack Prep

if bossPassiveAttackDelay[1] <= 0 and bossPassiveAttackCooldown[1] <= 0 {
    if (bossActiveAttack[1] != 1 and (speed < 0.5)) {
        speed = bossmovespeed * (0.1 + random(0.1));
        direction = scr_Soul_Point();
    }
    if champ = 0 {
        bossPassiveAttack[1] = 1;
        bossPassiveAttackCooldown[1] = 7 + irandom(1);
        bossPassiveAttackDelay[1] = 0;
    }
	if champ = 1 {
        bossPassiveAttack[1] = 2;
        bossPassiveAttackCooldown[1] = 40;
        bossPassiveAttackDelay[1] = 0;
    }
    
}


///Passive Attack Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Spin_Bullet;
    bullet_sprite = spr_Glowy_Dark_Blue_Shot;
    bullet_speed = bossbulletspeed * (0.5 + random(0.5));
    bullet_power = bosspower;
    bullet_direction = (-180 + random(360)) / bossaccuracy;
    bullet_lifespan = 60 + irandom(45);
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;
    
    if champ = 1 {
        bullet_sprite = spr_Vortex_Shot;
    }
    if champ = 2 {
        bullet_sprite = spr_Glowy_Enemy_Shot;
    }

if bossPassiveAttack[1] = 1 {
    bullet_direction += (-180 + random(360)) / bossaccuracy;
    scr_Just_Shoot();    
}
if bossPassiveAttack[1] = 2 {
	bullet_type = obj_Spin_Quickest_Phase_Bullet;
    bullet_count = 4;
	bullet_spread = 90;
	bullet_lifespan = 90;
	bullet_speed = bossbulletspeed * 1.65;
    scr_Just_Shoot();    
}

if bossActiveAttack[1] = 3 {
    scr_Soul_Push_Pull(2);
	if bossActiveAttackDuration[1] mod 3 = 0 {
		var color = make_color_rgb(50, 100, 255);
		scr_Particle_Suck_In(obj_Bullet_Trail_Target, spr_Soul_Big_Bit, color, color, 1, 12, 0, 360, 500, 0.4, 60, false)
	}
}
if bossActiveAttack[1] = 4 || bossActiveAttack[1] = 7 {
    scr_Soul_Push_Pull(-2);
	if bossActiveAttackDuration[1] mod 3 = 0 {
		var color = make_color_rgb(50, 100, 255);
		scr_Particle_Burst(obj_Weapon_Trail, spr_Soul_Big_Bit, color, color, 1, 12, 0, 360, 20, 0.4, 60, false)
	}
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
        bossActiveAttack[1] = choose(1,2,5);
        if currentphase = 2 {
            bossActiveAttack[1] = choose(7,5);
        }
    }
    if champ = 2 {
        bossActiveAttack[1] = choose(1,2,6);
        if currentphase = 2 {
            bossActiveAttack[1] = choose(3,6);
        }
    }
    if bossActiveAttack[1] = 1 {
        scr_Boss_Dash_Setup();
        bossPatternCount = 100;
        bossPatternCountMax = bossPatternCount;
        bossPatternCooldown = 1;
        bossPatternCooldownMax = 1;
        bossActiveAttackDuration[1] = 15 + bossattackspeed * bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 30 + random(15);
		
		var bossdirection = scr_Soul_Point();
        bossDashDirection = bossdirection;
		bossMaxDashSpeed = 3 * bossmovespeed;
		bossDashSpeed = 0;
    }
    if bossActiveAttack[1] = 2 {
        bossActiveAttackDelay[1] = 10;
        bossPatternCount = 3;
        bossPatternCooldown = 15;
        bossPatternCooldownMax = 15;
        bossPatternDirection = random(360);
        bossActiveAttackDuration[1] = 10 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 60 + random(30);
    }
    if bossActiveAttack[1] = 3 {
        bossActiveAttackDelay[1] = 10;
        bossPatternCount = 30;
        bossPatternCooldown = 8;
        bossPatternCooldownMax = 8;
        bossActiveAttackDuration[1] = 30 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 60 + random(30);
    }
    if bossActiveAttack[1] = 4 {
        bossActiveAttackDelay[1] = 10;
        bossPatternCount = 180;
        bossPatternCooldown = 1;
        bossPatternCooldownMax = 1;
        bossActiveAttackDuration[1] = 30 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 60 + random(30);
    }
    if bossActiveAttack[1] = 5 || bossActiveAttack[1] = 6 {
        bossActiveAttackDelay[1] = 10;
        bossActiveAttackDuration[1] = 15;
        bossActiveAttackCooldown[1] = 60 + random(30);
    }
	if bossActiveAttack[1] = 7 {
        bossActiveAttackDelay[1] = 10;
        bossPatternCount = 25;
        bossPatternCooldown = 8;
        bossPatternCooldownMax = 8;
		bossPatternDirection = random(360);
        bossActiveAttackDuration[1] = 30 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 60 + random(30);
    }
    bossPatternCountMax = bossPatternCount;
}


/// Active Attack Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Spin_Quick_Bullet;
    bullet_sprite = spr_Glowy_Dark_Blue_Shot;
    bullet_speed = bossbulletspeed * (1.35 + random(0.75));
    bullet_power = bosspower;
    bullet_direction = (-180 + random(360)) / bossaccuracy;
    bullet_lifespan = 300 + irandom(90);
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;
    
    if champ = 1 {
        bullet_sprite = spr_Vortex_Shot;
    }
    if champ = 2 {
        bullet_sprite = spr_Glowy_Enemy_Shot;
    }

if bossActiveAttackDelay[1] <= 0 {        
    
    if bossActiveAttack[1] = 5 {
		scr_Boss_Stretch("Horizontal", 0.4);
		
        bullet_speed = bossbulletspeed * 0.5;
        bullet_direction = (-5 + random(10)) / bossaccuracy;
        bullet_count = 1;
        bullet_power = bosspower * 2;
        bullet_type = obj_Vortex_Tornado;
        bullet_sprite = spr_Vortex_Twister;
        scr_Soul_Shoot();    
        bossActiveAttack[1] = -5;
    }
    if bossActiveAttack[1] = 6 {
		scr_Boss_Stretch("Horizontal", 0.4);
		
        bullet_speed = bossbulletspeed * 0.75;
        bullet_direction = (-15 + random(30)) / bossaccuracy;
        bullet_count = 1;
        bullet_power = bosspower * 2;
        bullet_type = obj_Chaos_Tornado;
        bullet_sprite = spr_Entropy_Twister;
        scr_Soul_Shoot();    
        bossActiveAttack[1] = -6;
    }
}

/// Active Attack Pattern Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Spin_Quick_Bullet;
    bullet_sprite = spr_Glowy_Dark_Blue_Shot;
    bullet_speed = bossbulletspeed * (1.55 + random(0.55));
    bullet_power = bosspower;
    bullet_direction = (-180 + random(360)) / bossaccuracy;
    bullet_lifespan = 180 + irandom(90);
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;
    
    if champ = 1 {
        bullet_sprite = spr_Vortex_Shot;
    }
    if champ = 2 {
        bullet_sprite = spr_Glowy_Enemy_Shot;
    }

if bossActiveAttackDelay[1] <= 0 and bossPatternCooldown <= 0 and bossPatternCount > 0 {
    
	if bossActiveAttack[1] = 1 {
        scr_Boss_Dash_Movement(30,25);
		
		speed = bossDashSpeed;
        direction = bossDashDirection;
    }
    if bossActiveAttack[1] = 2 {
		scr_Boss_Stretch("Horizontal", 0.25);
		
        bullet_speed = bossbulletspeed * 1.4;
		if champ = 0 {
	        bullet_count = 15;
	        bullet_direction = bossPatternDirection;
	        bullet_spread = 360 / bullet_count;
	        scr_Just_Shoot();    
		}
		if champ = 1 {
			bullet_count = 12;
	        bullet_direction = bossPatternDirection;
	        bullet_spread = 360 / bullet_count;
	        scr_Just_Shoot();
			bullet_type = obj_Alt_Spin_Bullet;
			scr_Just_Shoot();
		}
		if champ = 2 {
			bullet_type = obj_Spin_Phase_Bullet;
			bullet_speed = bossbulletspeed * 1.775;
			bullet_lifespan = 180;
	        bullet_count = 16;
	        bullet_direction = bossPatternDirection;
	        bullet_spread = 360 / bullet_count;
	        scr_Just_Shoot();    
		}
    }
    if bossActiveAttack[1] = 3 {
		if bossPatternCount mod 5 = 0 {
			scr_Boss_Stretch("Horizontal", 0.05);
		}
		
		bullet_part = 2;
		bullet_part_sprite = spr_Bullet_Part;
		bullet_part_area = 25;
		bullet_part_life = 20;
		bullet_part_color1 = make_color_rgb(0,106,255);
		bullet_part_color2 = c_white;
		if champ = 2 {
			bullet_part_color1 = make_color_rgb(255,0,106);
			bullet_part_color2 = c_white;
		}
		
        bossX = x;
        bossY = y;
        bullet_direction = point_direction(x,y,bossX,bossY);
        bullet_count = 1;
        bullet_sprite = spr_Debris_Bullet;
        bullet_type = obj_Outer_Come_In_Bullet;
		if champ = 2 {
			bullet_sprite = spr_Loathing_Explode_Shot;
		}
		scr_Outside_Shoot();
		
		if champ = 2 and frac(bossPatternCount / 12) = 0 {
			bullet_type = obj_Basic_Bullet;
			bullet_sprite = spr_Enemy_Shot;
			bullet_count = 12;
			bullet_direction = random(360);
			bullet_speed = bossbulletspeed * 1.95;
			bullet_spread = 36;
			scr_Just_Shoot();
		}
    }
    if bossActiveAttack[1] = 4 {
		if bossPatternCount mod 5 = 0 {
			scr_Boss_Stretch("Horizontal", 0.05);	
		}
		if bossPatternCount mod 3 = 0 and bossPatternCount > 20 {
			
	        bullet_direction += (-180 + random(360)) / bossaccuracy;
	        bullet_speed = bossbulletspeed * (1.25 + random(0.75));
	        scr_Just_Shoot();    
		}
    }
	if bossActiveAttack[1] = 7 {
		scr_Boss_Stretch("Horizontal", 0.05);
		
		bullet_type = obj_Basic_Bullet;
        bullet_direction = bossPatternDirection;
		bullet_count = 4;
		bullet_spread = 90;
        bullet_speed = bossbulletspeed * 1.45;
        scr_Just_Shoot();    
		
		bossPatternDirection += 12;
    }
    bossPatternCount -= 1;
    bossPatternCooldown += bossPatternCooldownMax;
}

/// Active Attack Post
   
if bossActiveAttackDuration[1] <= 0 { 
    friction = 0;
    bossActiveAttack[1] = 0;
    bossActiveAttack[2] = 0;
}

#region /// Boss Sprite Code

if bossActiveAttack[1] = 3 || bossActiveAttack[1] = 4 || bossActiveAttack[1] = 7 { 
	bossSize = 0.55;	
}
scr_Boss_Size_Lerp(0.15);

//if champ = 0 {
	if bossActiveAttack[1] = 1 { 
		sprite_index = spr_Twister_Demon_Ride;
		if image_index >= 10 {
			image_index = 2;	
		}
	} else if bossActiveAttack[1] = 3 || bossActiveAttack[1] = 4 || bossActiveAttack[1] = 7 { 
			sprite_index = spr_Twister_Demon_Twirl;
	} else { // Default
		sprite_index = spr_Twister_Demon	
	}
//}

#endregion

scr_Boss_Soul_Hitbox(sprite_index);