/// @description  Boss Step Event

scr_Boss_Step();

///Active Attack Prep

if bossActiveAttackDelay[1] <= 0 and bossActiveAttackCooldown[1] <= 0 and bossActiveAttackDuration[1] <= 0 {
	
	if currentphase = 1 {
		
		var bossdirection = scr_Soul_Point();
		speed = 0.15 * bossmovespeed;
		direction = bossdirection;
	
		
	}
	
    bossActiveAttack[1] = choose(1,2,5);
    if currentphase = 2 {
        bossActiveAttack[1] = choose(3);
    }
    if currentphase = 3 {
        bossActiveAttack[1] = choose(4);
    }
    if bossActiveAttack[1] = 1 {
        bossActiveAttackDelay[1] = 20;
        bossActiveAttackDuration[1] = 15;
        bossActiveAttackCooldown[1] = 120 + random(30);
    }
    if bossActiveAttack[1] = 2 {
        bossActiveAttackDelay[1] = 10;
        bossActiveAttackDuration[1] = 25;
        bossActiveAttackCooldown[1] = 120 + random(30);
    }
    if bossActiveAttack[1] = 3 {
        bossActiveAttackDelay[1] = 10;
        bossActiveAttackDuration[1] = 120;
        bossActiveAttackCooldown[1] = 90 + random(30);
    }
    if bossActiveAttack[1] = 4 {
        bossActiveAttackDelay[1] = 30;
        bossActiveAttackDuration[1] = 180;
        bossActiveAttackCooldown[1] = 90 + random(75);
    }
	if bossActiveAttack[1] = 5 {
        bossActiveAttackCooldown[1] = (150 + random(30));
        bossPatternCount = 6;
		bossActiveAttackDelay[1] = 0;
        bossPatternCooldown = 10;
		bossPatternCooldownMax = 5;
        bulletdirection = random(360);
        bossPatternDirection = bulletdirection;
        bossActiveAttackDuration[1] = 10 + bossPatternCooldownMax * bossPatternCount;
    }
    bossPatternCountMax = bossPatternCount;
}


/// Active Attack Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Basic_Bullet;
    bullet_sprite = spr_Big_Flash_Shot;
    bullet_speed = bossbulletspeed;
    bullet_power = bosspower * 2;
    bullet_direction = (-15 + random(30)) / bossaccuracy;
    bullet_lifespan = 300;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;
    
