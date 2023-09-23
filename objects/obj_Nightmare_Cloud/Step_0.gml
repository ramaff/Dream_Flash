/// @description  Boss Step Event

image_angle += 3;

scr_Boss_Step();

///Passive Attack Prep

if bossPassiveAttackDelay[1] <= 0 and bossPassiveAttackCooldown[1] <= 0 {
    if champ = 1 and currentphase = 2 {
        bossPassiveAttack[1] = 1;
        bossPassiveAttackCooldown[1] = 10 + irandom(5);
        bossPassiveAttackDelay[1] = 1;
    }
}


///Passive Attack Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Infatuation_Drop_Bullet;
    bullet_sprite = spr_Blood_Tear;
    bullet_speed = bossbulletspeed * (0.75 + random(0.5));
    bullet_power = bosspower;
    bullet_direction = (-180 + random(360)) / bossaccuracy;
    bullet_lifespan = 300;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;

if bossPassiveAttack[1] = 1 {
	
	bullet_part = 2;
	bullet_part_sprite = spr_Bullet_Tear_Part;
	bullet_part_area = 25;
	bullet_part_life = 20;
	bullet_part_color1 = make_color_rgb(0,106,255);
	bullet_part_color2 = c_white;
	
    bullet_type = obj_Phase_Rain;
    bullet_sprite = spr_Tear_Drop_Bullet;
    bullet_direction = 270 + ((-5 + random(10)) / other.bossaccuracy);
    bullet_lifespan = 600;
    scr_Top_Rain();
}

bossPassiveAttack[1] = 0;
bossPassiveAttack[2] = 0;

///Active Attack Prep

