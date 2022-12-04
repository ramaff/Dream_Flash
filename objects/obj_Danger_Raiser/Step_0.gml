/// @description  Boss Step Event

scr_Boss_Step();

/*
if currentphase = 2 and wallOrbit = 0 {
    scr_Default_Attack_Settings();
    bullet_type = obj_Orbital_Bullet;
    bullet_sprite = spr_Wall_Shot;
    bullet_speed = bossbulletspeed / 3.5;
    bullet_power = bosspower;
    bullet_direction = (-180 + random(360)) / bossaccuracy;
    bullet_lifespan = 999;
    bullet_size = 1;
    bullet_count = 2;
    bullet_spread = 0;
    boss_radius = 0;
    
    if champ = 1 {
        bullet_sprite = spr_Wall_Shot;
    }

    scr_Orbit_Shoot(110,self);
    scr_Orbit_Shoot(220,self);
    scr_Orbit_Shoot(330,self);
    scr_Orbit_Shoot(440,self);
    
    wallOrbit = 1;
    
}
*/

///Passive Attack Prep

if bossPassiveAttackDelay[1] <= 0 and bossPassiveAttackCooldown[1] <= 0 {
    var bossdirection = scr_Soul_Point();
    speed = 0.166 * bossmovespeed;
    direction = bossdirection;
    
}


///Passive Attack Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Phase_Bullet;
    bullet_sprite = spr_Purple_Shot;
    bullet_speed = 105;
    bullet_power = bosspower;
    bullet_direction = (-180 + random(360)) / bossaccuracy;
    bullet_lifespan = 6;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;

if bossPassiveAttack[1] = 1 {
    bullet_direction = bossHandDirection;
    bullet_count = 3;
    bullet_spread = 120;
    scr_Just_Shoot();    
    bossHandDirection += 1;
}

bossPassiveAttack[1] = 0;
bossPassiveAttack[2] = 0;

///Active Attack Prep

if bossActiveAttackDelay[1] <= 0 and bossActiveAttackCooldown[1] <= 0 and bossActiveAttackDuration[1] <= 0 {
	
	if currentphase = 1 {
		mCount = instance_number(obj_Minion_Parent);
	    bCount = instance_number(obj_Main_Boss_Parent);
	
	    bossActiveAttack[1] = choose(3,4,5);
		if ((mCount - 3) / bCount) >= 3 {
	        bossActiveAttack[1] = choose(4,5);
	    }
	}
	if currentphase = 2 {
		mCount = instance_number(obj_Danger_Bullet);
	    bCount = instance_number(obj_Main_Boss_Parent);
	
	    bossActiveAttack[1] = choose(1);
		if ((mCount - 3) / bCount) >= 6 {
	        bossActiveAttack[1] = choose(2);
	    }
	}
	
    if bossActiveAttack[1] = 1 {
        bossActiveAttackDelay[1] = 15;
        bossPatternCount = 8;
        bossPatternCooldown = 10;
        bossPatternCooldownMax = 10;
        bossActiveAttackDuration[1] = 10 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 45;
    }
    if bossActiveAttack[1] = 2 {
        bossActiveAttackDelay[1] = 15;
        bossPatternCount = 240;
        bossPatternCooldown = 1;
        bossPatternCooldownMax = 1;
		bossPatternDirection = random(360);
        bossActiveAttackDuration[1] = 10 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 75 + random(15);
    }
    if bossActiveAttack[1] = 3 {
        bossActiveAttackDelay[1] = 15;
        bossActiveAttackDuration[1] = 30;
        bossActiveAttackCooldown[1] = 180 + random(30);
    }
	if bossActiveAttack[1] = 4 {
        bossActiveAttackDelay[1] = 15;
        bossPatternCount = 4;
        bossPatternCooldown = 30;
        bossPatternCooldownMax = 30;
        bossActiveAttackDuration[1] = 10 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 150 + random(30);
    }
    if bossActiveAttack[1] = 5 {
        bossActiveAttackDelay[1] = 15;
        bossPatternCount = 30;
        bossPatternCooldown = 3;
        bossPatternCooldownMax = 3;
        bossActiveAttackDuration[1] = 10 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 120 + random(30);
    }
	/*
    if bossActiveAttack[1] = 5 {
        
        bossActiveAttackDelay[1] = 15;
        bossPatternCount = 19;
		bossPatternCountMax = 19;
        bossPatternCooldown = 20;
        bossPatternCooldownMax = 20;
        bossPatternDirection = 180 * irandom(1);
        bossPatternAttackCount = 5;
        bossActiveAttackDuration[1] = 10 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 220 + random(60);
    }
	*/
    bossPatternCountMax = bossPatternCount;
}


