/// @description  Boss Step Event

scr_Boss_Step();

//image_xscale = 0.8;
//image_yscale = 0.8;

///Passive Attack Prep

if bossPassiveAttackDelay[1] <= 0 and bossPassiveAttackCooldown[1] <= 0 {
    var bossdirection = scr_Soul_Point();
		speed = 0.5 * bossmovespeed;
	if bossActiveAttack[1] != 0 {
		speed = 0.05 * bossmovespeed;	
	}
    direction = bossdirection;
    
}

///Passive Attack Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Phase_Bullet;
    bullet_sprite = spr_Knowledge_Ball;
    bullet_speed = 100;
    bullet_power = bosspower;
    bullet_direction = (-180 + random(360)) / bossaccuracy;
    bullet_lifespan = 1;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;
    
if bossPassiveAttack[1] = 1 {
    bullet_direction = bossBallDirection;
    bullet_count = 1;
    bullet_spread = 0;
    soul_shot_block = 1;
    bullet_id = id;
    
    bullet_hit_list = Ball1List;
    bullet_hit_ID = Ball1HitID;
    boss_Part = 1;
    scr_Just_Shoot();       
    
    bossBallDirection += bossmovespeed;
}

    scr_Default_Attack_Settings();
    bullet_type = obj_Basic_Bullet;
    bullet_sprite = spr_Knowledge_Ball;
    bullet_speed = bossbulletspeed * (1.5 + random(0.5));
    bullet_power = bosspower;
    bullet_direction = (-10 + random(20)) / bossaccuracy;
    bullet_lifespan = 300 + irandom(90);
    bullet_size = 0.75;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;


if bossPassiveAttack[2] = 1 {
    bullet_count = 1;
    boss_xoffset = lengthdir_x(100,bossBallDirection);
    boss_yoffset = lengthdir_y(100,bossBallDirection);
    scr_Offset_Soul_Shoot();  
}

bossPassiveAttack[1] = 0;
bossPassiveAttack[2] = 0;

///Active Attack Prep

if bossActiveAttackDelay[1] <= 0 and bossActiveAttackCooldown[1] <= 0 and bossActiveAttackDuration[1] <= 0 {
    if (speed < (0.5 * bossmovespeed)) {
        var bossdirection = scr_Soul_Point();
        speed = 0.33 * bossmovespeed;
        direction = bossdirection;
    }
    var minThres = scr_Over_Minion_Count();
	
    bossActiveAttack[1] = choose(1,2,3);
    if currentphase = 2 {
        bossActiveAttack[1] = choose(1,4);
    }
	if minThres = 1 {
		bossActiveAttack[1] = choose(1,2);
	    if currentphase = 2 {
	        bossActiveAttack[1] = choose(1);
	    }
	}
    
    if bossActiveAttack[1] = 1 {
        bossActiveAttackDelay[1] = 10;
        bossPatternCount = 120;
        bossPatternCooldown = 1;
        bossPatternCooldownMax = 1;
        bossActiveAttackDuration[1] = 30 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 180 + random(15);
    }
    if bossActiveAttack[1] = 2 {
		if currentphase = 2 {
			scr_Boss_Teleport();	
		}
        bossPatternCount = 300;
        bossPatternCountMax = bossPatternCount;
        bossPatternCooldown = 1;
        bossPatternCooldownMax = 1;
        bossActiveAttackDuration[1] = 30 + bossattackspeed * bossPatternCooldownMax * (bossPatternCount + 30);
        bossActiveAttackCooldown[1] = 180 + random(15);
		
		var bossdirection = point_direction(x,y,instance_nearest(x,y,obj_Soul).x,instance_nearest(x,y,obj_Soul).y);
        
		bossPatternDirection = bossdirection;
    }
    if bossActiveAttack[1] = 3 {
        //speed = 0.01 * bossmovespeed;
        bossActiveAttackDelay[1] = 15;
        bossActiveAttackDuration[1] = 30;
        bossActiveAttackCooldown[1] = 120 + random(30);
    }
    if bossActiveAttack[1] = 4 {
        scr_Boss_Teleport();
		
        bossActiveAttackDelay[1] = 15;
        bossActiveAttackDuration[1] = 30;
        bossActiveAttackCooldown[1] = 240 + random(30);
    }
    if bossActiveAttack[1] = 4 {
        scr_Boss_Teleport();
    
        bossAngle = scr_Soul_Point();
        rspeed = 1.66;
        speed = bossmovespeed / 100;
        
        bossActiveAttackDelay[1] = 1;
        bossPatternCount = 270 + irandom(60);
        bossPatternCooldown = 1;
        bossPatternCooldownMax = 1;
        bossActiveAttackDuration[1] = 15 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 1;
    }
    if bossActiveAttack[1] = 6 {
    
        bossAngle = scr_Soul_Point();
        rspeed = 1.66;
        speed = bossmovespeed / 100;
        
        bossActiveAttackDelay[1] = 1;
        bossPatternCount = 3000;
        bossPatternCooldown = 1;
        bossPatternCooldownMax = 1;
        bossActiveAttackDuration[1] = 15 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 1;
    }
    bossPatternCountMax = bossPatternCount;
}


