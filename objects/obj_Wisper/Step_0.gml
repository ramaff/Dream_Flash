/// @description  Boss Step Event

scr_Boss_Step();

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
speed = 0.5 * bossmovespeed;
direction = bossdirection;

if currentphase = 2 {
	speed = 0;	
}

if bossActiveAttackDelay[1] <= 0 and bossActiveAttackCooldown[1] <= 0 and bossActiveAttackDuration[1] <= 0 {
    
    bossActiveAttack[1] = choose(1,2,3);
    bossActiveAttackDelay[1] = 15;
	
	if champ = 1 {
		bossActiveAttack[1] = choose(1,2,4);
	}
	if champ = 2 {
		bossActiveAttack[1] = choose(1,3,5);
	}
   
    if currentphase = 2 {
        bossActiveAttack[1] = 1;
    }
    
    if bossActiveAttack[1] = 1 {
		
		image_index = 0;
		image_speed = 1;
		
        bossActiveAttackCooldown[1] = (120 + (irandom(1) * 40));
        bossActiveAttackDuration[1] = 5;
		if currentphase = 2 {
			bossActiveAttackCooldown[1] += 30;	
		}
    }
    if bossActiveAttack[1] = 2 {
		image_index = 0;
		image_speed = 1;
		
        bossActiveAttackCooldown[1] = (120 + (irandom(1) * 40));
        bossPatternCount = 3;
        bossPatternCooldown = 5;
		bossPatternCooldownMax = 40;
        bulletdirection = random(360);
        bossPatternDirection = bulletdirection;
        bossActiveAttackDuration[1] = -25 + bossPatternCooldownMax * bossPatternCount;
    }
    if bossActiveAttack[1] = 3 {
		image_index = 0;
		image_speed = 1;
		
        bossActiveAttackCooldown[1] = (120 + (irandom(1) * 40));
        bossPatternCount = 3;
        bossPatternCooldown = 5;
		bossPatternCooldownMax = 40;
        bulletdirection = random(360);
        bossPatternDirection = bulletdirection;
        bossActiveAttackDuration[1] = -25 + bossPatternCooldownMax * bossPatternCount;
    }
	if bossActiveAttack[1] = 4 {
		image_index = 0;
		image_speed = 1;
		
        bossActiveAttackCooldown[1] = (120 + (irandom(1) * 40));
        bossPatternCount = 3;
        bossPatternCooldown = 5;
		bossPatternCooldownMax = 40;
        bulletdirection = random(360);
        bossPatternDirection = bulletdirection;
        bossActiveAttackDuration[1] = -25 + bossPatternCooldownMax * bossPatternCount;
    }
	if bossActiveAttack[1] = 5 {
		
		image_index = 0;
		image_speed = 1;
		
        bossActiveAttackCooldown[1] = (120 + (irandom(1) * 40));
        bossPatternCount = 3;
        bossPatternCooldown = 5;
		bossPatternCooldownMax = 40;
        bulletdirection = random(360);
        bossPatternDirection = bulletdirection;
        bossActiveAttackDuration[1] = -25 + bossPatternCooldownMax * bossPatternCount;
    }
    
}


/// Active Attack Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Smart_Home_Bullet;
    bullet_sprite = spr_Glowy_Teal_Shot;
    bullet_speed = bossbulletspeed;
    bullet_power = bosspower * 1;
    bullet_direction = (-5 + random(10)) / bossaccuracy;
    bullet_lifespan = 420;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;

if bossActiveAttackDelay[1] <= 0 {        
    
    if bossActiveAttack[1] = 1 {
		scr_Boss_Stretch("Vertical", 0.3);
		
		bullet_speed = bossbulletspeed * (1.35 + random(0.15));
		bullet_direction = random(360);
        bullet_count = 2;
		if currentphase = 2 {
			bullet_count += 1;	
			bullet_speed -= bossbulletspeed * 0.45;
		}
        bullet_spread = 360 / bullet_count;
        scr_Just_Shoot();
		
		bullet_direction += bullet_spread / 2;
		bullet_speed -= bossbulletspeed * 0.45;
		
		scr_Just_Shoot();
        bossActiveAttack[1] = 0;
    }
}