if bossActiveAttackDelay[1] <= 0 and bossActiveAttackCooldown[1] <= 0 and bossActiveAttackDuration[1] <= 0 {
    
    var bossdirection = point_direction(x,y,instance_nearest(x,y,obj_Soul).x,instance_nearest(x,y,obj_Soul).y);
    direction = bossdirection;
    speed = bossmovespeed * (0.5 + random(0.5));
    
    bossActiveAttack[1] = choose(1,2,3);
    if champ = 2 {
        bossActiveAttack[1] = choose(9,3);
    }
    if currentphase = 2 {
        bossActiveAttack[1] = choose(3,4,5);
    }
	
	mCount = instance_number(obj_Minion_Parent)
    bCount = instance_number(obj_Main_Boss_Parent)    
    bossScare = 0;

    if ((mCount) / bCount) >= 3 {
		if currentphase = 1 {
			bossActiveAttack[1] = choose(1,2);
		} else {
			bossActiveAttack[1] = choose(4,5)	
		}
    }
	
    if champ = 1 {
        bossActiveAttack[1] = choose(7,2,3);
        if currentphase = 2 {
            bossActiveAttack[1] = choose(4,8,6);
        }
    }
    bossActiveAttackDelay[1] = 20;
    bossActiveAttackCooldown[1] = (90 + random(15));
    bossPatternCooldown = 5;
	bossPatternCooldownMax = 5;
    
    if bossActiveAttack[1] = 1 {
        bulletdirection = random(360);
        bossPatternDirection = bulletdirection;
		bossPatternCooldown = 5;
		bossPatternCooldownMax = 7;
        //bossActiveAttackCooldown[1] -= 30;
		
		bossActiveAttackDuration[1] = 30;
		
		bossActiveAttackCooldown[1] += 15;
    }
    if bossActiveAttack[1] = 2 {
        bossPatternCount = 10;
		if champ = 1 {
			bossPatternCount = 18;	
		}
        bulletdirection = random(360);
        bossPatternDirection = bulletdirection;
		bossPatternCooldown = 5;
		bossPatternCooldownMax = 9;
		
		bossActiveAttackDuration[1] = 1 + bossPatternCooldownMax * bossPatternCount;
		
		bossActiveAttackCooldown[1] += 15;
    }
    if bossActiveAttack[1] = 3 {
		bossPatternCount = 3;
        bulletdirection = point_direction(x,y,instance_nearest(x,y,obj_Soul).x,instance_nearest(x,y,obj_Soul).y);
        bossPatternDirection = bulletdirection;
		bossPatternCooldown = 5;
		bossPatternCooldownMax = 30;
        bossActiveAttackCooldown[1] -= 15;
		
		if champ = 2 {
			bossPatternCount = 1;	
		}
		
		bossPatternCountMax = bossPatternCount;
		
		bossActiveAttackDuration[1] = 1 + bossPatternCooldownMax * bossPatternCount;
    }
    if bossActiveAttack[1] = 4 {
        bossPatternCount = 10;
        bulletdirection = point_direction(x,y,instance_nearest(x,y,obj_Soul).x,instance_nearest(x,y,obj_Soul).y);
        bossPatternDirection = bulletdirection;
		bossPatternCooldown = 15;
		bossPatternCooldownMax = 10;
		
		bossPatternCountMax = bossPatternCount;
		
		bossActiveAttackDuration[1] = 1 + bossPatternCooldownMax * bossPatternCount;
    }
    if bossActiveAttack[1] = 5 {
        bulletdirection = point_direction(x,y,instance_nearest(x,y,obj_Soul).x,instance_nearest(x,y,obj_Soul).y);
        speed = bossmovespeed * (0.1);
        bossPatternDirection = 0;
        bossActiveAttackCooldown[1] -= 15;
    }
    if bossActiveAttack[1] = 5 {
        scr_Boss_Dash_Setup();
        bossPatternCount = 120;
        bossPatternCountMax = bossPatternCount;
		bossPatternPhase = 1;
        bossPatternCooldown = 1;
        bossPatternCooldownMax = 1;
        bossActiveAttackDuration[1] = 1 + bossattackspeed * bossPatternCooldownMax * (bossPatternCount + 240);
        bossActiveAttackCooldown[1] += 30;
		bossPatternDirection = 0;
		
		var bossdirection = point_direction(x,y,instance_nearest(x,y,obj_Soul).x,instance_nearest(x,y,obj_Soul).y);
        bossMaxDashSpeed = 8.5 * bossmovespeed;
		bossDashSpeed = 0;
    }
    if bossActiveAttack[1] = 7 {
        speed = bossmovespeed * (0.05 + random(0.05));
        bossPatternCount = 10;
		bossPatternCountMax = 10;
        bulletdirection = random(360);
        bossPatternDirection = bulletdirection;
		bossPatternCooldown = 20;
		bossPatternCooldownMax = 20;
        bossActiveAttackCooldown[1] += 60;
		bossActiveAttackDuration[1] = 1 + bossPatternCooldownMax * bossPatternCount;
    }
	if bossActiveAttack[1] = 8 {
        bulletdirection = point_direction(x,y,instance_nearest(x,y,obj_Soul).x,instance_nearest(x,y,obj_Soul).y);
        bossPatternDirection = bulletdirection;
        bossActiveAttackCooldown[1] += 90;
    }
	if bossActiveAttack[1] = 9 {
        bossActiveAttackCooldown[1] += 60;
    }
	
	bossPatternCountMax = bossPatternCount;

    
}


/// Active Attack Code
    
    scr_Default_Attack_Settings(); 
    bullet_type = obj_Rain_Drop_Bullet;
    bullet_sprite = spr_Water_Drop_Bullet;
    bullet_speed = bossbulletspeed * (1 + random(0.25));
    bullet_power = bosspower;
    bullet_lifespan = 300;

