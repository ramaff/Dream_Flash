/// @description  Boss Step Event

scr_Boss_Step();

///Passive Attack Prep

if bossPassiveAttackDelay[1] <= 0 and bossPassiveAttackCooldown[1] <= 0 {
    if currentphase = 2 {
        bossPassiveAttack[1] = 1;
        bossPassiveAttackCooldown[1] = 20 + random(5);
        bossPassiveAttackDelay[1] = 0;
    }
}


///Passive Attack Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Infatuation_Drop_Bullet;
    bullet_sprite = spr_Blood_Tear;
    bullet_speed = bossbulletspeed * (0.5 + random(0.5));
    bullet_power = bosspower;
    bullet_direction = (-180 + random(360)) / bossaccuracy;
    bullet_lifespan = 900;
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
	
    bossX = x;
    bossY = y;
    bullet_direction = point_direction(x,y,bossX,bossY);
    bullet_count = 1;
    bullet_sprite = spr_Water_Drop_Bullet;
    bullet_type = obj_Outer_Come_In_Bullet;
    bullet_speed = bossbulletspeed * (1.25 + random(0.5));
    scr_Outside_Shoot();
}

bossPassiveAttack[1] = 0;
bossPassiveAttack[2] = 0;

///Active Attack Prep

if bossActiveAttackDelay[1] <= 0 and bossActiveAttackCooldown[1] <= 0 and bossActiveAttackDuration[1] <= 0 {
    speed = bossmovespeed * (0.5 + random(0.5));
    direction = random(360);
    
    bossActiveAttack[1] = choose(1,2,3);
    if champ = 1 {
        bossActiveAttack[1] = choose(1,4);
    }
    if champ = 2 {
        bossActiveAttack[1] = choose(5,6);
    }
    bossActiveAttackDelay[1] = 20;
    bossActiveAttackCooldown[1] = (50 + random(15));
    bossPatternCooldown = 1;
    bossPatternCooldownMax = 10;
    
    if bossActiveAttack[1] = 1 {
        bossPatternCount = 18;
		if champ = 1 {
			bossPatternCount += 2;
			bossPatternCooldown -= 1;
			bossPatternCooldownMax -= 1;
		}
        bulletdirection = scr_Soul_Point();
        bossPatternDirection = bulletdirection;
        bossActiveAttackCooldown[1] -= 30;
    }
    if bossActiveAttack[1] = 2 {
        bossPatternCount = 12;
		bossPatternCooldown = 13;
		bossPatternCooldownMax = 13;
        bulletdirection = random(360);
        bossPatternDirection = bulletdirection;
    }
    if bossActiveAttack[1] = 3 {
        bossPatternCount = 45;
		bossPatternCooldown = 4;
		bossPatternCooldownMax = 4;
        bulletdirection = point_direction(x,y,other.x,other.y);
        bossPatternDirection = bulletdirection;
        bossActiveAttackCooldown[1] += 30;
    }
    if bossActiveAttack[1] = 4 {
        bossPatternCount = 15 + irandom(1);
        bulletdirection = random(360);
        bossPatternDirection = bulletdirection;
        bossActiveAttackCooldown[1] += 30;
    }
    if bossActiveAttack[1] = 5 {
        bossPatternCount = 14 + irandom(1);
        bulletdirection = random(360);
        bossPatternDirection = bulletdirection;
        bossActiveAttackCooldown[1] += 30;
    }
    if bossActiveAttack[1] = 6 {
        bossPatternCount = 11 + irandom(1);
        bossPatternAttackCount = 5 + irandom(1);
        bossActiveAttackCooldown[1] += 30;
    }
    
	bossPatternCountMax = bossPatternCount;
	
    bossActiveAttackDuration[1] = 1 + bossPatternCooldownMax * bossPatternCount;
    
}


/// Active Attack Code
    
    scr_Default_Attack_Settings(); 
    bullet_type = obj_Rain_Drop_Bullet;
    bullet_sprite = spr_Water_Drop_Bullet;
    bullet_speed = bossbulletspeed * (0.5 + random(0.5));
    bullet_power = bosspower;
    bullet_lifespan = 300;

if bossActiveAttackDelay[2] <= 0 {        
    
    bossActiveAttack[2] = 0;
}

/// Active Attack Pattern Code
    
    scr_Default_Attack_Settings(); 
    bullet_type = obj_Infatuation_Drop_Bullet;
    bullet_sprite = spr_Blood_Tear;
    bullet_speed = bossbulletspeed * (1.05 + random(0.5));
    bullet_power = bosspower;
    bullet_lifespan = 300;

