/// @description  Boss Step Event

scr_Boss_Step();

///Passive Attack Prep

if bossPassiveAttackDelay[1] <= 0 and bossPassiveAttackCooldown[1] <= 0 {
    var bossdirection = scr_Soul_Point();
    speed = 0.5 * bossmovespeed;
	if bossActiveAttack[1] = 4 || bossActiveAttack[1] = 7 {
		speed = 0.05 * bossmovespeed;	
	}
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
    bossActiveAttack[1] = choose(1,2,3);
    if currentphase = 2 {
        bossActiveAttack[1] = choose(4);
    }
	
	if champ = 1 {
		bossActiveAttack[1] = choose(1,5,6);
		if currentphase = 2 {
			bossActiveAttack[1] = choose(7);
		}	
	}
	
	if champ = 8 {
		bossActiveAttack[1] = choose(1,8,9);
		if currentphase = 2 {
			bossActiveAttack[1] = choose(10);
		}	
	}
	if bossActiveAttack[1] = 1 {
        bossActiveAttackDelay[1] = 15;
        bossActiveAttackDuration[1] = 390;
		if champ >= 1 {
			bossActiveAttackDuration[1] += 60;	
		}
        bossActiveAttackCooldown[1] = 60 + random(30);
    }
    if bossActiveAttack[1] = 2 {
        bossActiveAttackCooldown[1] = (60 + random(30));
        bossPatternCount = 8;
        bossPatternCooldown = 30;
        bossPatternCooldownMax = bossPatternCooldown;
        bulletdirection = random(360);
        bossPatternDirection = bulletdirection;
        bossActiveAttackDuration[1] = 15 + bossPatternCooldown * bossPatternCount;
    }
    if bossActiveAttack[1] = 3 {
        bossActiveAttackCooldown[1] = (60 + random(30));
        bossPatternCount = 4;
        bossPatternCooldown = 75;
        bossPatternCooldownMax = bossPatternCooldown;
        bulletdirection = random(360);
        bossPatternDirection = bulletdirection;
        bossActiveAttackDuration[1] = 15 + bossPatternCooldown * bossPatternCount;
    }
    if bossActiveAttack[1] = 4 {
        bossActiveAttackCooldown[1] = (30 + random(15));
		bossPatternAttackCount = 30 + irandom(2);
        bossPatternCount = 25;
        bossPatternCooldown = 20;
        bossPatternCooldownMax = bossPatternCooldown;
        bulletdirection = random(360);
		bossPatternGap = 10 + irandom(bossPatternAttackCount - 28);
		
        bossPatternDirection = bulletdirection;
        bossActiveAttackDuration[1] = 15 + bossPatternCooldown * bossPatternCount;
    }
	if bossActiveAttack[1] = 5 {
        bossActiveAttackCooldown[1] = (60 + random(30));
        bossPatternCount = 4;
        bossPatternCooldown = 60;
        bossPatternCooldownMax = bossPatternCooldown;
        bulletdirection = random(360);
        bossPatternDirection = bulletdirection;
        bossActiveAttackDuration[1] = 15 + bossPatternCooldown * bossPatternCount;
    }
    if bossActiveAttack[1] = 6 {
        
        bossActiveAttackCooldown[1] = (60 + random(30));
        bossPatternCount = 4;
        bossPatternCooldown = 75;
        bossPatternCooldownMax = bossPatternCooldown;
        bulletdirection = random(360);
        bossPatternDirection = bulletdirection;
        bossActiveAttackDuration[1] = 15 + bossPatternCooldown * bossPatternCount;
    }
	if bossActiveAttack[1] = 7 {
        bossActiveAttackCooldown[1] = (30 + random(15));
		bossPatternCount = 30;
        bossPatternCooldown = 20;
        bossPatternCooldownMax = bossPatternCooldown;
        bulletdirection = scr_Soul_Point() - 45 + random(90) - 180;
		
        bossPatternDirection = bulletdirection;
        bossActiveAttackDuration[1] = 15 + bossPatternCooldown * bossPatternCount;
    }
	if bossActiveAttack[1] = 8 {
        bossActiveAttackCooldown[1] = (60 + random(30));
        bossPatternCount = 8;
        bossPatternCooldown = 30;
        bossPatternCooldownMax = bossPatternCooldown;
        bulletdirection = random(360);
        bossPatternDirection = bulletdirection;
        bossActiveAttackDuration[1] = 15 + bossPatternCooldown * bossPatternCount;
    }
    if bossActiveAttack[1] = 9 {
        bossActiveAttackCooldown[1] = (60 + random(30));
        bossPatternCount = 4;
        bossPatternCooldown = 75;
        bossPatternCooldownMax = bossPatternCooldown;
        bulletdirection = random(360);
        bossPatternDirection = bulletdirection;
        bossActiveAttackDuration[1] = 15 + bossPatternCooldown * bossPatternCount;
    }
	if bossActiveAttack[1] = 10 {
        bossActiveAttackCooldown[1] = (30 + random(15));
		bossPatternAttackCount = 7 + irandom(1);
        bossPatternCount = 10;
        bossPatternCooldown = 75;
        bossPatternCooldownMax = bossPatternCooldown;
        bulletdirection = random(360);
		bossPatternGap = 10 + irandom(bossPatternAttackCount - 28);
		
        bossPatternDirection = bulletdirection;
        bossActiveAttackDuration[1] = 15 + bossPatternCooldown * bossPatternCount;
    }
    bossPatternCountMax = bossPatternCount;
}


