/// @description  Boss Step Event

scr_Boss_Step();

scr_Room_Loop_Horizontal();

var act = 0;
startX = startX + lengthdir_x(bossmovespeed * 0.6, point_direction(startX, startY, obj_Soul_Parent.perX, obj_Soul_Parent.perY));
startY = startY + lengthdir_y(bossmovespeed * 0.6, point_direction(startX, startY, obj_Soul_Parent.perX, obj_Soul_Parent.perY));
	
with (obj_Veil_Mask) {
	if veilMorph != 0 {
		act = 1;	
	}
	startX = other.startX;
	startY = other.startY;
	currentphase = other.currentphase;
}

//currentphase = 2;

if currentphase = 1 {
	image_alpha = 0;
} else {
	if image_alpha = 0 {
		scr_Boss_Teleport_Far();	
	}
	instance_create(x,y, obj_The_Veil_True_Boss) {
        champ = other.champ;
        boost = other.boost;
        coreNum = other.coreCount;
        bossID = other.bossID;
		startX = other.startX;
		startY = other.startY;
		difficulty = global.floor[global.currentroom,24];
        //currentphase = other.currentphase;
    }
	with (obj_Veil_Mask) {
		if bossID = other.bossID {
			currentphase = 2;	
		}
	}
    instance_destroy();
}


if instance_exists(obj_The_Veil_True_Boss) {
	instance_destroy();	
}
///Passive Attack Prep

///////////////////////////////////////////////////////////////////
//////////////////////////////////////Active Attack Prep
///////////////////////////


var bossdirection = scr_Soul_Point()
    speed = 0.3 * bossmovespeed;
    direction = bossdirection;

