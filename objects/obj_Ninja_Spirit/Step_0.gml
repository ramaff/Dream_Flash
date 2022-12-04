/// @description  Boss Step Event

scr_Boss_Step();

if state = states.phasing {
	exit;	
}

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

if bossActiveAttackDelay[1] <= 0 and bossActiveAttackCooldown[1] <= 0 and bossActiveAttackDuration[1] <= 0 {
    
    bossActiveAttack[1] = choose(1,2);
    bossActiveAttackDelay[1] = 15;
    
    if currentphase = 2 {
        bossActiveAttack[1] = 3;
		if champ = 1 {
			bossActiveAttack[1] = 4;	
		}
    }
    
    if bossActiveAttack[1] = 1 {
		image_index = 0;
        bossActiveAttackCooldown[1] = (105 + random(15));
        bossActiveAttackDuration[1] = 15;
    }
    if bossActiveAttack[1] = 2 {
		image_index = 0;
        bossActiveAttackCooldown[1] = (180 + random(30));
        bossPatternCount = 4;
        if champ = 1 {
            bossPatternCount = 8;
        }
		bossActiveAttackDelay[1] = 0;
        bossPatternCooldown = 20;
		bossPatternCooldownMax = 15;
        bulletdirection = random(360);
        bossPatternDirection = bulletdirection;
        bossActiveAttackDuration[1] = 10 + bossPatternCooldownMax * bossPatternCount;
    }
    if bossActiveAttack[1] = 3 {
        speed = 0;
        scr_Boss_Teleport();
		bossActiveAttackDelay[1] = 0;
		
        bossActiveAttackCooldown[1] = (150 + random(30));
        bossPatternDirection = scr_Soul_Point();
        bossPatternCount = 4;
        if champ = 1 {
            bossPatternCount = 4;
        }
        if champ = 2 {
            bossActiveAttackCooldown[1] -= 60;
        }
        bossPatternCooldown = 20;
		bossPatternCooldownMax = 15;
        
        bossActiveAttackDuration[1] = 10 + bossPatternCooldownMax * bossPatternCount;
    }
	if bossActiveAttack[1] = 4 {
        speed = 0;
        scr_Boss_Teleport();
		bossActiveAttackDelay[1] = 0;
		
        bossActiveAttackCooldown[1] = (150 + random(30));
        bossPatternDirection = scr_Soul_Point();
        bossPatternCount = 6;
		bossPatternCountMax = 6;
		bossPatternCooldown = 15;
		bossPatternCooldownMax = 15;
        
        bossActiveAttackDuration[1] = 10 + bossPatternCooldownMax * bossPatternCount;
    }
    
}


/// Active Attack Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Hatred_Seeking_Bullet;
    bullet_sprite = spr_Boss_Ninja_Star;
    bullet_speed = bossbulletspeed;
    bullet_power = bosspower * 1;
    bullet_direction = (-5 + random(10)) / bossaccuracy;
    bullet_lifespan = 400;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;

if bossActiveAttackDelay[1] <= 0 {        
    
    if bossActiveAttack[1] = 1 {
		scr_Boss_Stretch("Horizontal", 0.3);
		
        bullet_speed = bossbulletspeed * 1.75;
        if champ = 2 {
            bullet_sprite = spr_Boss_Sai;
            bullet_type = obj_Phasing_Hatred_Bullet;
            bullet_lifespan = 600;
        }
        if champ = 1 {
            bullet_count = 2;
            bullet_spread = 30;
        }
		
		bullet_part = 1;
		bullet_part_sprite = spr_Ninja_Bullet_Part;
		bullet_part_area = 0;
		bullet_part_life = 45;
		bullet_part_frequency = 15;
		bullet_part_color1 = make_color_rgb(255,0,43);
		bullet_part_color2 = bullet_part_color1;
		
        scr_Soul_Shoot();
		
		bullet_part = 0;
		
		bullet_count = 2;
		bullet_type = obj_Basic_Bullet
		bullet_sprite = spr_Boss_Ninja_Star;
		bullet_spread = 50;
		bullet_speed = bossbulletspeed * 1.4;
		
		scr_Soul_Shoot();
		
		bullet_spread = 100;
		scr_Soul_Shoot();
		
		if champ = 1 || champ = 2 {
			bullet_spread = 150;
			scr_Soul_Shoot();
		}
		
        bossActiveAttack[1] = -1;
    }
}