/// Active Attack Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Direction_Phase_Bullet;
    bullet_sprite = spr_Glowy_Green_Shot;
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

        bullet_type = obj_Big_Barrier_Bullet;
		bullet_sprite = spr_Big_Barrier_Ball;
		if champ = 1 {
			bullet_type = obj_Big_Spiral_Bullet;
			bullet_sprite = spr_Big_Spiral_Ball;
		}
        bullet_count = 1;
        bullet_lifespan = 400;
		if champ >= 1 {
			bullet_lifespan += 60;	
		}
		bullet_speed = bossbulletspeed * 0.9;
		soul_shot_block = 1;
		bullet_power = bosspower * 3;
		if champ = 8 {
			bullet_type = obj_Super_Barrier_Bullet;
			bullet_sprite = spr_Big_Super_Shield_Ball;
			bullet_speed = bossbulletspeed * 1.5;
		}
        
        scr_Soul_Shoot();
		
        bossActiveAttack[1] = -1;
    }
}

/// Active Attack Pattern Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Basic_Bullet;
    bullet_sprite = spr_Glowy_Green_Shot;
    bullet_speed = bossbulletspeed * 1.5;
    bullet_power = bosspower;
    bullet_direction = (-10 + random(20)) / bossaccuracy;
    bullet_lifespan = 480;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;
	/*
	if champ = 1 {
        bullet_sprite = spr_Projectile_Wall_Shot;
    } */

