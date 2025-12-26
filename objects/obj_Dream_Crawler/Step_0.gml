/// @description  Boss Step Event

scr_Boss_Step();

//image_angle = direction;

#region ///Passive Attack Prep


var speedFac = 1;

if currentphase = 2 {
	speedFac = 0.5;	
}

var pointDir = scr_Soul_Point();


var im = direction;

speed = min(speed + 0.05, (bossmovespeed * speedFac));

im += sin(degtorad(pointDir - im)) * rspeed;
direction = im;

var adif = 15 + abs(angle_difference(direction, pointDir));
speed += (40 - (adif / 2)) / (1200 / (bossmovespeed * speedFac));

if speed < (bossmovespeed * 0.2 * speedFac) {
	speed = bossmovespeed * 0.2 * speedFac;	
}
if speed > (bossmovespeed * speedFac) {
	speed = bossmovespeed * speedFac;
}

if bossPassiveAttackDelay[1] <= 0 and bossPassiveAttackCooldown[1] <= 0 {
	
    if champ = 1 {
		
    bossPassiveAttack[1] = 1;
    bossPassiveAttackCooldown[1] = 1 + 12 / (1 + speed);
    bossPassiveAttackDelay[1] = 2;
	}
    
}

#endregion

#region ///Passive Attack Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Poison_Pool;
    bullet_sprite = spr_Poison_Pool;
    bullet_speed = bossbulletspeed * 0;
    bullet_power = bosspower * 0.15;
    bullet_direction = (-180 + random(360)) / bossaccuracy;
    bullet_lifespan = 75 + irandom(15);
    bullet_size = 0.65 + random(0.15);
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;
	bullet_image_speed = 0.2;

if bossPassiveAttack[1] = 1 {
	//bullet_blend = c_lime;
    scr_Just_Shoot();    
}

bossPassiveAttack[1] = 0;
bossPassiveAttack[2] = 0;

#endregion


#region ///Active Attack Prep///
////////////////////////

if bossActiveAttackDelay[1] <= 0 and bossActiveAttackCooldown[1] <= 0 and bossActiveAttackDuration[1] <= 0 {
    if currentphase = 1 {
        bossActiveAttack[1] = choose(0);
    }
    if currentphase = 2 {
        //bossActiveAttack[1] = choose(1,4);
    }
	//bossActiveAttack[1] = 1;
    bossActiveAttackDelay[1] = 10;   
    
    if bossActiveAttack[1] = 1  {
        bossPatternCount = 1;
        bossPatternCountMax = bossPatternCount;
        bossPatternCooldown = 90;
        bossPatternCooldownMax = 90;
        bossActiveAttackDuration[1] = 15 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 60 + (40 * irandom(1))
    }
    if bossActiveAttack[1] = 2  {
		bossActiveAttackDelay[1] = 15;  
		scr_Boss_Dash_Setup();
        bossPatternCount = 60;
        bossPatternCountMax = bossPatternCount;
        bossPatternCooldown = 1;
        bossPatternCooldownMax = 1;
        bossActiveAttackDuration[1] = 5 + bossattackspeed * bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 40 + (40 * irandom(1));
		
		var bossdirection = scr_Soul_Point();
        bossMaxDashSpeed = 7 * bossmovespeed;
		bossDashSpeed = 0;
        if champ = 8 {
            bossMaxDashSpeed = 7.8 * bossmovespeed;
        }
    }
    if bossActiveAttack[1] = 3  {
		bossActiveAttackDelay[1] = 15;
        bossActiveAttackDuration[1] = 15;
        bossActiveAttackCooldown[1] = (130 + (40 * irandom(1)));
    }
    if bossActiveAttack[1] = 4  {
        scr_Boss_Teleport();
		bossActiveAttackDelay[1] = 15;
        bossActiveAttackDuration[1] = 15;
        bossActiveAttackCooldown[1] = (90 + (40 * irandom(1)));
    }
    if bossActiveAttack[1] = 5  {
        bossActiveAttackDelay[1] = 15;
        bossActiveAttackDuration[1] = 15;
        bossActiveAttackCooldown[1] = (130 + (40 * irandom(1)));
    }
    if bossActiveAttack[1] = 6  {
        scr_Boss_Dash_Setup();
        bossPatternCount = 40;
        bossPatternCountMax = bossPatternCount;
        bossPatternCooldown = 1;
        bossPatternCooldownMax = 1;
        bossActiveAttackDuration[1] = 15 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 60 + (40 * irandom(1))
		
		var bossdirection = scr_Soul_Point();
        bossMaxDashSpeed = 7.5 * bossmovespeed;
		bossDashSpeed = 0;
    }
}

#endregion


#region /// Active Attack Code ///
//////////////////////////

    scr_Default_Attack_Settings();
    bullet_type = obj_Fright_Bullet;
    bullet_sprite = spr_Spectre_Shot;
    bullet_speed = bossbulletspeed;
    bullet_power = bosspower * 1;
    bullet_direction = (-5 + random(10)) / bossaccuracy;
    bullet_lifespan = 120 + random(90);
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;