if bossActiveAttackDelay[1] <= 0 {   

    if bossActiveAttack[1] = 1 {
		scr_Boss_Stretch("Horizontal",0.3);
		
		bullet_lifespan = 80;
		bullet_image_speed = 0.5;
        bullet_type = obj_Splash_Bullet_Reserve;
        bullet_sprite = spr_Rain_Ball;
        bullet_size = 1;
        if champ = 2 {
            bullet_type = obj_Thunder_Bullet;
            bullet_sprite = spr_Thunder_Ball;
        }
        bullet_count = 4;
		bullet_spread = 360 / bullet_count;
		bullet_direction = random(360);
        bullet_speed = bossbulletspeed * (2.3 + random(0.1));
        
        scr_Soul_Shoot();
        
        bossActiveAttack[1] = -1;
    }  
	
	/*
    if bossActiveAttack[1] = 5 {
		scr_Boss_Stretch("Horizontal",0.3);
		
        bullet_type = obj_Phase_All_Direction_Bullet;
        bullet_sprite = spr_Thunderbolt_Bullet;
        bullet_speed = bossbulletspeed * (1);
        bullet_direction = 45 + (-5 + random(10)) / bossaccuracy;
        bullet_count = 4;
        bullet_spread = 90;
        bullet_lifespan = 30;
        
        scr_Offset_Just_Shoot(40);
        
        bullet_type = obj_Direction_Bullet;
        bullet_sprite = spr_Lightning_Bullet;
		bullet_direction = random(360);
        bullet_count = 10;
        bullet_spread = 360 / bullet_count;
        bullet_lifespan = 300;
		bullet_speed = bossbulletspeed * 2.55;
        
        scr_Just_Shoot();
		
		bullet_speed = bossbulletspeed * 1.75;
		bullet_direction += 180 / bullet_count;
        
        scr_Just_Shoot();
        
        bossActiveAttack[1] = 0;
    }     
	*/
	
	
	///// Triple Vomit Splash Attack
	if bossActiveAttack[1] = 8 {
		scr_Boss_Stretch("Horizontal",0.3);
		
		bullet_speed = bossbulletspeed * 1.25;
        bullet_type = obj_Direction_Bullet;
		
        bullet_count = 9;
        bullet_spread = 20;
        bullet_lifespan = 175;
        
        bullet_speedfac_min = 0.75;
        bullet_speedfac_add = 1.75;
        bullet_timefac_min = 0.9;
        bullet_timefac_add = 0.75;
        
        scr_Soul_Shoot_Vomit();
		
		bullet_direction += 45
		
		scr_Soul_Shoot_Vomit();
		
		bullet_direction -= 90
		
		scr_Soul_Shoot_Vomit();
		
		bullet_direction += 50
		
		bullet_count = 9;
        bullet_spread = 20;
        bullet_lifespan = 360;
		
		scr_Soul_Shoot();
		
		bullet_count = 9;
        bullet_spread = 20;
        bullet_lifespan = 360;
		bullet_speed = bossbulletspeed * 0.95;
		bullet_direction -= 10;
		
		scr_Soul_Shoot();
        
        bossActiveAttack[1] = 0;
    }     
	
	///// 8 Way Zig Zag Lightning
	if bossActiveAttack[1] = 9 {
		scr_Boss_Stretch("Horizontal",0.3);
		
        bullet_direction = random(360);
        bullet_count = 8;
		bullet_type = obj_Zig_Zag_Trail;
		bullet_sprite = spr_Big_Lightning_Ball;
		bullet_size = 1;
        bullet_spread = 360 / bullet_count;
        bullet_speed = bossbulletspeed * (1.55 + random(0.15));
        scr_Just_Shoot();
		
		bossActiveAttack[1] = 0;
    }
}

/// Active Attack Pattern Code
    
    scr_Default_Attack_Settings();
	scr_Beam_Shoot_Properties();
    bullet_type = obj_Rain_Drop_Bullet;
    bullet_sprite = spr_Water_Drop_Bullet;
    bullet_speed = bossbulletspeed * (0.95 + random(0.5));
    bullet_power = bosspower;
    bullet_lifespan = 300;

