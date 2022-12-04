/// @description  Boss Step Event

scr_Boss_Step();

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

///Passive Attack Prep

if bossPassiveAttackDelay[1] <= 0 and bossPassiveAttackCooldown[1] <= 0 {
    var bossdirection = scr_Soul_Point();
    speed = 0.5 * bossmovespeed;
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
    bossActiveAttack[1] = choose(1,2);
    if champ = 1 {
        bossActiveAttack[1] = choose(3,4,5);
    }
    if bossActiveAttack[1] = 1 {
        bossActiveAttackDelay[1] = 15;
        bossPatternCount = 8;
        bossPatternCooldown = 30;
        bossPatternCooldownMax = 30;
        bossPatternDirection = 180 * irandom(1);
        bossPatternAttackCount = 4;
        bossActiveAttackDuration[1] = 10 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 120 + random(30);
    }
    if bossActiveAttack[1] = 2 {
        bossActiveAttackDelay[1] = 15;
        bossPatternCount = 7;
        bossPatternCooldown = 18;
        bossPatternCooldownMax = 6;
        bossPatternDirection = 180 * irandom(1);
        bossPatternAttackCount = 24;
        bossActiveAttackDuration[1] = 10 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 135 + random(30);
    }
    if bossActiveAttack[1] = 3 {
        bossActiveAttackDelay[1] = 20;
        bossActiveAttackDuration[1] = 60;
        bossActiveAttackCooldown[1] = 75 + random(15);
    }
    if bossActiveAttack[1] = 4 {
        bossActiveAttackDelay[1] = 20;
        bossActiveAttackDuration[1] = 60;
        bossActiveAttackCooldown[1] = 180 + random(30);
    }
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

        bullet_type = obj_Direction_Bullet;
        bullet_count = 18;
        bullet_spread = (180) / bullet_count;
        bullet_lifespan = 300;
		bullet_speed = bossbulletspeed * (1.75 + random(0.1));
        
        scr_Soul_Shoot();
		
		bullet_count = 19;
		bullet_speed -= bossbulletspeed * 0.25;
		scr_Soul_Shoot();
    
        bossActiveAttack[1] = -3;
    }
    if bossActiveAttack[1] = 4 {

        bullet_type = obj_Wall_Spawning_Bullet;
        bullet_sprite = spr_Fire_Shot;
        bullet_count = 6;
        bullet_spread = 360 / bullet_count;
        bullet_lifespan = 120;
        
        scr_Just_Shoot();
    
        bossActiveAttack[1] = -4;
    }
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
		//if bossPatternCount mod 2 = 0 {
	        bullet_count = bossPatternAttackCount;
			if bossPatternCount mod 2 = 0 {
				bullet_count -= 1;	
			}
	        bullet_spread = 0.1;
	        bullet_speed = bossbulletspeed * (2.55 + random(0.1));
	        bullet_direction = bossPatternDirection + ((-3 + random(6)) / other.bossaccuracy);
	        bullet_lifespan = 600;
	        scr_Spread_Screen_Wipe();
		
			bullet_direction += 180;
			bossPatternDirection += 180;
			scr_Spread_Screen_Wipe();
		
			bossPatternDirection -= 180;
		//}
			var bsp = 1.45 + random(0.15);
			bullet_sprite = spr_Glowy_Pink_Shot;
			bullet_count = 1;
			bullet_spread = 90;
			bullet_direction = 90 * (bossPatternCount);

			bullet_speed = bsp * bossbulletspeed;
			scr_Just_Shoot();
		
			bullet_speed = bsp * bossbulletspeed * 0.8475;
			bullet_direction += 15;
			scr_Just_Shoot();
			bullet_speed = bsp * bossbulletspeed * 0.77;
			bullet_direction += 15;
			scr_Just_Shoot();
			bullet_speed = bsp * bossbulletspeed * 0.74;
			bullet_direction += 15;
			scr_Just_Shoot();
			bullet_speed = bsp * bossbulletspeed * 0.77;
			bullet_direction += 15;
			scr_Just_Shoot();
			bullet_speed = bsp * bossbulletspeed * 0.8475;
			bullet_direction += 15;
			scr_Just_Shoot();
    }
    if bossActiveAttack[1] = 2 {
		if bossPatternCount > 5 || bossPatternCount <= 2 {
	        bullet_count = bossPatternAttackCount;
			if frac(bossPatternCount / 2) = 0 {
				bullet_count += 1;	
			}
	        bullet_spread = 0.1;
	        bullet_speed = bossbulletspeed * (2.75 + random(0.0025));
	        bullet_direction = bossPatternDirection + ((-1 + random(2)) / other.bossaccuracy);
	        bullet_lifespan = 600;
	        scr_Spread_Screen_Wipe();
		} else {
			bullet_count = round(bossPatternAttackCount / 3);
			if frac(bossPatternCount / 2) = 0 {
				bullet_count += 1;	
			}
	        bullet_spread = 0.1;
	        bullet_speed = bossbulletspeed * (2.75 + random(0.0025));
	        bullet_direction = bossPatternDirection + ((-1 + random(2)) / other.bossaccuracy);
	        bullet_lifespan = 600;
	        scr_Spread_Screen_Wipe();
		}
    }
    if bossActiveAttack[1] = 5 {
        bullet_count = bossPatternAttackCount;
		if frac(bossPatternCount / 2) = 0 {
			bullet_count += 3;	
		}
		if (bossPatternCount = bossPatternCountMax) || (bossPatternCount = 10) || (bossPatternCount = 1) {
			bullet_count += 22;
		}
        bullet_spread = 0.1;
        bullet_speed = bossbulletspeed * (2.75);
        bullet_direction = bossPatternDirection + ((-3 + random(6)) / other.bossaccuracy);
        bullet_lifespan = 600;
        scr_Spread_Screen_Wipe();
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


scr_Boss_Size_Lerp(0.15);

if bossActiveAttack[1] = 2 || bossActiveAttack[1] = 5 {
    sprite_index = spr_Manic_Wall_Mage_Point;
	if image_index >= 4 and bossActiveAttackDuration[1] > 10 {
		image_index = 4;	
	}
} else if bossActiveAttack[1] = 1 || bossActiveAttack[1] = 3 || bossActiveAttack[1] = 4 || bossActiveAttack[1] = -3 || bossActiveAttack[1] = -4 {
    sprite_index = spr_Manic_Wall_Mage_Barrage;
	if image_index >= 4 and bossActiveAttackDuration[1] > 10 {
		image_index = 4;	
	}
} else {
	sprite_index = spr_Manic_Wall_Mage;
}

#endregion

scr_Boss_Soul_Hitbox(sprite_index);