/// Active Attack Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Chaotic_Explode_Shot;
    bullet_sprite = spr_Chaotic_Explode_Shot;
    bullet_speed = bossbulletspeed;
    bullet_power = bosspower * 2;
    bullet_direction = (-5 + random(10)) / bossaccuracy;
    bullet_lifespan = 400;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;
    
if bossActiveAttackDelay[1] <= 0 {
        
    if bossActiveAttack[1] = 3 {
		scr_Boss_Stretch("Vertical",0.4);
		
        minion_count = 2;
        minion_type = obj_Corruption_Spire;
        minion_health = bossmaxhealth / 20;
        scr_Minion_Spawn();
		
		bossActiveAttack[1] = -3;
	}
	
	if bossActiveAttack[1] = 4 {
		scr_Boss_Stretch("Vertical",0.4);
		
        minion_count = 1;
        minion_type = obj_Corruption_Skull;
        minion_health = bossmaxhealth / 6;
        scr_Minion_Spawn();
		
		bossActiveAttack[1] = -4;
	}
}

/// Active Attack Pattern Code
    
	scr_Beam_Shoot_Properties();
    scr_Default_Attack_Settings();
    bullet_type = obj_Homing_Bullet;
    bullet_sprite = spr_Chaotic_Big_Shot;
    bullet_speed = bossbulletspeed;
    bullet_power = bosspower * 1;
    bullet_direction = (-15 + random(30)) / bossaccuracy;
    bullet_lifespan = 300;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;

