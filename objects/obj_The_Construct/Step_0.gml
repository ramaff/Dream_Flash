/// @description  Boss Step Event

scr_Boss_Step();

if bossActiveAttack[1] = 1 {
	scr_Room_Loop_Everywhere();
}

if state = states.phasing {
	exit;	
}

if bossActiveAttack[1] = 0 {
	var sfac = 1;
} else {
	var sfac = 0.225;
}

ang += currentphase * sfac;	

orb = min(orb + 0.5, 150);

var dir = scr_Soul_Point();

h += lengthdir_x(bossmovespeed * 0.3 * currentphase * sfac, dir);
k += lengthdir_y(bossmovespeed * 0.3 * currentphase * sfac, dir);

var bulletCenterX = h + 40;
var bulletCenterY = k + 40;
    
x = lengthdir_x(orb, ang) + bulletCenterX;
y = lengthdir_y(orb, ang) + bulletCenterY;

///Passive Attack Prep

if bossPassiveAttackDelay[1] <= 0 and bossPassiveAttackCooldown[1] <= 0 {
    if champ = 0 and currentphase = 2 {
        bossPassiveAttack[1] = 1;
        bossPassiveAttackCooldown[1] = 15;
        bossPassiveAttackDelay[1] = 0;
    }
}

///Passive Attack Code   

if bossPassiveAttack[1] = 1 {
}

bossPassiveAttack[1] = 0;
bossPassiveAttack[2] = 0;

///Active Attack Prep

var bossdirection = scr_Soul_Point();
speed = 0.15 * bossmovespeed;
direction = bossdirection;

if bossActiveAttackDelay[1] <= 0 and bossActiveAttackCooldown[1] <= 0 and bossActiveAttackDuration[1] <= 0 {
    
	var minThres = scr_Over_Minion_Count();
    bossActiveAttackDelay[1] = 15;
    
	bossActiveAttack[1] = choose(1,2,4);
    if currentphase = 2 {
		bossActiveAttack[1] = choose(3,4,4); 
    }
	
	if minThres = 1 {
		bossActiveAttack[1] = choose(1,2);
	    if currentphase = 2 {
			bossActiveAttack[1] = choose(3); 
	    }
	}
	
    bossActiveAttackDelay[1] = 15;
	
    if bossActiveAttack[1] = 1 {
		image_index = 0;
        bossActiveAttackCooldown[1] = (160 + random(30));
        bossPatternCount = 3;
		
		if tier >= 1 {
			bossPatternCount = 2;	
		}
		//bossActiveAttackDelay[1] = 0;
        bossPatternCooldown = 10;
		bossPatternCooldownMax = 90;
		
		if tier >= 1 {
			bossPatternCooldownMax = 120;	
		}
		
		if tier >= 3 {
			bossPatternCount = 3;	
		}
		
        bulletdirection = random(360);
        bossPatternDirection = bulletdirection;
		bossPatternDirection2 = bulletdirection + 180;
        bossActiveAttackDuration[1] = 10 + bossPatternCooldownMax * bossPatternCount;
    }
    if bossActiveAttack[1] = 2 {
		image_index = 0;
        bossActiveAttackCooldown[1] = (150 + random(30));
        bossPatternCount = 18;
        bossPatternCooldown = 18;
		bossPatternCooldownMax = 18;
		
		if tier >= 1 {
			bossPatternCount = 27;
	        bossPatternCooldown = 15;
			bossPatternCooldownMax = 15;
		}
		
		if tier >= 3 {
			bossPatternCount = 40;
	        bossPatternCooldown = 12;
			bossPatternCooldownMax = 12;
		}
		
        bulletdirection = 45;
        bossPatternDirection = bulletdirection;
        bossActiveAttackDuration[1] = 10 + bossPatternCooldownMax * bossPatternCount;
    }
    if bossActiveAttack[1] = 3 {
		
        image_index = 0;
        bossActiveAttackCooldown[1] = (120 + random(30));
        bossPatternCount = 20;
		
        bossPatternCooldown = 8;
		bossPatternCooldownMax = 8;
		
		if tier >= 1 {
			bossPatternCount = 40;	
			bossPatternCooldown = 7;
			bossPatternCooldownMax = 7;
		}
		
		if tier >= 3 {
			bossPatternCount += 20;
			bossPatternCooldown = 6;
			bossPatternCooldownMax = 6;
		}
		
        bulletdirection = 330;
		
		bulletdirection -= 110 + random(20);
		
        bossPatternDirection = bulletdirection;
        bossActiveAttackDuration[1] = 10 + bossPatternCooldownMax * bossPatternCount;
    }
	if bossActiveAttack[1] = 4 {
        image_index = 0;
        bossActiveAttackCooldown[1] = (180 + random(30));
        bossPatternCount = 1;
		//bossActiveAttackDelay[1] = 0;
        bossPatternCooldown = 1;
		bossPatternCooldownMax = 1;
        bossActiveAttackDuration[1] = 90 + bossPatternCooldownMax * bossPatternCount;
    }
	
	bossPatternCountMax = bossPatternCount;
    
}


/// Active Attack Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Hatred_Seeking_Bullet;
    bullet_sprite = spr_Boss_Ninja_Star;
    bullet_speed = bossbulletspeed * 5;
    bullet_power = bosspower * 1;
    bullet_direction = (-5 + random(10)) / bossaccuracy;
    bullet_lifespan = 400;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;

