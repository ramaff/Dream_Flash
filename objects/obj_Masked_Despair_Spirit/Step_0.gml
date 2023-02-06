/// @description  Boss Step Event

scr_Boss_Step();

scr_Boss_Two_Face_Direction();

scr_Spirit_Outside_View();

var bossdirection = scr_Soul_Point();
speed = 0.55 * bossmovespeed;
direction = bossdirection;

///Passive Attack Prep

if bossPassiveAttackDelay[1] <= 0 and bossPassiveAttackCooldown[1] <= 0 {
        bossPassiveAttack[1] = 1;
        bossPassiveAttackCooldown[1] = 1;
        bossPassiveAttackDelay[1] = 0;
}


///Passive Attack Code   

if bossPassiveAttack[1] = 1 {
    var bossdirection = scr_Soul_Point();
    speed = 0.55 * bossmovespeed;
    direction = bossdirection;
}

bossPassiveAttack[1] = 0;
bossPassiveAttack[2] = 0;

///Active Attack Prep

if bossActiveAttackDelay[1] <= 0 and bossActiveAttackCooldown[1] <= 0 and bossActiveAttackDuration[1] <= 0 {
    
    if currentphase = 2 {
        bossActiveAttack[1] = choose(1,4);
        bossActiveAttackDelay[1] = 10;
        if tier >= 2 {   
            bossActiveAttack[1] = choose(1,6,3);
        }
    }
	bossActiveAttackDelay[1] = 30;
    
    if bossActiveAttack[1] = 1 {
		scr_Boss_Stretch("Horizontal", 0.2);
        bossActiveAttackCooldown[1] = (150 + random(15));
        bossPatternCount = 3;
        bossPatternCooldown = 30;
        bossPatternCooldownMax = 90;
		if tier >= 1 {
            bossPatternCount += tier;
        }
        bulletdirection = random(360);
        bossPatternDirection = bulletdirection;
        bossActiveAttackDuration[1] = -40 + bossPatternCooldownMax * bossPatternCount;
    }
    if bossActiveAttack[1] = 2 {
		scr_Boss_Stretch("Horizontal", 0.2);
        bossActiveAttackCooldown[1] = (165 + random(30));
        if tier >= 1 {
            bossActiveAttackCooldown[1] -= 45;
        }
        bossActiveAttackDuration[1] = 15 + bossPatternCooldown * bossPatternCount;
    }
    if bossActiveAttack[1] = 3 {
		scr_Boss_Stretch("Horizontal", 0.2);
        bossActiveAttackCooldown[1] = (240 + random(15));
        bossPatternCount = 12;
        bossPatternCooldown = 30;
        bossPatternCooldownMax = 8;
        bulletdirection = random(360);
        bossPatternDirection = bulletdirection;
        bossActiveAttackDuration[1] = 550 + bossPatternCooldownMax * bossPatternCount;
    }
	if bossActiveAttack[1] = 4 {
		scr_Boss_Stretch("Horizontal", 0.2);
        bossActiveAttackCooldown[1] = (340 + random(30));
        if tier >= 1 {
            bossActiveAttackCooldown[1] -= 45;
        }
        bossActiveAttackDuration[1] = 15 + bossPatternCooldown * bossPatternCount;
    }
	if bossActiveAttack[1] = 5 {
		scr_Boss_Stretch("Horizontal", 0.2);
        bossActiveAttackCooldown[1] = (90 + random(15));
        bossPatternCount = 3;
        bossPatternCooldown = 30;
        bossPatternCooldownMax = 90;
        bulletdirection = random(360);
        bossPatternDirection = bulletdirection;
        bossActiveAttackDuration[1] = -40 + bossPatternCooldownMax * bossPatternCount;
    }
	if bossActiveAttack[1] = 6 {
		scr_Boss_Stretch("Horizontal", 0.2);
        bossActiveAttackCooldown[1] = (660 + random(30));
        bossActiveAttackDuration[1] = 15 + bossPatternCooldown * bossPatternCount;
    }
    bossPatternCountMax = bossPatternCount;
}


/// Active Attack Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Despair_Harpoon;
    bullet_sprite = spr_Despair_Harpoon;
    bullet_speed = bossbulletspeed;
    bullet_power = bosspower * 2;
    bullet_direction = (-5 + random(10)) / bossaccuracy;
    bullet_lifespan = 600;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;

