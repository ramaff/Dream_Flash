/// @description  Boss Step Event

x += 0 + irandom(2) - irandom(2);
y += 0 + irandom(2) - irandom(2);

scr_Boss_Step();

///Active Attack Prep

if bossActiveAttackDelay[1] <= 0 and bossActiveAttackCooldown[1] <= 0 and bossActiveAttackDuration[1] <= 0 {
    mCount = instance_number(obj_Minion_Parent)
    bCount = instance_number(obj_Main_Boss_Parent)    
    bossScare = 0;

    bossActiveAttack[1] = choose(1,4,3);
    if ((mCount - 3) / bCount) >= 3 {
        bossActiveAttack[1] = choose(1,4);
    }
    if currentphase = 2 {
        bossActiveAttack[1] = choose(2,4,3);
        if ((mCount - 3) / bCount) >= 3 {
            bossActiveAttack[1] = choose(2,4);
        }
    }
    if bossActiveAttack[1] = 1 {
        bossActiveAttackDelay[1] = 10;
        bossPatternCount = 3;
        bossPatternCooldown = 45;
        bossPatternCooldownMax = 45;
        bossActiveAttackDuration[1] = 30 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 60 + random(15);
    }
    if bossActiveAttack[1] = 2 {
        bossActiveAttackDelay[1] = 10;
        bossPatternCount = 3;
        bossPatternCooldown = 60;
        bossPatternCooldownMax = 60;
        bossActiveAttackDuration[1] = 30 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 60 + random(15);
    }
    if bossActiveAttack[1] = 3 {
        bossActiveAttackDelay[1] = 10;
        bossActiveAttackDuration[1] = 30;
        if currentphase = 2 {
            bossActiveAttackDuration[1] = 15;
        }
        bossActiveAttackCooldown[1] = 90 + random(15);
    }
    if bossActiveAttack[1] = 4 {
        bossScare = 1;
        bossActiveAttackDelay[1] = 10;
		bossPatternCount = 60 * bossattackspeed;
        bossPatternCooldown = 1;
        bossPatternCooldownMax = 1;
		bossActiveAttackDuration[1] = 30 + bossattackspeed * bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 105 + random(30);
    }
    bossPatternCountMax = bossPatternCount;
}


/// Active Attack Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Speed_UpDown_Bullet;
    bullet_sprite = spr_Ache_Direction_Bullet;
    bullet_speed = bossbulletspeed * (1.6 + random(0.3));
    bullet_power = bosspower;
    bullet_direction = (-20 + random(40)) / bossaccuracy;
    bullet_lifespan = 400;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    bullet_image_speed = 0.2;
    boss_radius = 0;
    
if bossActiveAttackDelay[1] <= 0 {
        
    if bossActiveAttack[1] = 5 {
		scr_Boss_Stretch("Vertical", 0.3);
		
        bullet_count = 16;
        bullet_spread = 360 / bullet_count;
        with(obj_Bullet_Parent) {
            bulletsprite = spr_Ache_Direction_Bullet;
            sprite_index = bulletsprite;
            bulletspeed += 1 * other.bossbulletspeed;
            speed += 1 * other.bossbulletspeed;
        }
        scr_Just_Shoot();
        direction = scr_Soul_Point();
		speed = 1.4 * bossmovespeed
    
        bossActiveAttack[1] = -5;
    }
    if bossActiveAttack[1] = 3 {
		scr_Boss_Stretch("Vertical", 0.3);
		
        minion_count = 2;
        minion_type = obj_Scary_Heart;
        minion_health = bossmaxhealth / 21;
        scr_Minion_Spawn();
        direction = scr_Soul_Point();
		speed = 0.3 * bossmovespeed;
    
        bossActiveAttack[1] = -3;
    }
}

/// Active Attack Pattern Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Speed_UpDown_Bullet;
    bullet_sprite = spr_Bleeding_Direction_Bullet;
    bullet_speed = bossbulletspeed * (1.2 + random(0.3));
    bullet_power = bosspower;
    bullet_direction = (-20 + random(40)) / bossaccuracy;
    bullet_lifespan = 600;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    bullet_image_speed = 0.2;
    boss_radius = 0;