if bossActiveAttackDelay[1] <= 0 {
        
    if bossActiveAttack[1] = 1 {
        
		/*
        speed = bossmovespeed * (0.15 + random(0.1));
        var bossdirection = scr_Soul_Point();
        direction = -30 + bossdirection + random(60);
        friction = 0;
		*/
        
		
		/*
        bullet_sprite = spr_Flash_Sword_Swing;
        bullet_type = obj_Flash_Knight_Sword;
        bullet_count = 1;
        bullet_size = 0.66;
        bullet_lifespan = 90;
        bullet_speed = bossbulletspeed * 0.05;
        scr_Soul_Shoot();
		*/
		
		bullet_sprite = spr_Glowy_Blue_Shot;
		
		bullet_power = bosspower * 1;
		
		bullet_count = 12;
        bullet_size = 1;
        bullet_lifespan = 400;
		bullet_spread = 180 / bullet_count;
		bullet_direction -= 45 / bullet_count;
		bullet_speed = bossbulletspeed * 1.5;
		
		scr_Soul_Shoot();
		
		bullet_direction += 90 / bullet_count;
		bullet_speed = bossbulletspeed * 1.35;
		
		scr_Soul_Shoot();
		
		bullet_count = 5
		bullet_size = 1.25;
		bullet_spread = 180 / bullet_count;
		bullet_direction -= 45 / bullet_count;
		bullet_speed = bossbulletspeed * 1.65;
		bullet_direction -= 10 / bullet_count;
		repeat(2) {
			scr_Soul_Shoot();
			bullet_speed += bossbulletspeed * 0.3;
		}
		bullet_speed -= bossbulletspeed * 0.45;
		bullet_direction += 20 / bullet_count;
		repeat(2) {
			scr_Soul_Shoot();
			bullet_speed += bossbulletspeed * 0.3;
		}
		
    
        bossActiveAttack[1] = -1;
    }
    
    if bossActiveAttack[1] = 2 {
        
		/*
        speed = bossmovespeed * (0.15 + random(0.1));
        var bossdirection = scr_Soul_Point();
        direction = -30 + bossdirection + random(60);
        friction = 0;
		*/
        
		bullet_part = 1;
		bullet_part_sprite = spr_Bullet_Part;
		bullet_part_area = 25;
		bullet_part_life = 40;
		bullet_part_color1 = make_color_rgb(76,255,255);
		bullet_part_color2 = bullet_part_color1;
		
        bullet_power = bosspower * 5;
        bullet_sprite = spr_Big_Flash_Shot;
        bullet_type = obj_Flash_Ball
        bullet_count = 1;
		bullet_size = 1.5;
        bullet_lifespan = 400;
        bullet_speed = bossbulletspeed * 1.5;
        scr_Soul_Shoot();
    
        bossActiveAttack[1] = -2;
    }
    
    if bossActiveAttack[1] = 3 {
        
        speed = 0;
        direction = random(360);
        friction = 0;
        
		bullet_part = 1;
		bullet_part_sprite = spr_Bullet_Part;
		bullet_part_area = 25;
		bullet_part_life = 40;
		bullet_part_color1 = make_color_rgb(76,255,255);
		bullet_part_color2 = bullet_part_color1;
		
        bullet_count = 10;
        bullet_spread = 360 / bullet_count;
        bullet_lifespan = 400;
        bullet_speed = bossbulletspeed;
        scr_Just_Shoot();
		
		tcount = 0;
        scr_Boss_Teleport_Near_Above();
		
		bullet_part = 0;
		
		
        bullet_power = bosspower;
        bullet_sprite = spr_Flash_Sword_Swing;
        bullet_type = obj_Flash_Knight_Sword_Minus;
        bullet_count = 1;
        bullet_size = 1;
        bullet_lifespan = 120;
        bullet_speed = bossbulletspeed * 0.05;
        scr_Soul_Shoot();
    
        bossActiveAttack[1] = 0;
    }
    
    if bossActiveAttack[1] = 4 {
        
        speed = 0;
        direction = random(360);
        friction = 0;
        
        bullet_power = bosspower;
        bullet_count = 16;
        bullet_spread = 360 / bullet_count;
        bullet_lifespan = 180 / bossattackspeed;
        bullet_speed = bossbulletspeed * 4.5;
        bullet_power = bosspower;
        bullet_type = obj_Flash_Crystal_Shot;
        bullet_sprite = spr_Flash_Crystal_Shot;
        attacking = 1;
        scr_Just_Shoot();
    
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
        
    if bossActiveAttack[1] = 5 {
		bullet_speed = bossbulletspeed * 1.15;
        bullet_direction = bossPatternDirection;
		
		bullet_part = 1;
		bullet_part_sprite = spr_Bullet_Part;
		bullet_part_area = 25;
		bullet_part_life = 40;
		bullet_part_color1 = make_color_rgb(76,255,255);
		bullet_part_color2 = bullet_part_color1;
		
		bullet_power = bosspower * 2;
		
		bullet_type = obj_Flash_Bullet;
		bullet_sprite = spr_Big_Flash_Shot;
		bullet_count = 1;
		bullet_lifespan = 120;
		
		scr_Just_Shoot();
		
        bossPatternDirection += 60;
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

//image_xscale = 0.8;
//image_yscale = 0.8;

scr_Boss_Size_Lerp(0.15);

if currentphase = 1 {
scr_Boss_Size_Setup(0.45);

if bossActiveAttack[1] = 1 || bossActiveAttack[1] = -1 /* and (bossActiveAttackDelay[1] > 0)*/ {
	sprite_index = spr_Flash_Knight_Swing;
	image_speed = 1;
	//}
} else if bossActiveAttack[1] = 2 || bossActiveAttack[1] = -2 || bossActiveAttack[1] = 5 {
	sprite_index = spr_Flash_Knight_Raise;
	image_speed = 1;
} else {
	sprite_index = spr_Flash_Knight;
	//image_index = 0;	
}

mask_index = spr_Flash_Knight;

}

if currentphase = 2 {
    sprite_index = spr_Flash_Knight_2;
    scr_Boss_Size_Setup(0.55);
	
	mask_index = sprite_index;
}
if currentphase = 3 {
    if bossActiveAttackDuration[1] > 0 and bossActiveAttackDelay[1] <= 0 {
        bossReaction = 0;
        sprite_index = spr_Real_Heart;
        scr_Boss_Size_Setup(0.5);
        bossdefense = 0;
        speed = 0;
    } else {
		if bossReaction < 1 {
			bossReaction = 1;
		}
        sprite_index = spr_Flash_Knight_3;
        scr_Boss_Size_Setup(0.55);
        bossdefense = 100;
        speed = bossmovespeed * 0.66;
        var bossdirection = scr_Soul_Point();
        direction = bossdirection;
    }
	mask_index = sprite_index;
}

scr_Boss_Soul_Hitbox(mask_index);