if bossActiveAttackDelay[1] <= 0 and bossPatternCooldown <= 0 and bossPatternCount > 0 {
        
    
    if bossActiveAttack[1] = 1 {
		bullet_power = bosspower * 10;
		if bossPatternCount mod 10 = 0 {
			scr_Boss_Stretch("Vertical", 0.075);
		}
		
		if bossPatternCount = bossPatternCountMax {
			scr_Boss_Stretch("Vertical", 0.4);
			
	        bullet_direction = 0;
	        bullet_count = 1;
	        bullet_spread = 0;
	        bullet_speed = bossbulletspeed * (1.5 + random(0.15));
			bullet_type = obj_Corruption_Grow;
			bullet_sprite = spr_Corruption_Ball;
			bullet_size = 0;
			
			if currentphase = 2 {
				bullet_type = obj_Corruption_Bomb_Grow;
			}
			
			boss_xoffset = 0;
		    boss_yoffset = -300;
		    scr_Offset_Normal_Shoot();
		}
    }
	
	if bossActiveAttack[1] = 2 {
		if (bossPatternCount mod 5 = 0) {
			scr_Boss_Stretch("Vertical",0.05);
		}
		
		scr_Default_Attack_Settings();
	    bullet_type = obj_Laser_Beam_Charge;
	    bullet_sprite = spr_Lightning_Beam;
	    bullet_speed = 0;
	    bullet_power = bosspower * 0.5;
	    bullet_direction = bossPatternDirection + 45 + (-0.1 + random(0.2)) / bossaccuracy;
	    bullet_lifespan = 7;
	    bullet_size = 1;
	    bullet_count = 2;
	    bullet_spread = 180;
	    boss_radius = 0;
	    bullet_sprite = spr_Green_Beam;
	    beam_sprite = spr_Green_Beam;
	    beamSize = 1;
	    bossbeamattackactive = 1;
			
		beamSize = 1 * ((bossPatternCountMax - bossPatternCount) / 15)
		
		if beamSize > 1 {
			beamSize = 1;
		}
		
		var beamstart = bossPatternCountMax - bossPatternCount;
		
		scr_Easy_Boss_Beam_Shoot(bossPatternCountMax, 30);
			
	    if bossPatternCount < 280 {
			
	        //scr_Boss_Beam_Attack_New("Active",35,scr_Boss_Beam_Frame(beamstart));
				
			bossPatternDirection += 0.5 + ((280 - bossPatternCount) / 560);
	    } else {
	        //scr_Boss_Beam_Attack_New("Dormant",35,scr_Boss_Beam_Frame(beamstart));
	    }
			
		if bossPatternCount mod (15) = 0 {
			
			bullet_power = bosspower;
			if bossPatternCount mod 45 = 0 {
				scr_Boss_Stretch("Vertical",0.3);
        
				bullet_type = obj_Basic_Bullet;
				bullet_sprite = spr_Glowy_Green_Shot;
				bullet_direction = random(360);
				bullet_count = 15;
				bullet_spread = 360 / bullet_count;
				bullet_lifespan = 300;
				bullet_speed = bossbulletspeed * 1.75;
        
				scr_Just_Shoot();
			
			}
			
			
			bullet_type = obj_Poison_Pool;
			bullet_sprite = spr_Poison_Pool;
			bullet_speed = bossbulletspeed * 0;
			bullet_power = bosspower * 0.25;
			bullet_direction = (-180 + random(360)) / bossaccuracy;
			//bullet_lifespan = 240 + irandom(45);
			bullet_count = 1;
			bullet_spread = 0;
			
			var disss = 30 + random(60);
			var ang = 135;
			repeat(10) {
				bullet_depth = 200;
				repeat(2) {
					boss_xoffset = lengthdir_x(disss, bossPatternDirection + ang);
					boss_yoffset = lengthdir_y(disss, bossPatternDirection + ang);
					bullet_lifespan = 90 + irandom(30);
					bullet_size = 0.65 + random(0.15);
				
					scr_Offset_Normal_Shoot();
					
					ang += 180
				}
				disss += 75;
			}
		}
		
		speed = bossDashSpeed;
        direction = bossDashDirection;
		
    } 
    
    bossPatternCount -= 1;
    bossPatternCooldown += bossPatternCooldownMax;
}

/// Active Attack Post
   
if bossActiveAttackDuration[1] <= 0 { 
    speed = 0.33 * bossmovespeed;
    friction = 0;
    bossActiveAttack[1] = 0;
    bossActiveAttack[2] = 0;
    bossActiveAttack[3] = 0;
    bossActiveAttack[0] = 0;
}

#region /// Boss Sprite


scr_Boss_Size_Lerp(0.15);

if bossActiveAttack[1] = 1 {
    sprite_index = spr_Mind_Corruptor_Raise;
	if image_index >= 3 and bossActiveAttackDuration[1] > 5 {
		image_index = 3;	
	}
} else if bossActiveAttack[1] = 2 || bossActiveAttack[1] = 3 || bossActiveAttack[1] = 4 {
    sprite_index = spr_Mind_Corruptor_Shoot;
	if image_index >= 3 and bossActiveAttackDuration[1] > 5 {
		image_index = 3;	
	}
} else {
	sprite_index = spr_Mind_Corruptor;
}

#endregion

scr_Boss_Soul_Hitbox(sprite_index);