/// Active Attack Pattern Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Smart_Home_Bullet;
    bullet_sprite = spr_Glowy_Teal_Shot;
    bullet_speed = bossbulletspeed;
    bullet_power = bosspower * 1;
    bullet_direction = (-5 + random(10)) / bossaccuracy;
    bullet_lifespan = 150 + irandom(30);
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;

if bossActiveAttackDelay[1] <= 0 and bossPatternCooldown <= 0 and bossPatternCount > 0 {
        
	if bossActiveAttack[1] = 2 {
		scr_Boss_Stretch("Vertical", 0.3);
		
		bullet_speed = bossbulletspeed * (0.95 + random(0.125));
		bullet_sprite = spr_Green_Shot;
		bullet_size = 1.25;
		bullet_type = obj_Whisper_Strike_Bullet;
		
        scr_Soul_Shoot();
    }
	
	if bossActiveAttack[1] = 3 {
		scr_Boss_Stretch("Vertical", 0.3);
		
		bullet_speed = bossbulletspeed * (0.55 + random(0.125));
		bullet_sprite = spr_Pink_Shot;
		bullet_size = 1.25;
		bullet_type = obj_Whisper_Mine_Bullet;
		bullet_direction = random(360);
		
        scr_Just_Shoot();
    }
	
	if bossActiveAttack[1] = 4 {
		scr_Boss_Stretch("Vertical", 0.3);
		
		bullet_speed = bossbulletspeed * (0.55 + random(0.15));
		bullet_sprite = spr_Blue_Shot;
		bullet_size = 1.25;
		bullet_type = obj_Air_Mine_Bullet;
		bullet_direction = random(360);
		
        scr_Just_Shoot();
    }
	
	if bossActiveAttack[1] = 5 {
		scr_Boss_Stretch("Vertical", 0.3);
		
		bullet_speed = bossbulletspeed * (0.8 + random(0.125));
		bullet_sprite = spr_Purple_Shot;
		bullet_size = 1.25;
		bullet_type = obj_Burst_Strike_Bullet;
		
        scr_Soul_Shoot();
    }
	
	bossPatternCount -= 1;
    bossPatternCooldown += bossPatternCooldownMax;
}

/// Boss Sprite 

scr_Boss_Size_Lerp(0.15);

if currentphase = 2 {
	sprite_index = spr_Wisper_P2;
}

if bossActiveAttack[1] != 0 {
	sprite_index = spr_Wisper_Blink;	
	image_speed = 1;
} else {
	sprite_index = spr_Wisper;	
	image_speed = 0.5;
}


/// Active Attack Post

if currentphase = finalphase and split = 0 {
    split = 1;
    with instance_create(x,y, obj_Wandering_Wisper) {
		difficulty = other.difficulty / 2;
        champ = other.champ + 0.1;
        boost = other.boost;
        global.bosscount += 1;
		scr_Boss_Stats_Setup();
		difficulty = Floor_Layout_Control.Flash[global.currentroom,24] / 2;
    }
	with instance_create(x,y, obj_Relentless_Wisper) {
		difficulty = other.difficulty / 2;
        champ = other.champ + 0.2;
        boost = other.boost;
        global.bosscount += 1;
		scr_Boss_Stats_Setup();
		
		difficulty = Floor_Layout_Control.Flash[global.currentroom,24] / 2;
    }
	difficulty = 0;
	instance_destroy();
}
   
if bossActiveAttackDuration[1] <= 0 { 
    bossActiveAttack[1] = 0;
    bossActiveAttack[2] = 0;
}

scr_Boss_Soul_Hitbox(sprite_index);