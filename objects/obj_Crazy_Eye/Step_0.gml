/// @description  Boss Step Event

scr_Boss_Step();

scr_Boss_Height_Bob(40, 1, 0);

depth = -1;


if champ = 1 {
    direction += -1 + random(2);
    scr_Wall_Bounce();
}

///Passive Attack Prep

if bossPassiveAttackDelay[1] <= 0 and bossPassiveAttackCooldown[1] <= 0 {
	speed += 0.33;
    direction += -1 + random(2);
    if speed >= bossmovespeed * 1.3 {
		speed = bossmovespeed * 1.3;
	}
    if currentphase = 2 {
		if speed >= bossmovespeed * 0.175 {
			speed = bossmovespeed * 0.175;
		}
		direction = scr_Soul_Point();
    }
    
    bossPassiveAttack[1] = 1;
    bossPassiveAttackCooldown[1] = 5;
	if currentphase = 2 {
		bossPassiveAttackCooldown[1] += 15;
	}
    bossPassiveAttackDelay[1] = 2;
    
}

if currentphase = 2 {
    
    if bossPassiveAttackDelay[2] <= 0 and bossPassiveAttackCooldown[2] <= 0 {
        
        bossPassiveAttack[2] = 1;
        bossPassiveAttackCooldown[2] = 30 + irandom(3);
        bossPassiveAttackDelay[2] = 2;
        //if champ = 1 {
			bossPassiveAttack[2] = 0;
		//	bossPassiveAttackCooldown[2] = 12 + irandom(3);
		//}
    }

}


///Passive Attack Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Poison_Pool;
    bullet_sprite = spr_Jelly_Pool;
    bullet_speed = bossbulletspeed * 0;
    bullet_power = bosspower * 0.15;
    bullet_direction = (-180 + random(360)) / bossaccuracy;
    bullet_lifespan = 75 + irandom(15);
    bullet_size = 0.65 + random(0.15);
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;
	bullet_depth = 20;

if bossPassiveAttack[1] = 1 {
	bullet_blend = c_red;
	boss_yoffset = bossHeight;
    scr_Just_Shoot();    
}

    scr_Default_Attack_Settings();
    bullet_type = obj_Basic_Bullet;
    bullet_sprite = spr_Enemy_Shot;
    bullet_speed = bossbulletspeed * 0.5;
    bullet_power = bosspower;
    bullet_direction = (-10 + random(20)) / bossaccuracy;
    bullet_lifespan = 300 + irandom(90);
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;
	
	bullet_depth = 20;

if bossPassiveAttack[2] = 1 {
    bullet_direction = bossHandDirection;
    bullet_speed = bossbulletspeed * (0.35 + random(0.15));
    bullet_count = 2;
	bullet_spread = 180;
    scr_Just_Shoot();    
    bossHandDirection += 15 + irandom(3);
    
}
if bossPassiveAttack[2] = 2 {
	bullet_sprite = spr_Glowy_Purple_Shot;
    bullet_direction = bossHandDirection;
    bullet_speed = bossbulletspeed * 0.95;
    bullet_count = 2;
	bullet_spread = 180;
    scr_Just_Shoot();  
	bullet_speed = bossbulletspeed * 0.7;
	scr_Just_Shoot();  
	bullet_speed = bossbulletspeed * 0.45;
	scr_Just_Shoot();
	
    bossHandDirection += 20 + irandom(3);
    
}

bossPassiveAttack[1] = 0;
bossPassiveAttack[2] = 0;

///Active Attack Prep

if bossActiveAttackDelay[1] <= 0 and bossActiveAttackCooldown[1] <= 0 and bossActiveAttackDuration[1] <= 0 {
    if champ = 0 {
        bossActiveAttack[1] = 0;
        if currentphase = 2 {
            bossActiveAttack[1] = 1;
        }
    }
    if champ = 1 {
        bossActiveAttack[1] = 2;
		if currentphase = 2 {
			bossActiveAttack[1] = 3;
		}
    }
    if bossActiveAttack[1] = 1 {
        bossActiveAttackDelay[1] = 20;
        bossActiveAttackDuration[1] = 10;
        bossActiveAttackCooldown[1] = 120 + random(30);
    }
	if bossActiveAttack[1] = 2 {
        bossActiveAttackDelay[1] = 5;
        bossActiveAttackDuration[1] = 10;
        bossActiveAttackCooldown[1] = 75 + random(15);
    }
    if bossActiveAttack[1] = 3 {
        bossActiveAttackDelay[1] = 15;
        bossPatternCount = 12;
        bossPatternCooldown = 8;
		bossPatternDirection = random(360);
        bossPatternCooldownMax = 8;
        bossActiveAttackDuration[1] = 30 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 120 + random(60);
    }
	
    bossPatternCountMax = bossPatternCount;
}