if bossActiveAttackDelay[1] <= 0 and bossPatternCooldown <= 0 and bossPatternCount > 0 {
        
    if bossActiveAttack[1] = 2 {
		if (bossPatternCount mod 2 = 0) {
			scr_Boss_Stretch("Horizontal",0.15);
		}
		
        bullet_direction = bossPatternDirection + (-0.2 + random(0.4)) / bossaccuracy;
        bullet_type = obj_Phase_Spin_Bullet;
        bullet_sprite = spr_Water_Drop_Bullet;
        bullet_speed = bossbulletspeed * 2.85;
        bullet_count = 10;
        bullet_spread = 36;
		bullet_lifespan = 360;
		
		bullet_direction += -1.5 + 3 * (bossPatternCount mod 2);
		scr_Just_Shoot();
    }
	if bossActiveAttack[1] = 3 {
		
		scr_Boss_Stretch("Horizontal",0.15);
		
			minion_count = 1;
	        minion_type = obj_Spawn_Cloud;
	        minion_health = bossmaxhealth / 12;
	        scr_Minion_Spawn();
	
    }
	if bossActiveAttack[1] = 4 {
		if (bossPatternCount mod 2 = 0) {
			scr_Boss_Stretch("Horizontal",0.15);
		}
		
        bullet_direction = bossPatternDirection + (-0.2 + random(0.4)) / bossaccuracy;
        bullet_type = obj_Wave_Bullet;
        bullet_sprite = spr_Water_Drop_Bullet;
        bullet_speed = bossbulletspeed * 2.5;
        bullet_count = 8;
        bullet_spread = 180 / bullet_count;
		bullet_lifespan = 360;
		
		scr_Just_Shoot();
    }
	if bossActiveAttack[1] = 6 {
		scr_Boss_Stretch("Horizontal",0.3);
		
		bullet_speed = bossbulletspeed * 1.5;
        bullet_type = obj_Direction_Bullet;
        if champ = 2 {
            bullet_sprite = spr_Lightning_Bullet;
        }
		if champ != 2 {
        bullet_count = 18;
        bullet_spread = 55;
        bullet_lifespan = 155;
        
        bullet_speedfac_min = 0.75;
        bullet_speedfac_add = 1.25;
        bullet_timefac_min = 1.25;
        bullet_timefac_add = 0.75;
		
		scr_Soul_Shoot_Vomit();
		} else {
			bullet_count = 1 
			bullet_direction = (-5 + random(10)) / bossaccuracy;
			bullet_speed = bossbulletspeed * 2.25;
			
			scr_Soul_Shoot();
			
			repeat(4) {
				bullet_direction += 9;
				bullet_speed -= bossbulletspeed * 0.05;
				scr_Soul_Shoot();
			}
			repeat(8) {
				bullet_direction -= 9;
				bullet_speed -= bossbulletspeed * 0.05;
				scr_Soul_Shoot();
			}
			repeat(4) {
				bullet_direction += 9;
				bullet_speed -= bossbulletspeed * 0.05;
				scr_Soul_Shoot();
			}
			
			
		}
        
    }     
	
	if bossActiveAttack[1] = 5 {
		if (bossPatternCount mod 5 = 0) {
			scr_Boss_Stretch("Vertical",0.05);
		}
		
        if champ = 2 and bossPatternCount = bossPatternCountMax{
            scr_Boss_Teleport_Far();
			bossDashDirection = point_direction(x,y,instance_nearest(x,y,obj_Soul_Parent).x,instance_nearest(x,y,obj_Soul_Parent).y);
        }
		if bossPatternPhase = 1 {
		if champ != 2 {
        scr_Boss_Dash_Movement(25,10);
		}
		if champ = 2 {
			scr_Boss_Dash_Movement(55,15);
		}
		}
		
		if bossPatternCount = 1 and bossPatternPhase = 1 {
			if bossPatternPhase = 1 {
				bossPatternPhase = 2;
				bossPatternCount = 240;
				bossPatternCountMax = 240;
			}
			
			scr_Boss_Stretch("Horizontal",0.75);
        
	        bullet_type = obj_Direction_Bullet;
	        bullet_sprite = spr_Lightning_Bullet;
			bullet_direction = random(360);
	        bullet_count = 10;
	        bullet_spread = 360 / bullet_count;
	        bullet_lifespan = 300;
			bullet_speed = bossbulletspeed * 2.55;
        
	        scr_Just_Shoot();
		
			bullet_speed = bossbulletspeed * 1.75;
			bullet_direction += 180 / bullet_count;
        
	        scr_Just_Shoot();
		}
		
		if bossPatternPhase = 2 {
			
			scr_Default_Attack_Settings();
	        bullet_type = obj_Laser_Beam_Charge;
	        bullet_sprite = spr_Lightning_Beam;
	        bullet_speed = 0;
	        bullet_power = bosspower * 0.5;
	        bullet_direction = bossPatternDirection + 45 + (-0.1 + random(0.2)) / bossaccuracy;
	        bullet_lifespan = 7;
	        bullet_size = 1;
	        bullet_count = 4;
	        bullet_spread = 360 / bullet_count;
	        boss_radius = 0;
	        bullet_sprite = spr_Lightning_Beam;
	        beam_sprite = spr_Lightning_Beam;
	        beamSize = 0.6;
	        bossbeamattackactive = 1;
			
			beamSize = 0.6 * ((bossPatternCountMax - bossPatternCount) / 15)
			
			if beamSize > 0.6 {
				beamSize = 0.6;
			}
			
	        var beamstart = bossPatternCountMax - bossPatternCount;
			
			scr_Easy_Boss_Beam_Shoot(bossPatternCountMax, 18);
			
			if bossPatternCount < 225 {
			
				//scr_Boss_Beam_Attack_New("Active",35,scr_Boss_Beam_Frame(beamstart));
				
				bossPatternDirection += 0.5;
	        } else {
	            //scr_Boss_Beam_Attack_New("Dormant",35,scr_Boss_Beam_Frame(beamstart));
	        }
			
			if bossPatternCount mod 50 = 0 {
				scr_Boss_Stretch("Horizontal",0.75);
        
		        bullet_type = obj_Direction_Bullet;
		        bullet_sprite = spr_Lightning_Bullet;
				bullet_direction = random(360);
		        bullet_count = 15;
		        bullet_spread = 360 / bullet_count;
		        bullet_lifespan = 300;
				bullet_speed = bossbulletspeed * 1.75;
        
		        scr_Just_Shoot();
			}
			
		}
		
		speed = bossDashSpeed;
        direction = bossDashDirection;
		
    } 
    if bossActiveAttack[1] = 7 {
		//if (bossPatternCount mod 2 = 0) {
			scr_Boss_Stretch("Horizontal",0.15);
		//}
		
		bullet_part = 2;
		bullet_part_sprite = spr_Bullet_Tear_Part;
		bullet_part_area = 25;
		bullet_part_life = 20;
		bullet_part_color1 = make_color_rgb(0,106,255);
		bullet_part_color2 = c_white;
		
        bossX = x;
        bossY = y;
        bullet_direction = random(360);
        bullet_count = 8;
        bullet_sprite = spr_Sorrow_Bullet;
		bullet_size = 0.7;
        bullet_type = obj_Direction_Phase_Bullet;
        bullet_speed = bossbulletspeed * (2.25 + random(0.25));
		bullet_spread = 360 / bullet_count;
        scr_Outside_Shoot_Spread();
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

/*
if (bossActiveAttack[1] != 0 and bossActiveAttackDelay[1] < 0 and bossPatternCount > 0) || (updowntick mod 12 != 0){
	var projbossHeight = updown[round(updowntick) mod 12];
	updowntick += 0.25;	
	
	if projbossHeight != bossHeight {
		y -= projbossHeight - bossHeight;
		bossHeight = projbossHeight;
	}
}
*/

scr_Boss_Size_Lerp(0.15);

if (bossActiveAttack[1] != 0 and bossActiveAttack[1] != 6 and (bossPatternCountMax = bossPatternCount)) || (bossActiveAttack[1] = 2 and (bossPatternCountMax = bossPatternCount)) || (bossActiveAttack[1] = 3 and (bossPatternCountMax = bossPatternCount)) {
	//if bossPatternCooldown <= 31 and bossPatternCooldown > 0 {
		sprite_index = spr_Nightmare_Cloud_Attack;
		if image_index > 5 {
		image_index = 5;	
	}
		if champ = 8 {
			//sprite_index = spr_Thought_Rainbow_Cry;
		}
		image_speed = 1;
		
	//} else {
	//	image_index = 0;	
	//}
} else if (bossActiveAttack[1] = 6 and bossPatternCount > 0) {
	sprite_index = spr_Nightmare_Cloud_Attack;
	if image_index > 5 {
		image_index = 5;	
	}
} else {
	image_index = 0;
	sprite_index = spr_Nightmare_Cloud;
	if champ = 8 {
		//sprite_index = spr_Thought_Rainbow;
	}
}

#endregion

scr_Boss_Soul_Hitbox(sprite_index);