if bossActiveAttackDelay[1] <= 0 and bossPatternCooldown <= 0 and bossPatternCount > 0 {
        
    if bossActiveAttack[1] = 1 {
		scr_Boss_Stretch("Vertical", 0.3);
		
        bullet_count = 1;
        var startspeed = 2.1 + random(0.15);
        bullet_speed = bossbulletspeed * startspeed;
        scr_Soul_Shoot();
        bullet_count = 6;
        bullet_spread = 12.5;
        bullet_speed = bossbulletspeed * (startspeed - 0.08);
        scr_Soul_Shoot();
		bullet_count = 4;
        bullet_spread = 25;
        bullet_speed = bossbulletspeed * (startspeed - 0.16);
        scr_Soul_Shoot();
		/*
        bullet_count = 1;
        bullet_speed = bossbulletspeed * (startspeed - 0.21);
        scr_Soul_Shoot();
        bullet_speed = bossbulletspeed * (startspeed - 0.28);
        scr_Soul_Shoot();
		*/
    }
    if bossActiveAttack[1] = 2 {
		scr_Boss_Stretch("Vertical", 0.3);
		
        bullet_direction = random(360);
        bullet_count = 6;
        bullet_spread = 360 / bullet_count;
        bullet_speed = bossbulletspeed * (1.9 + random(0.15));
        scr_Just_Shoot();
        bullet_direction += 8;
        bullet_speed -= bossbulletspeed * 0.1;
        scr_Just_Shoot();
		bullet_direction -= 16;
        scr_Just_Shoot();
		bullet_direction += 24;
        bullet_speed -= bossbulletspeed * 0.1;
        scr_Just_Shoot();
        bullet_direction -= 32;
        scr_Just_Shoot();
		/*
        bullet_direction += 8;
        bullet_speed -= 0.1;
        scr_Just_Shoot();
		*/
    }
	
	if bossActiveAttack[1] = 4 {
		if bossPatternCount mod 10 = 0 {
			scr_Boss_Stretch("Vertical", 0.05);	
		}
		if bossPatternCount = bossPatternCountMax {
			scr_Boss_Stretch("Vertical", 0.3);
			bullet_count = 16;
			bullet_spread = 360 / bullet_count;
			scr_Just_Shoot();
		}
		if bossPatternCount mod 20 = 0 {
			scr_Boss_Stretch("Vertical", 0.3);
			bullet_count = 8;
			bullet_spread = 360 / bullet_count;
			scr_Just_Shoot();
		}
        with(obj_Bullet_Parent) {
            bulletsprite = spr_Ache_Direction_Bullet;
            sprite_index = bulletsprite;
            bulletspeed += 0.05 * other.bossbulletspeed;
            speed += 0.05 * other.bossbulletspeed;
        }
    }
    
    bossPatternCount -= 1;
    bossPatternCooldown += bossPatternCooldownMax;
    
}

/// Active Attack Post
   
if bossActiveAttackDuration[1] <= 0 { 
    bossActiveAttack[1] = 0;
    bossActiveAttack[2] = 0;
    bossActiveAttack[3] = 0;
    bossActiveAttack[0] = 0;
}

#region /// Boss Sprite


scr_Boss_Size_Lerp(0.15);

if bossActiveAttack[1] = 4 || bossActiveAttack[1] = 5 {
    sprite_index = spr_Heart_Ache_Scream;
	if image_index >= 5 and bossActiveAttackDuration[1] > 10 {
		image_index = 5;	
	}
} else if bossActiveAttack[1] != 0 {
	sprite_index = spr_Heart_Ache_Shoot;
	if image_index >= 3 and bossActiveAttackDuration[1] > 10 {
		image_index = 3;	
	}
} else {
	sprite_index = spr_Heart_Ache;
}

#endregion

scr_Boss_Soul_Hitbox(sprite_index);