/// Active Attack Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Basic_Bullet;
    bullet_sprite = spr_Glowy_Enemy_Shot;
    bullet_speed = bossbulletspeed * 1.5;
    bullet_power = bosspower;
    bullet_direction = (-10 + random(20)) / bossaccuracy;
    bullet_lifespan = 300 + irandom(90);
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;

if bossActiveAttackDelay[1] <= 0 {        
    
    if bossActiveAttack[1] = 1 {
		scr_Boss_Stretch("Horizontal", 0.4);
		
		bullet_sprite = spr_Glowy_Orange_Shot;
		bullet_direction = random(360);
        bullet_speed = bossbulletspeed * (1.25 + random(0.1));
        bullet_count = 16;
        bullet_spread = 360 / bullet_count;
        scr_Just_Shoot();
		
		bullet_direction += 180 / bullet_count;
		repeat(3) {
			bullet_count = 4;
	        bullet_spread = 360 / bullet_count;
			bullet_speed -= bossbulletspeed * 0.15;
	        scr_Just_Shoot();
		}
		
        bossActiveAttack[1] = 0;
    }
	if bossActiveAttack[1] = 2 {
		scr_Boss_Stretch("Horizontal", 0.4);
		
		bullet_sprite = spr_Glowy_Purple_Shot;
		bullet_direction = random(360);
        bullet_speed = bossbulletspeed * (1.55);
        bullet_count = 4;
        bullet_spread = 360 / bullet_count;
        scr_Just_Shoot();
		
		bullet_speed = bossbulletspeed * 1.3;
		scr_Just_Shoot();
		bullet_speed = bossbulletspeed * 1.05;
		scr_Just_Shoot();
		bullet_speed = bossbulletspeed * 0.8;
		scr_Just_Shoot();

        bossActiveAttack[1] = 0;
    }
	
}

/// Active Attack Pattern Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Basic_Bullet;
    bullet_sprite = spr_Glowy_Enemy_Shot;
    bullet_speed = bossbulletspeed * 1.5;
    bullet_power = bosspower;
    bullet_direction = (-10 + random(20)) / bossaccuracy;
    bullet_lifespan = 300;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;

if bossActiveAttackDelay[1] <= 0 and bossPatternCooldown <= 0 and bossPatternCount > 0 {
   
    if bossActiveAttack[1] = 3 {
		scr_Boss_Stretch("Horizontal", 0.1);
		
		bullet_sprite = spr_Glowy_Purple_Shot;
	    bullet_direction = bossPatternDirection;
	    bullet_speed = bossbulletspeed * 1.05;
	    bullet_count = 2;
		bullet_spread = 180;
	    scr_Just_Shoot();  
		bullet_speed = bossbulletspeed * 0.8;
		scr_Just_Shoot();  
		bullet_speed = bossbulletspeed * 0.55;
		scr_Just_Shoot();
	
	    bossPatternDirection += 23 + irandom(8);
    
	}
	
    bossPatternCount -= 1;
    bossPatternCooldown += bossPatternCooldownMax;
}

/// Active Attack Post
   
   
   
if bossActiveAttackDuration[1] <= 0 { 
    bossActiveAttack[1] = 0;
    bossActiveAttack[2] = 0;
}

#region /// Boss Sprite Code

scr_Boss_Size_Lerp(0.15);

/*
if champ = 0 {
if (y > (room_height / 2)) { 
    sprite_index = spr_Watcher_Wall_Behind;
    image_angle = direction;
} else {
    sprite_index = spr_Watcher_Wall;
    image_angle = direction + 180;
}
}
*/


if bossActiveAttack[1] = 1/* and (bossActiveAttackDelay[1] > 0)*/ {
	if currentphase = 2 {
		sprite_index = spr_Crazy_Eye_Phase_2_Blink;
		image_speed = 1;
	}
} else {
	if currentphase = 2 {
		sprite_index = spr_Crazy_Eye_Phase_2;
	}
}

#endregion

scr_Boss_Soul_Hitbox(spr_Crazy_Eye_Hitbox);