if bossActiveAttackDelay[1] <= 0 and bossActiveAttackCooldown[1] <= 0 and bossActiveAttackDuration[1] <= 0 and act = 0 {
    mCount = instance_number(obj_Minion_Parent);
    bCount = instance_number(obj_Main_Boss_Parent);
	
    bossActiveAttack[1] = 0;
    if currentphase = 2 {
        bossActiveAttack[1] = choose(3,4);
    }
    if bossActiveAttack[1] = 1 {
        bossActiveAttackDelay[1] = 10;
        bossPatternCount = 3;
        bossPatternCooldown = 60;
        bossPatternCooldownMax = 60;
        bossActiveAttackDuration[1] = 10 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 100 + (irandom(1) * 20);
    }
    if bossActiveAttack[1] = 2 {
		
        bossActiveAttackDelay[1] = 10;
        bossPatternCount = 6;
        bossPatternCooldown = 15;
        bossPatternCooldownMax = 15;
        bossActiveAttackDuration[1] = 10 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 90 + (irandom(1) * 20);
    }
	if bossActiveAttack[1] = 3 {
        bossActiveAttackDelay[1] = 10;
        bossPatternCount = 6;
        bossPatternCooldown = 10;
        bossPatternCooldownMax = 10;
        bossActiveAttackDuration[1] = 10 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 90 + (irandom(1) * 20);
    }
	if bossActiveAttack[1] = 4 {
        scr_Boss_Dash_Setup();
        bossPatternCount = 150;
        bossPatternCountMax = bossPatternCount;
        bossPatternCooldown = 1;
        bossPatternCooldownMax = 1;
        bossActiveAttackDuration[1] = 10 + bossattackspeed * bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 40 + (irandom(1) * 20);
		
		var bossdirection = scr_Soul_Point()
        bossDashDirection = bossdirection;
		bossMaxDashSpeed = 2 * bossmovespeed;
		bossDashSpeed = 0;
    }
	if bossActiveAttack[1] = 5 {
        bossActiveAttackDelay[1] = 10;
        bossPatternCount = 9;
        bossPatternCooldown = 7;
        bossPatternCooldownMax = 7;
        bossActiveAttackDuration[1] = 7 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 120 + (irandom(1) * 20);
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
    bullet_type = obj_Basic_Bullet;
    bullet_sprite = spr_Glowy_Enemy_Shot
    bullet_speed = bossbulletspeed * 1;
    bullet_power = bosspower * 1; 
    bullet_direction = (-5 + random(10)) / bossaccuracy;
    bullet_lifespan = 240 + random(180);
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;

if bossActiveAttackDelay[1] <= 0 and bossPatternCooldown <= 0 and bossPatternCount > 0 {
        
	if bossActiveAttack[1] = 1 {
		scr_Boss_Stretch("Vertical", 0.4);
		bullet_speed = bossbulletspeed * (2.25 + random(0.4));
		bullet_count = 1;
		
        scr_Soul_Shoot();
    }
    if bossActiveAttack[1] = 5 {
		scr_Boss_Stretch("Vertical", 0.4);
        bullet_direction = (-10 + random(20)) / bossaccuracy;
		bullet_sprite = spr_Enemy_Shot;
		bullet_type = obj_Sporadic_Bullet;
		bullet_speed = bossbulletspeed * (1.4 + ((bossPatternCountMax - bossPatternCount) / 2));
		bullet_count = 5 + (bossPatternCountMax - bossPatternCount);
		bullet_spread = 100 / bullet_count;
		
        scr_Soul_Shoot();
    }
	if bossActiveAttack[1] = 2 {
		
		//if (bossPatternCount > bossPatternCountMax - 6) {
			scr_Boss_Stretch("Vertical", 0.2);
		
			minion_count = 1;
	        minion_type = obj_Sweeping_Locust_Clone;
	        minion_health = bossmaxhealth / 20;
	        scr_Minion_Spawn();
		//}
	
    }
	if bossActiveAttack[1] = 3 {
		scr_Boss_Stretch("Vertical", 0.3);
		
        bullet_direction = (-20 + random(40)) / bossaccuracy;
		bullet_sprite = spr_Glowy_Enemy_Shot;
		bullet_type = obj_Basic_Bullet;
		bullet_count = 4;
		bullet_lifespan = 400;
		bullet_speed = bossbulletspeed * (2.4);
		bullet_spread = 180 / bullet_count;
		
		if bossPatternCount != 1 {
			scr_Soul_Shoot();
		}
		
		if bossPatternCount = 1 {
			bullet_count = 16;
			bullet_spread = bullet_spread / 3;
			scr_Soul_Shoot();
		}
		
    }
	/*
	if bossActiveAttack[1] = 3 {
		minion_count = 1;
        //minion_type = obj_Circling_Locust_Clone;
        minion_health = bossmaxhealth / 20;
        scr_Minion_Spawn();
		
        if bossPatternCount = bossPatternCooldownMax {
			scr_Boss_Dash_Movement(27,60);
		
			speed = bossDashSpeed;
	        direction = bossDashDirection;
		}
	}
	*/
	
	if bossActiveAttack[1] = 5 {
		scr_Boss_Stretch("Vertical", 0.1);
		
        bullet_direction = (-20 + random(40)) / bossaccuracy;
		bullet_sprite = spr_Pestilence_Shot;
		bullet_type = obj_Exploding_Green;
		bullet_count = 1;
		bullet_lifespan = 80;
		bullet_image_speed = 0.5;
		bullet_speed = bossbulletspeed * (1 + random(2));
		
        scr_Soul_Shoot();
    }
	
	if bossActiveAttack[1] = 4 {
		if bossPatternCount mod 10 = 0 {
			scr_Boss_Stretch("Vertical", 0.05);
		}
		if bossPatternCount = 1 {
			scr_Boss_Stretch("Vertical", 0.4);
			
			bullet_lifespan = 400;
			bullet_count = 24;
			bullet_speed = bossbulletspeed * (1.6 + random(0.15));
			bullet_spread = 360 / bullet_count;
			bullet_sprite = spr_Glowy_Enemy_Shot;
			bullet_type = obj_Phase_Bullet;
			
			scr_Just_Shoot();
			
			repeat(4) {
				bullet_count = 6;
				bullet_spread = 360 / bullet_count;
				bullet_speed += bossbulletspeed * 0.3;
			
				scr_Just_Shoot();
			}	
		}
		
        scr_Boss_Dash_Movement(50,20);
		
		speed = bossDashSpeed;
        direction = bossDashDirection;
		
		souldir = scr_Soul_Point();
		var adif = angle_difference(bossDashDirection, souldir);
		if adif < 0 {
			bossDashDirection += 0.66;
		}
		if adif > 0 {
			bossDashDirection -= 0.66;
		}
    }
    
    bossPatternCount -= 1;
    bossPatternCooldown += bossPatternCooldownMax;
}

/* */
/// Active Attack Post
   
if bossActiveAttackDuration[1] <= 0 { 
    //speed = 0.33 * bossmovespeed;
    //friction = 0;
    bossActiveAttack[1] = 0;
    bossActiveAttack[2] = 0;
    bossActiveAttack[3] = 0;
    bossActiveAttack[0] = 0;
}

#region /// Boss Sprite Code

scr_Boss_Size_Lerp(0.15);

//if champ = 0 {
	if bossActiveAttack[1] != 0 { 
			sprite_index = spr_The_Veil_Attack;
			if image_index >= 3 and bossActiveAttackDuration[1] > 10 {
				image_index = 3;	
			}
	} else { // Default
		sprite_index = spr_The_Veil;		
	}
//}

#endregion

//sprite_index = spr_Peering_Spectre_old;
/* */
/*  */