#region /// Active Attack Pattern Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Hatred_Seeking_Bullet;
    bullet_sprite = spr_Boss_Ninja_Star;
    bullet_speed = bossbulletspeed;
    bullet_power = bosspower * 1;
    bullet_direction = (-5 + random(10)) / bossaccuracy;
    bullet_lifespan = 300;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;

if bossActiveAttackDelay[1] <= 0 and bossPatternCooldown <= 0 and bossPatternCount > 0 {
        
    if bossActiveAttack[1] = 2 {
		scr_Boss_Stretch("Horizontal", 0.3);
		
        bullet_speed = bossbulletspeed * 1.25;
        bullet_direction = bossPatternDirection;
		
		bullet_part = 1;
		bullet_part_sprite = spr_Ninja_Bullet_Part;
		bullet_part_area = 0;
		bullet_part_life = 45;
		bullet_part_frequency = 15;
		bullet_part_color1 = make_color_rgb(255,0,43);
		bullet_part_color2 = bullet_part_color1;
		
        scr_Just_Shoot();
		
		bullet_part = 0;
		bullet_type = obj_Basic_Bullet;
		//bullet_sprite = spr_Boss_Ninja_Star;
		bullet_count = 2;
		bullet_spread = 50;
		
		if champ = 2 {
			bullet_count = 4;	
		}
		
		scr_Just_Shoot();
		
        if champ = 0 || 2 {
            bossPatternDirection += 90;
        }
        if champ = 1 {
            bossPatternDirection += 45;
        }
        bossPatternCount -= 1;
        bossPatternCooldown += bossPatternCooldownMax;
    }
    if bossActiveAttack[1] = 3 {
		scr_Boss_Stretch("Horizontal", 0.3);
		
        bullet_type = obj_Basic_Bullet;
        bullet_speed = bossbulletspeed * 1.75;
        bullet_direction = bossPatternDirection;
        bullet_spread = 24;
        bullet_count = 7 - bossPatternCount;
        if champ = 1 {
            bullet_count = 8 - bossPatternCount;
            alarm[1] = (30) / bossattackspeed;
        }
        if champ = 0 || champ = 1 {
            scr_Just_Shoot();
        }
        if champ = 2 {
			bullet_count += 1;
			bullet_spread = 15;
            bullet_direction = scr_Soul_Point();
            scr_Just_Shoot();
        }
        bossPatternCount -= 1;
        bossPatternCooldown += bossPatternCooldownMax;
    }
	if bossActiveAttack[1] = 4 {
		scr_Boss_Stretch("Horizontal", 0.3);
		
        bullet_type = obj_Basic_Bullet;
        bullet_speed = bossbulletspeed * 2;
        bullet_direction = bossPatternDirection;
        bullet_spread = 10 + ((bossPatternCountMax - bossPatternCount) * 30);
        bullet_count = 2;
		
        scr_Just_Shoot();
		 
		bullet_spread = 25 + ((bossPatternCountMax - bossPatternCount) * 30);
		
		scr_Just_Shoot();
		
		bullet_spread = 40 + ((bossPatternCountMax - bossPatternCount) * 30);
		
		scr_Just_Shoot();
			
        bossPatternCount -= 1;
        bossPatternCooldown += bossPatternCooldownMax;
    }
}

#endregion

/// Active Attack Post
   
if bossActiveAttackDuration[1] <= 0 { 
    bossActiveAttack[1] = 0;
    bossActiveAttack[2] = 0;
}

#region /// Boss Sprite

scr_Boss_Size_Lerp(0.15);

if bossActiveAttack[1] = 1 || bossActiveAttack[1] = -1 /* and (bossActiveAttackDelay[1] > 0)*/ {
	sprite_index = spr_Ninja_Spirit_Shoot;
	image_speed = 1;
	//}
} else if bossActiveAttack[1] = 3 {
	sprite_index = spr_Ninja_Spirit_Multi_Shoot;
	image_speed = 1;
} else if bossActiveAttack[1] = 2 || bossActiveAttack[1] = 4 {
	sprite_index = spr_Ninja_Spirit_Multi_Shoot;
	if image_index > 11 and bossPatternCount > 1 {
		image_index = 9;	
	}
	image_speed = 1;
} else {
	sprite_index = spr_Ninja_Spirit;
	//image_index = 0;	
}

   
#endregion

scr_Boss_Soul_Hitbox(sprite_index);