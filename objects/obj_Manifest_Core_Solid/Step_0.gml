/// @description  Boss Step Event

currentphase = 2;

scr_Boss_Step();

{
    image_alpha = 1;
    //mask_index = spr_Manifest_Core;
}

///Passive Attack Prep

if bossPassiveAttackDelay[1] <= 0 and bossPassiveAttackCooldown[1] <= 0 {
    
    bossPassiveAttack[1] = 1;
    bossPassiveAttackDelay[1] = 5;
    bossPassiveAttackCooldown[1] = 120 + random(60);
}


///Passive Attack Code   
    scr_Default_Attack_Settings();
    bullet_type = obj_Basic_Bullet;
    bullet_sprite = spr_Glowy_Pink_Shot;
    bullet_speed = bossbulletspeed;
    bullet_power = bosspower;
    bullet_direction = (-180 + random(360)) / bossaccuracy;
    bullet_lifespan = 300;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;
    
    if champ = 1 {
        bullet_type = obj_Spin_Bullet;
        bullet_sprite = spr_Glowy_Blue_Shot;
    }
    if champ = 2 {
        bullet_sprite = spr_Glowy_Pink_Shot;
    }
    
if bossPassiveAttack[1] = 1 {
	scr_Boss_Stretch("Horizontal", 0.3);
	
    bullet_count = 10 + (irandom(2) * 5);
    bullet_spread = 360 / bullet_count;
    bullet_lifespan = 400;
    bullet_speed = bossbulletspeed * (1 + random(0.3));
    scr_Soul_Shoot();
	
	if champ = 2 {
        bullet_count = bullet_count / 2;
		bullet_spread = 360 / bullet_count;
		bullet_direction += 90 / bullet_count;
		bullet_speed += bossbulletspeed * 0.4;
		scr_Soul_Shoot();
		
		bullet_speed -= bossbulletspeed * 0.8;
		scr_Soul_Shoot();
    }
}

bossPassiveAttack[1] = 0;
bossPassiveAttack[2] = 0;

///Active Attack Prep

if bossActiveAttackDelay[1] <= 0 and bossActiveAttackCooldown[1] <= 0 and bossActiveAttackDuration[1] <= 0 {
    var bossdirection = scr_Soul_Point();
    direction = bossdirection;
    speed = 0.5 * bossmovespeed;
    if currentphase = 2 {
        bossActiveAttack[1] = choose(1);
        speed = bossmovespeed;
    }
    if bossActiveAttack[1] = 1 {
        bossActiveAttackDelay[1] = 5;
        bossActiveAttackDuration[1] = 5;
        bossActiveAttackCooldown[1] = 40 + random(30);
    }

    bossPatternCountMax = bossPatternCount;
}


/// Active Attack Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Basic_Bullet;
    bullet_sprite = spr_Glowy_Green_Shot;
    bullet_speed = bossbulletspeed;
    bullet_power = bosspower;
    bullet_direction = (-15 + random(30)) / bossaccuracy;
    bullet_lifespan = 300;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;
    
    coreNum = irandom(3)
    if coreNum = 1 {
        bullet_sprite = spr_Glowy_Blue_Shot;
    }
    if coreNum = 2 {
        bullet_sprite = spr_Glowy_Yellow_Shot;
    }
    if coreNum = 3 {
        bullet_sprite = spr_Glowy_Enemy_Shot;
    }
    
    if champ = 1 {
        bullet_sprite = spr_Glowy_Blue_Shot;
    }
    if champ = 2 {
        bullet_sprite = spr_Glowy_Pink_Shot;
    }
    
if bossActiveAttackDelay[1] <= 0 {
        
    if bossActiveAttack[1] = 1 {
		
		scr_Boss_Stretch("Horizontal", 0.3);
        
        bullet_count = 5;
        bullet_spread = 15 + irandom(15);
        bullet_lifespan = 400;
        bullet_speed = bossbulletspeed * (1.5 + random(1));
        if champ = 1 {
            bullet_spread = 7.5;
        }
        scr_Soul_Shoot();
		
		if champ = 2 {
			bullet_count = 1;
			bullet_speed += bossbulletspeed * 0.4;
			scr_Soul_Shoot();
			bullet_speed += bossbulletspeed * 0.4;
			scr_Soul_Shoot();
			bullet_speed -= bossbulletspeed * 1.2;
			scr_Soul_Shoot();
			bullet_speed -= bossbulletspeed * 0.4;
			scr_Soul_Shoot();
		}
    
        bossActiveAttack[1] = 0;
    }
    
}

/// Active Attack Pattern Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Basic_Red_Bullet;
    bullet_sprite = spr_Enemy_Shot;
    bullet_speed = bossbulletspeed;
    bullet_power = bosspower * 1;
    bullet_direction = (-5 + random(10)) / bossaccuracy;
    bullet_lifespan = 120 + random(180);
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;
    
    bullet_speed = bossbulletspeed * (1.5 + random(0.5));
    
    if champ = 1 {
        bullet_type = obj_Bounce_Bullet;
        bullet_sprite = spr_Lob_Shot;
        bullet_lifespan = 170;
    }

if bossActiveAttackDelay[1] <= 0 and bossPatternCooldown <= 0 and bossPatternCount > 0 {
        
    if bossActiveAttack[1] = 2 {

    }
    if bossActiveAttack[1] = 3 {

    }
    if bossActiveAttack[1] = 4 {

    }
    if bossActiveAttack[1] = 5 {

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

/// Boss Sprite Code

scr_Boss_Size_Lerp(0.15);

if currentphase = 1 {
    image_alpha = 0.5;
    //sprite_index = spr_Out_Manifest_Core;
} else {
    image_alpha = 1;
    //sprite_index = spr_Manifest_Core;
}

scr_Boss_Soul_Hitbox(sprite_index);