if bossActiveAttackDelay[1] <= 0 {        
    
	if bossActiveAttack[1] = 4 {
		scr_Boss_Stretch("Horizontal",0.3);
		
		bullet_type = obj_Turret_Spawning_Bullet;
		bullet_sprite = spr_Wrench_Bullet;
        
		bullet_count = 2;
		if tier = 1 || tier = 3 {
			bullet_count = 3;	
		}
		
		if tier >= 2 {
			bullet_type = obj_Turret_Spawning_Bullet_2;
		}
		
		bullet_spread = 180;
		bullet_lifespan = 80;
		bullet_speed = bossbulletspeed;
		bullet_size = 0.75;
		
		bullet_speedfac_min = 1;
		bullet_speedfac_add = 1.2;
		bullet_timefac_min = 1;
		bullet_timefac_add = 0;
		
		scr_Soul_Shoot_Vomit();
	
		bossActiveAttack[1] = -4;
	
	}
}

#region /// Active Attack Pattern Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Basic_Bullet;
    bullet_sprite = spr_Glowy_Enemy_Shot;
    bullet_speed = bossbulletspeed * 1.9;
    bullet_power = bosspower;
    bullet_direction = (-5 + random(10)) / bossaccuracy;
    bullet_lifespan = 420;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;

if bossActiveAttackDelay[1] <= 0 and bossPatternCooldown <= 0 and bossPatternCount > 0 {
        
	if bossActiveAttack[1] = 1 {
		
        scr_Boss_Stretch("Horizontal", 0.4);
		
        bullet_speed = bossbulletspeed * (2.2 + random(0.1));
		bullet_power = bosspower * 2;
		
		bullet_direction = bossPatternDirection;
		
		bossPatternDirection += 180;
		
		if tier >= 1 {
			bossPatternDirection += 90;
		}
		
		bullet_lifespan = 480;
		
		bullet_count = 1;
		bullet_type = obj_Gear_Bullet;
		bullet_sprite = spr_Gear_Bullet
		
		if tier >= 1 {
			bullet_count = 2;	
		}
		
		if tier >= 2 {
			bullet_type = obj_Gear_Bullet_2;	
		}
		
		scr_Orbit_Shoot(4,self,false);
		
    }
	
    if bossActiveAttack[1] = 2 {
		
		scr_Boss_Stretch("Horizontal", 0.05);
		
		bullet_speed = bossbulletspeed * 1.5;
		
		bullet_direction = bossPatternDirection;
		//bossPatternDirection += 6;
		
		bullet_count = 4;
		bullet_spread = 360 / bullet_count;
		
		var mnum = 9;
		
		if tier >= 2 {
			mnum = 8;	
		}
		
		if bossPatternCount mod mnum = 3 {
			bullet_type = obj_Wrench_Bullet;
			bullet_sprite = spr_Wrench_Bullet;
			
			if tier >= 2 {
				bullet_type = obj_Wrench_Bullet_2;	
			}
			
		} else {
			bullet_type = obj_Step_Wave_Bullet;
			bullet_sprite = spr_Glowy_Orange_Shot;	
		}
		
		scr_Just_Shoot();
		
    }
    if bossActiveAttack[1] = 3 {
		scr_Boss_Stretch("Horizontal", 0.05);
		
		bullet_speed = bossbulletspeed * 1.5;
		bullet_lifespan = 240;
		
		if tier >= 2 {
			bullet_speed = bossbulletspeed * 1.25;
		}
		
		bullet_direction = bossPatternDirection;
		//bossPatternDirection += 6;
		
		bullet_count = 1;
		bullet_spread = 360 / bullet_count;
		
		var acount = 1;
		if tier >= 2 {
			acount = 2;	
		}
		
		repeat(acount) {
			bullet_speed += bossbulletspeed * 0.5;
			bullet_direction = bossPatternDirection;
			
			boss_xoffset = 100;
			boss_yoffset = 90;
			scr_Offset_Normal_Shoot();
		
			boss_xoffset = -100;
			bullet_direction += 240;
			scr_Offset_Normal_Shoot();
		
			boss_yoffset = -10;
			bullet_direction -= 60;
			scr_Offset_Normal_Shoot();
		
			boss_xoffset = 100;
			bullet_direction += 240;
			scr_Offset_Normal_Shoot();
		}
		
		if (bossPatternCountMax - bossPatternCount) mod 40 < 20 {
			bossPatternDirection += 9.5 + random(1);
		} else {
			bossPatternDirection -= 9.5 + random(1);
		}
		
    }
	
	
	bossPatternCount -= 1;
    bossPatternCooldown += bossPatternCooldownMax;
}

#endregion

/// Active Attack Post
   
if bossActiveAttackDuration[1] <= 0 { 
    bossActiveAttack[1] = 0;
    bossActiveAttack[2] = 0;
}

#region /// Boss Sprite

scr_Boss_Size_Lerp(0.15);

if bossActiveAttack[1] = 3 {
	sprite_index = spr_The_Construct_Shoot
	if image_index > 6 and bossActiveAttackDuration[1] > 15 {
		image_index = 6;
	}
	image_speed = 1;
} else if bossActiveAttack[1] = 1 || bossActiveAttack[1] = 2 {
	sprite_index = spr_The_Construct_Shoot
	if image_index > 6 and bossActiveAttackDuration[1] > 15 {
		image_index = 6;
	}
	image_speed = 1;
} else if bossActiveAttack[1] = 4 || bossActiveAttack[1] = -4{
	sprite_index = spr_The_Construct_Shoot
	if image_index > 6 and bossActiveAttackDuration[1] > 15 {
		image_index = 6;
	}
	image_speed = 1;
}else {
	sprite_index = spr_The_Construct
}

   
#endregion

scr_Boss_Soul_Hitbox(sprite_index);