if bossActiveAttackDelay[1] <= 0 {
        
    if bossActiveAttack[1] = 1 {
		scr_Boss_Stretch("Vertical",0.5);
		
        bullet_speed = bossbulletspeed * 1.5;
        if champ = 2 {
            bullet_type = obj_Distorter_Bullet;
            bullet_sprite = spr_Distorter_Shot;
            bullet_speed = bossbulletspeed * 1.15;
        }
		if champ = 8 {
			bullet_count = 3;
			bullet_spread = 90;
		}
        scr_Soul_Shoot();
		
		bossActiveAttack[1] = -1;
    }
    if bossActiveAttack[1] = 3 {
		scr_Boss_Stretch("Vertical",0.5);
		
        bullet_type = obj_Wandering_Bullet;
        bullet_count = 8;
        bullet_spread = 45;
        bullet_lifespan = 400;
        bullet_speed = bossbulletspeed * 1.2;
        if champ = 2 {
            bullet_type = obj_Homing_Bullet;
            bullet_sprite = spr_Purple_Shot;
            bullet_count = 8;
            bullet_spread = 45;
            bullet_lifespan = 185;
            bullet_speed = bossbulletspeed * 1.75;
        }
		if champ = 8 {
			bullet_speed = bossbulletspeed * 1.45;	
		}
        scr_Just_Shoot();
		
		if champ = 8 {
			bullet_count = 4;
			bullet_spread = 90;
			bullet_type = obj_Fright_Bullet;
			bullet_speed = bossbulletspeed;	
			
			scr_Just_Shoot();
		}
		
		bossActiveAttack[1] = -3;
    }
    if bossActiveAttack[1] = 4 {
		scr_Boss_Stretch("Vertical",0.5);
		
        bullet_type = obj_Wandering_Bullet;
        bullet_count = 4;
        bullet_spread = 15;
        bullet_lifespan = 400;
        bullet_speed = bossbulletspeed * 1.8;
        if champ = 2 {
            bullet_type = obj_Distorter_Bullet;
            bullet_sprite = spr_Distorter_Shot;
            bullet_count = 2;
            bullet_spread = 95 + random(30);
            bullet_lifespan = 133;
            bullet_speed = bossbulletspeed * 1.8;
        }
        scr_Soul_Shoot();
		if champ = 8 {
			bullet_count = 5;
			bullet_speed = bossbulletspeed * 1.3;
			scr_Soul_Shoot();
		}
		
		bossActiveAttack[1] = -4;
    }
    if bossActiveAttack[1] = 5 {
		scr_Boss_Stretch("Vertical",0.4);
		
        minion_count = 4;
        minion_type = obj_Spooked_Ghoul;
        if champ = 2 {
            minion_type = obj_Distorted_Ghoul;
			minion_count = 3;
        }
        minion_health = bossmaxhealth / 25;
        scr_Minion_Spawn();
		
		bossActiveAttack[1] = -5;
    }
    
}

#endregion

#region /// Active Attack Pattern Code
    
if bossActiveAttackDelay[1] <= 0 and bossPatternCooldown <= 0 and bossPatternCount > 0 {
    
	
    if bossActiveAttack[1] = 2 {
		//if bossSizeY > 0.75 {
			scr_Boss_Stretch("Horizontal",0.03);
		//}
		
        scr_Boss_Dash_Movement(15,12);
		
		speed = bossDashSpeed;
        direction = bossDashDirection;
    }
	
	if bossActiveAttack[1] = 6 {
		
		//if bossSizeY > 0.7 {
			scr_Boss_Stretch("Horizontal",0.03);
		//}
        
		scr_Boss_Dash_Movement(15,5);
		speed = bossDashSpeed;
        direction = bossDashDirection;
		
		if bossPatternCount = bossPatternCountMax {
	        bullet_type = obj_Basic_Red_Bullet;
	        bullet_sprite = spr_Grey_Shot;
	        bullet_count = 10;
	        bullet_spread = 36;
	        bullet_lifespan = 150;
	        bullet_direction = (random(36));
	        bullet_speed = bossbulletspeed * 2.5;
	        scr_Just_Shoot();
	        bullet_lifespan = 300;
			bullet_direction += 18;
	        bullet_speed = bossbulletspeed * 1.5;
	        scr_Just_Shoot();
		}
    }
    
    bossPatternCount -= 1;
    bossPatternCooldown += bossPatternCooldownMax;
}

#endregion


#region /// Active Attack Post ///
//////////////////////////
   
if bossActiveAttackDuration[1] <= 0 { 
    bossActiveAttack[1] = 0;
}

#endregion

#region /// Boss Sprite Code

scr_Boss_Size_Lerp_Dir(0.15);

scr_Boss_Two_Face_Direction();

//if champ = 0 {
	if bossActiveAttack[1] = 2 { // Sonic Attack
		if bossActiveAttackDuration[1] > 0 {
			//sprite_index = spr_Spooky_Spirit_Dash;
		} else {
			//sprite_index = spr_Spooky_Spirit
		}
	} else { // Default
		//sprite_index = spr_Spooky_Spirit	
	}
//}

#endregion

scr_Boss_Soul_Hitbox(sprite_index);