if bossActiveAttackDelay[1] <= 0 {        
    
    if bossActiveAttack[1] = 2 {
		scr_Boss_Stretch("Vertical", 0.4);
		
        bullet_count = 4;
        if tier >= 2 {
            bullet_count += 1;
        }
		if tier >= 3 {
            bullet_count += 1;
        }
        bullet_direction = random(360);
        bullet_power = bosspower * 1;
        bullet_type = obj_Despair_Bullet;
        bullet_sprite = spr_Despair_Bullet;
        bullet_spread = 360 / bullet_count;
        bullet_speed = bossbulletspeed * (0.55 + random(0.25));
        scr_Just_Shoot();
		
        bullet_speed = bullet_speed * 2;
        scr_Just_Shoot();
		
		bullet_type = obj_Speed_Up_Direction_Bullet;
		bullet_count = bullet_count * 4;
		bullet_spread = 360 / bullet_count;
		bullet_speed = bullet_speed * 0.75;
		scr_Just_Shoot();
		
		
        
        bossActiveAttack[1] = -2;   
    }
	if bossActiveAttack[1] = 4 {
		scr_Boss_Stretch("Vertical", 0.4);
        
        bullet_count = 1;
        bullet_direction = (-5 + random(10)) / bossaccuracy;
        bullet_power = bosspower * 10;
        bullet_type = obj_Black_Hole_Bullet;
        bullet_sprite = spr_Despair_Ball;
        bullet_spread = 10;
        bullet_lifespan = 450;
        bullet_speed = bossbulletspeed * 1.66;
		
		bullet_part = 2;
		bullet_part_sprite = spr_Soul_Big_Bit;
		bullet_part_area = 25;
		bullet_part_life = 100;
		bullet_part_color1 = make_color_rgb(50,0,100);
		bullet_part_color2 = make_color_rgb(25,0,50);
		bullet_part_frequency = 3;
        
        scr_Soul_Shoot();
        
        bossActiveAttack[1] = -4;   
    }
	if bossActiveAttack[1] = 6 {
		scr_Boss_Stretch("Vertical", 0.4);
        
        bullet_count = 1;
        bullet_direction = (-5 + random(10)) / bossaccuracy;
        bullet_power = bosspower * 10;
        bullet_type = obj_Mega_Black_Hole_Bullet;
        bullet_sprite = spr_Despair_Super_Ball;
        bullet_spread = 10;
        bullet_lifespan = 600;
        bullet_speed = bossbulletspeed * 1.66;
		
		bullet_part = 2;
		bullet_part_sprite = spr_Soul_Big_Bit;
		bullet_part_area = 25;
		bullet_part_life = 100;
		bullet_part_color1 = make_color_rgb(50,0,100);
		bullet_part_color2 = make_color_rgb(25,0,50);
		bullet_part_frequency = 3;
        
        scr_Soul_Shoot();
        
        bossActiveAttack[1] = -6;   
    }
    
}

/// Active Attack Pattern Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Despair_Harpoon;
    bullet_sprite = spr_Despair_Harpoon;
    bullet_speed = bossbulletspeed;
    bullet_power = bosspower * 2;
    bullet_direction = (-5 + random(10)) / bossaccuracy;
    bullet_lifespan = 600;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;

if bossActiveAttackDelay[1] <= 0 and bossPatternCooldown <= 0 and bossPatternCount > 0 {
        
    if bossActiveAttack[1] = 1 {
		scr_Boss_Stretch("Vertical", 0.4);
		
        bullet_count = 1;
        if tier >= 2 and bossPatternCount mod 2 = 0 {
            bullet_count += 1;
        }
        bullet_spread = 150;
        bullet_speed = bossbulletspeed * (2.85 + random(0.3));
        if tier >= 1 {
            bullet_speed += bossbulletspeed * 0.33;
        }
        if tier >= 3 {
            bullet_speed += bossbulletspeed * 0.43;
        }
        scr_Soul_Shoot();  
    }
	
	if bossActiveAttack[1] = 3 {
		scr_Boss_Stretch("Vertical", 0.4);
		
        bullet_count = 10;
        bullet_direction = random(360);
        bullet_power = bosspower * 1;
        bullet_type = obj_Despair_Shadow_Bullet;
        bullet_sprite = spr_Despair_Bullet;
        bullet_spread = 360 / bullet_count;
        bullet_speed = bossbulletspeed * (2.7 + (0.25 * bossPatternCount));
		
		scr_Just_Shoot();
        
		if bossPatternCount = bossPatternCountMax {
	        bullet_count = 1;
	        bullet_direction = scr_Soul_Point() + 180;
	        bullet_power = bosspower * 10;
	        bullet_type = obj_Despair_Ball;
	        bullet_sprite = spr_Despair_Ball;
	        bullet_spread = 10;
	        bullet_lifespan = 800;
	        bullet_speed = bossbulletspeed * 1.66;
        
	        scr_Just_Shoot();
		}  
    }
	
	if bossActiveAttack[1] = 5 {
		scr_Boss_Stretch("Vertical", 0.4);
        
        bullet_count = 1;
        bullet_direction = (-5 + random(10)) / bossaccuracy;
        bullet_power = bosspower * 10;
        bullet_type = obj_Black_Hole_Bullet;
        bullet_sprite = spr_Despair_Ball;
        bullet_spread = 10;
        bullet_lifespan = 300;
        bullet_speed = bossbulletspeed * 1.66;
		
		bullet_part = 2;
		bullet_part_sprite = spr_Soul_Big_Bit;
		bullet_part_area = 25;
		bullet_part_life = 100;
		bullet_part_color1 = make_color_rgb(50,0,100);
		bullet_part_color2 = make_color_rgb(25,0,50);
		bullet_part_frequency = 3;
        
        scr_Soul_Shoot(); 
    }
    
    bossPatternCount -= 1;
    bossPatternCooldown += bossPatternCooldownMax;
}

/// Active Attack Post
   
if bossActiveAttackDuration[1] <= 0 { 
    bossActiveAttack[1] = 0;
    bossActiveAttack[2] = 0;
}

scr_Spirit_Outside_View();

#region /// Boss Sprite

scr_Boss_Size_Lerp_Dir(0.15);

if tier < 2 {
	scr_Masked_Spirit_Sprite(spr_Masked_Despair_Spirit,spr_Masked_Despair_Spirit_Attack);
} else {
	scr_Masked_Spirit_Sprite(spr_High_Despair_Spirit,spr_High_Despair_Spirit_Attack);
}
   
#endregion

scr_Boss_Soul_Hitbox(sprite_index);