if bossActiveAttackDelay[1] <= 0 and bossPatternCooldown <= 0 and bossPatternCount > 0 {
        
    if bossActiveAttack[1] = 1 {
		if (bossPatternCount mod 2 = 0) {
			scr_Boss_Stretch("Horizontal",0.15);
		}
		
        bullet_direction = bossPatternDirection + (-15 + random(30)) / bossaccuracy;
		bullet_speed = bossbulletspeed * (1.15 + random(0.5));
        scr_Just_Shoot();
        bossPatternCount -= 1;
        bossPatternCooldown += bossPatternCooldownMax;
    }
    if bossActiveAttack[1] = 2 {
		if (bossPatternCount mod 2 = 0) {
			scr_Boss_Stretch("Horizontal",0.15);
		}
		
        bullet_direction = bossPatternDirection + (-15 + random(30)) / bossaccuracy;
        bullet_count = 4;
        bullet_spread = 90;
        scr_Just_Shoot();
        bossPatternCount -= 1;
        bossPatternCooldown += bossPatternCooldownMax;
    }
    if bossActiveAttack[1] = 3 {
		if (bossPatternCount mod 4 = 0) {
			scr_Boss_Stretch("Horizontal",0.15);
		}
		
		bullet_part = 2;
		bullet_part_sprite = spr_Bullet_Tear_Part;
		bullet_part_area = 25;
		bullet_part_life = 20;
		bullet_part_color1 = make_color_rgb(0,106,255);
		bullet_part_color2 = c_white;
		
        bossX = x;
        bossY = y;
        bullet_direction = point_direction(x,y,bossX,bossY);
        bullet_count = 1;
        bullet_sprite = spr_Water_Drop_Bullet;
        bullet_type = obj_Outer_Come_In_Bullet;
        bullet_speed = bossbulletspeed * (2 + random(0.75));
        scr_Outside_Shoot();
        bossPatternCount -= 1;
        bossPatternCooldown += bossPatternCooldownMax;
    }
    if bossActiveAttack[1] = 4 {
		if (bossPatternCount mod 2 = 0) {
			scr_Boss_Stretch("Horizontal",0.15);
		}
		
        bullet_direction = bossPatternDirection;
        bullet_type = obj_Rain_Drop_Bullet;
        bullet_sprite = spr_Tear_Drop_Bullet;
        bullet_speed = bossbulletspeed * 1.35;
        bullet_count = 3;
        bullet_spread = 120;
        scr_Just_Shoot();
        bossPatternDirection += 15;
        bossPatternCount -= 1;
        bossPatternCooldown += bossPatternCooldownMax;
    }
    if bossActiveAttack[1] = 5 {
		if (bossPatternCount mod 2 = 0) {
			scr_Boss_Stretch("Horizontal",0.15);
		}
		
        bullet_direction = bossPatternDirection + (-15 + random(30)) / bossaccuracy;
        bullet_type = obj_Spin_Bullet;
        bullet_sprite = spr_Water_Drop_Bullet;
        bullet_speed = bossbulletspeed * (1.75 + random(0.15));
        bullet_count = 4;
        bullet_spread = 90;
        scr_Just_Shoot();
        bossPatternCount -= 1;
        bossPatternCooldown += bossPatternCooldownMax;
    }
    if bossActiveAttack[1] = 6 {
		if (bossPatternCount mod 2 = 0) {
			scr_Boss_Stretch("Horizontal",0.15);
		}
		
		bullet_part = 2;
		bullet_part_sprite = spr_Bullet_Tear_Part;
		bullet_part_area = 25;
		bullet_part_life = 20;
		bullet_part_color1 = make_color_rgb(0,106,255);
		bullet_part_color2 = c_white;
		
        bullet_type = obj_Direction_Phase_Bullet;
        bullet_sprite = spr_Tear_Drop_Bullet;
        bullet_count = bossPatternAttackCount;
        bullet_spread = 1;
        bullet_speed = bossbulletspeed * (2 + random(0.15));
        bullet_direction = 270 + ((-1 + random(2)) / other.bossaccuracy);
        bullet_lifespan = 420;
        scr_Spread_Top_Rain();
        bossPatternCount -= 1;
        bossPatternCooldown += bossPatternCooldownMax;
    }
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

if (bossActiveAttack[1] != 0 and (bossPatternCountMax = bossPatternCount)) || (bossActiveAttack[1] = 2 and (bossPatternCountMax = bossPatternCount)) || (bossActiveAttack[1] = 3 and (bossPatternCountMax = bossPatternCount)) {
	//if bossPatternCooldown <= 31 and bossPatternCooldown > 0 {
		sprite_index = spr_Infatuation_Cloud_Blink;
		if champ = 8 {
			//sprite_index = spr_Thought_Rainbow_Cry;
		}
		image_speed = 1;
		
	//} else {
	//	image_index = 0;	
	//}
} else {
	image_index = 0;
	sprite_index = spr_Infatuation_Cloud;
	if champ = 8 {
		//sprite_index = spr_Thought_Rainbow;
	}
}

#endregion

scr_Boss_Soul_Hitbox(sprite_index);