/// Active Attack Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Direction_Phase_Bullet;
    bullet_sprite = spr_Manic_Shot;
    bullet_speed = bossbulletspeed * 1.5;
    bullet_power = bosspower;
    bullet_direction = (-10 + random(20)) / bossaccuracy;
    bullet_lifespan = 300 + irandom(90);
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;
    
    if champ = 1 {
        bullet_sprite = spr_Projectile_Wall_Shot;
    }

if bossActiveAttackDelay[1] <= 0 {        
    
    if bossActiveAttack[1] = 3 {

        scr_Boss_Stretch("Horizontal", 0.3);
		
        minion_count = 2;
        minion_type = obj_Dangerous_Apple;
        minion_health = bossmaxhealth / 15;
		
		if champ = 8 {
			minion_type = obj_Dangerous_Bomb;	
		}
        scr_Minion_Spawn();
    
        bossActiveAttack[1] = -3;
    }
	/*
    if bossActiveAttack[1] = 4 {

        bullet_type = obj_Wall_Spawning_Bullet;
        bullet_sprite = spr_Fire_Shot;
        bullet_count = 7 + irandom(1);
        bullet_spread = 360;
        bullet_lifespan = 120;
        
        bullet_speedfac_min = 0.5;
        bullet_speedfac_add = 0.75;
        bullet_timefac_min = 1;
        bullet_timefac_add = 0.5;
        
        scr_Soul_Shoot_Vomit();
    
        bossActiveAttack[1] = 0;
    }
	*/
}

/// Active Attack Pattern Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Direction_Phase_Bullet;
    bullet_sprite = spr_Manic_Shot;
    bullet_speed = bossbulletspeed * 1.5;
    bullet_power = bosspower;
    bullet_direction = (-10 + random(20)) / bossaccuracy;
    bullet_lifespan = 300 + irandom(90);
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;
	
	if champ = 1 {
        bullet_sprite = spr_Projectile_Wall_Shot;
    }