if bossActiveAttackDelay[1] <= 0 and bossPatternCooldown <= 0 and bossPatternCount > 0 {
    
    if bossActiveAttack[1] = 2 {
		bullet_size = 1.1;
        bullet_type = obj_Aim_Gap_Bullet;
        bullet_sprite = spr_Glowy_Green_Shot;
    
        bullet_speed = bossbulletspeed * (1.85 + random(0.05));
        bullet_direction = bossPatternDirection;
        bullet_count = 3;
        bullet_spread = 360 / bullet_count;
		
		boss_xoffset = 85;
		boss_yoffset = -85;
        scr_Offset_Normal_Shoot();
    
        bossPatternDirection += 18;
    }
    if bossActiveAttack[1] = 3 {
        var bsp = 2.4 + random(0.15);
		bullet_count = 4;
		bullet_spread = 90;
		bullet_direction = random(90);
		bullet_size = 1.1;
		
		boss_xoffset = obj_Soul_Parent.perX - x;
		boss_yoffset = obj_Soul_Parent.perY - y;
		
		bullet_type = obj_Dormant_Rebound_Bullet;
		
		bullet_speed = bsp * bossbulletspeed;
		scr_Offset_Normal_Shoot();
		
		bullet_speed = bsp * bossbulletspeed * 0.8475;
		bullet_direction += 15;
		scr_Offset_Normal_Shoot();
		bullet_speed = bsp * bossbulletspeed * 0.77;
		bullet_direction += 15;
		scr_Offset_Normal_Shoot();
		bullet_speed = bsp * bossbulletspeed * 0.74;
		bullet_direction += 15;
		scr_Offset_Normal_Shoot();
		bullet_speed = bsp * bossbulletspeed * 0.77;
		bullet_direction += 15;
		scr_Offset_Normal_Shoot();
		bullet_speed = bsp * bossbulletspeed * 0.8475;
		bullet_direction += 15;
		scr_Offset_Normal_Shoot();
		
		/*
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
		*/
    }
    if bossActiveAttack[1] = 4 {
		bullet_type = obj_Phase_Bullet;
		bullet_size = 1.1;
        bullet_count = bossPatternAttackCount;
        bullet_spread = 0.1;
        bullet_speed = bossbulletspeed * (2.5);
        bullet_lifespan = 300;
		bullet_direction = 270 + ((-0.5 + random(1)) / other.bossaccuracy);
		
        scr_Spread_Top_Rain_Gap(bossPatternGap);
		
		if frac((bossPatternCount + 3) / 6) = 0 {
			scr_Spread_Top_Rain_Gap_Reverse(bossPatternGap);
		}
    }
	
	if bossActiveAttack[1] = 5 {
        bullet_type = obj_Aim_Gap_Barrier_Bullet;
        bullet_sprite = spr_Big_Glowy_Blue_Shot;
		bullet_power = bosspower * 1.5;
		bullet_size = 1.25;
		
		soul_shot_block = 1;
		
        bullet_speed = bossbulletspeed * (1.75 + random(0.05));
        bullet_direction = bossPatternDirection;
        bullet_count = 2;
        bullet_spread = 360 / bullet_count;
		
		boss_xoffset = 85;
		boss_yoffset = -85;
        scr_Offset_Normal_Shoot();
    
        bossPatternDirection += 36;
    }
	
	if bossActiveAttack[1] = 6 {
        var bsp = 2.75 + random(0.15);
		bullet_count = 12;
		bullet_spread = 360 / bullet_count;
		bullet_direction = random(360);
		bullet_size = 1.1;
		
		boss_xoffset = obj_Soul_Parent.perX - x;
		boss_yoffset = obj_Soul_Parent.perY - y;
		
		bullet_type = obj_Dormant_Rebound_Spin_Bullet;
		bullet_sprite = spr_Glowy_Blue_Shot;
		
		bullet_speed = bsp * bossbulletspeed;
		scr_Offset_Normal_Shoot();
		
		bsp += 1;
		bullet_direction += bullet_spread / 2;
		bullet_speed = bsp * bossbulletspeed;
		scr_Offset_Normal_Shoot();
		
    }
	
	if bossActiveAttack[1] = 7 {
		bullet_size = 1.1;
        bullet_sprite = spr_Glowy_Blue_Shot;
		bullet_type = obj_Split_Bullet;
    
        bullet_speed = bossbulletspeed * (1.85 + random(0.05));
        bullet_direction = bossPatternDirection;
        bullet_count = 20;
        bullet_spread = 320 / bullet_count;
		
		boss_xoffset = 85;
		boss_yoffset = -85;
        scr_Offset_Normal_Shoot();
    
		var neg = choose(1, -1);
        bossPatternDirection += neg * 15;
    }
	
	if bossActiveAttack[1] = 8 {
        bullet_type = obj_Aim_Gap_Airburst_Bullet;
        bullet_sprite = spr_Big_Glowy_Red_Shot;
		bullet_power = bosspower * 1.5;
		bullet_size = 1.25;
		
		soul_shot_block = 1;
		
        bullet_speed = bossbulletspeed * (1.75 + random(0.05));
        bullet_direction = bossPatternDirection;
        bullet_count = 2;
        bullet_spread = 360 / bullet_count;
		
		boss_xoffset = 85;
		boss_yoffset = -85;
        scr_Offset_Normal_Shoot();
    
        bossPatternDirection += 36;
    }
	
	if bossActiveAttack[1] = 9 {
        var bsp = 2.4 + random(0.15);
		bullet_count = 4;
		bullet_spread = 90;
		bullet_direction = random(90);
		bullet_size = 1.1;
		
		bullet_sprite = spr_Glowy_Ruby_Shot;
		
		boss_xoffset = obj_Soul_Parent.perX - x;
		boss_yoffset = obj_Soul_Parent.perY - y;
		
		bullet_type = obj_Dormant_Rebound_Bullet;
		
		bullet_speed = bsp * bossbulletspeed;
		scr_Offset_Normal_Shoot();
		
		bullet_speed = bsp * bossbulletspeed * 0.8475;
		bullet_direction += 15;
		scr_Offset_Normal_Shoot();
		bullet_speed = bsp * bossbulletspeed * 0.77;
		bullet_direction += 15;
		scr_Offset_Normal_Shoot();
		bullet_speed = bsp * bossbulletspeed * 0.74;
		bullet_direction += 15;
		scr_Offset_Normal_Shoot();
		bullet_speed = bsp * bossbulletspeed * 0.77;
		bullet_direction += 15;
		scr_Offset_Normal_Shoot();
		bullet_speed = bsp * bossbulletspeed * 0.8475;
		bullet_direction += 15;
		scr_Offset_Normal_Shoot();
		
		bsp += 2.4;
		bullet_direction += 45;
		
		bullet_speed = bsp * bossbulletspeed;
		scr_Offset_Normal_Shoot();
		
		bullet_speed = bsp * bossbulletspeed * 0.8475;
		bullet_direction += 15;
		scr_Offset_Normal_Shoot();
		bullet_speed = bsp * bossbulletspeed * 0.77;
		bullet_direction += 15;
		scr_Offset_Normal_Shoot();
		bullet_speed = bsp * bossbulletspeed * 0.74;
		bullet_direction += 15;
		scr_Offset_Normal_Shoot();
		bullet_speed = bsp * bossbulletspeed * 0.77;
		bullet_direction += 15;
		scr_Offset_Normal_Shoot();
		bullet_speed = bsp * bossbulletspeed * 0.8475;
		bullet_direction += 15;
		scr_Offset_Normal_Shoot();
    }
	
	if bossActiveAttack[1] = 10 {
		
		bossPatternAttackCount = 8 + irandom(1);
		
		bullet_type = obj_Array_Sum_Bullet;
		bullet_sprite = spr_Glowy_Enemy_Shot;
		bullet_size = 1.1;
        bullet_count = bossPatternAttackCount;
        bullet_spread = 0;
        bullet_speed = bossbulletspeed * (2.75);
        bullet_lifespan = 360;
		bullet_direction = 270 + ((-0.1 + random(0.2)) / other.bossaccuracy);
		
        scr_Spread_Top_Rain();
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

if bossActiveAttack[1] = 2 || bossActiveAttack[1] = 5 || bossActiveAttack[1] = 7 || bossActiveAttack[1] = 8 {
    sprite_index = spr_Barrier_Demon_Fist
	if image_index >= 4 and bossActiveAttackDuration[1] > 10 {
		image_index = 4;	
	}
} else if bossActiveAttack[1] = 1 || bossActiveAttack[1] = -1 || bossActiveAttack[1] = 3 || bossActiveAttack[1] = 6 || bossActiveAttack[1] = 9 {
    sprite_index = spr_Barrier_Demon_Send;
	if image_index >= 3 and bossActiveAttackDuration[1] > 10 {
		image_index = 3;	
	}
} else if bossActiveAttack[1] = 4 || bossActiveAttack[1] = 10 {
    sprite_index = spr_Barrier_Demon_Raise;
	if image_index >= 3 and bossActiveAttackDuration[1] > 10 {
		image_index = 3;	
	}
} else {
	sprite_index = spr_Barrier_Demon;
}

#endregion

scr_Boss_Soul_Hitbox(sprite_index);