if bossActiveAttackDelay[1] <= 0 and bossPatternCooldown <= 0 and bossPatternCount > 0 {
    
    if bossActiveAttack[1] = 1 {
		scr_Boss_Stretch("Horizontal", 0.1);
		
		
		bullet_part = 2;
		bullet_part_sprite = spr_Bullet_Part;
		bullet_part_area = 15;
		bullet_part_life = 20;
		bullet_part_color1 = make_color_rgb(255,0,106);
		bullet_part_color2 = c_white;
		
        bullet_type = obj_Danger_Bullet;
        bullet_sprite = spr_Glowy_Ruby_Shot;
        
        bullet_count = 3;
        bullet_spread = 360;
        bullet_lifespan = 720;
        bullet_speed = bossbulletspeed * 1;
        
        bullet_speedfac_min = 1;
        bullet_speedfac_add = 1.25;
        bullet_timefac_min = 0.99;
        bullet_timefac_add = 0.01;
		
		boss_xoffset = 50;
		boss_yoffset = -80;
		
		bullet_depth = -6;
        
        scr_Soul_Shoot_Vomit();
		
		if bossPatternCount mod 6 = 0 and champ = 8 {
			bullet_type = obj_Danger_Bomb;
			bullet_sprite = spr_Boss_Pink_Bomb;
			bullet_size = 1.25;
			bullet_speed = bossbulletspeed * 1.2;
			bullet_count = 1;
			scr_Soul_Shoot();
			scr_Boss_Stretch("Horizontal", 0.2);
		}
    }
    if bossActiveAttack[1] = 2 {
		with (obj_Danger_Bullet) {
			if other.bossPatternCount = other.bossPatternCountMax {
				if alarm[0] < 270 {
					alarm[0] = 270;	
				}
			}
			direction = other.bossPatternDirection;
			speed += bulletspeed * 0.02;
			if speed >= bulletspeed * 1.5 {
				speed = bulletspeed * 1.5;
			}
        }
		if bossPatternCount mod 60 = 0 and champ = 8 {
			bullet_type = obj_Danger_Bomb;
			bullet_sprite = spr_Boss_Pink_Bomb;
			bullet_size = 1.25;
			bullet_speed = bossbulletspeed * 1.2;
			bullet_count = 1;
			scr_Soul_Shoot();
			scr_Boss_Stretch("Horizontal", 0.2);
		}
    }
	if bossActiveAttack[1] = 4 {
		scr_Boss_Stretch("Horizontal", 0.2);
		
		if champ = 0 {
			bullet_type = obj_Danger_Bomb;
			bullet_sprite = spr_Boss_Pink_Bomb;
			bullet_size = 1.25;
		}
		if champ = 8 {
			bullet_type = obj_Danger_Giga_Bomb;
			bullet_sprite = spr_Boss_Pink_Bomb;
			bullet_size = 1.75;
		}
		bullet_speed = bossbulletspeed * 1.2;
		bullet_count = 1;
		scr_Soul_Shoot();       
        //direction = scr_Soul_Point();
		//speed = 0.3 * bossmovespeed;
    
    }
	if bossActiveAttack[1] = 5 {
		if bossPatternCount mod 5 = 0 {
			scr_Boss_Stretch("Horizontal", 0.1);
		}
		
        bullet_type = obj_Danger_Sweep_Bomb;
		bullet_sprite = spr_Boss_Pink_Bomb;
		bullet_size = 1;
		bullet_speed = bossbulletspeed * 1.2;
		bullet_count = 1;
		
		if champ = 0 {
			boss_xoffset = -(bossPatternCount * 40) + (bossPatternCountMax * 20);
			boss_yoffset = boss_xoffset;
		
			scr_Offset_Normal_Shoot();     
		}
		if champ = 8 {
			boss_xoffset = -(bossPatternCount * 40) + (bossPatternCountMax * 20);
			boss_yoffset = boss_xoffset + 200;
		
			scr_Offset_Normal_Shoot();     
			
			boss_yoffset = boss_xoffset - 400;
		
			scr_Offset_Normal_Shoot();     
		}
    }
	/*
    if bossActiveAttack[1] = 5 {
        with (obj_Danger_Bullet) {
			with instance_create(x,y,obj_Orbit_Bullet) {
	            scr_Bullet_Replicate_Properties();
	            sprite_index = spr_Despair_Bullet;
	            bulletspeed = other.bulletspeed * 0.65;
	            bulletpower = other.bulletpower;
	            bulletsize = 0.5;
	            image_xscale = bulletsize;
	            image_yscale = bulletsize;
	            originX = other.startX
	            originY = other.startY
	            bulletOrbit = distance_to_point(other.startX,other.startY);
	            bulletAngle = point_direction(x,y,other.startX,other.startY);
	            bulletCenterX = originX;
	            bulletCenterY = originY;
	            speed = bulletspeed;
	            direction = other.direction;
	        }
			instance_destroy();
        }
    }
	*/
    bossPatternCount -= 1;
    bossPatternCooldown += bossPatternCooldownMax;
}

/// Active Attack Post
   
if bossActiveAttackDuration[1] <= 0 { 
    bossActiveAttack[1] = 0;
    bossActiveAttack[2] = 0;
}

#region /// Boss Sprite


scr_Boss_Size_Lerp(0.15);

if bossActiveAttack[1] = 2 || bossActiveAttack[1] = 5  {
	sprite_index = spr_Danger_Harvester_Swing;
	if image_index >= 11 and bossActiveAttackDuration[1] > 10 {
		image_index = 11;	
	}
} else if bossActiveAttack[1] != 0 {
    sprite_index = spr_Danger_Raise;
	if image_index >= 3 and bossActiveAttackDuration[1] > 10 {
		image_index = 3;	
	}
} else {
	sprite_index = spr_Danger_Harvester;
}

#endregion

scr_Boss_Soul_Hitbox(sprite_index);