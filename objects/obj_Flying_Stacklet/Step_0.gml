/// @description  Boss Step Event

scr_Boss_Step();

///Active Attack Prep

if bossActiveAttackDelay[1] <= 0 and bossActiveAttackCooldown[1] <= 0 and bossActiveAttackDuration[1] <= 0 {
	image_index = 0;
    bossActiveAttack[1] = choose(1,2);
        
    bossActiveAttackDelay[1] = 10;
    
    bossActiveAttackDuration[1] = 20;
    bossActiveAttackCooldown[1] = 150 + (irandom(2) * 30);
     
    bossPatternCountMax = bossPatternCount;
}



/// Active Attack Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Basic_Bullet;
    bullet_sprite = spr_Glowy_Purple_Shot;
    bullet_speed = bossbulletspeed;
    bullet_power = bosspower;
    bullet_direction = (-15 + random(30)) / bossaccuracy;
    bullet_lifespan = 300;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;
    
    if champ = 2 {
        bullet_type = obj_Direction_Bullet;
        bullet_sprite = spr_Enemy_Laser;
    }
    if champ = 8 {
        bullet_type = obj_Speed_Up_Direction_Bullet;
        bullet_sprite = spr_Big_Fire_Shot;
    }
    
if bossActiveAttackDelay[1] <= 0 {
        
    if bossActiveAttack[1] = 1 {
		scr_Boss_Stretch("Vertical",0.4);
		
        var bossdirection = scr_Soul_Point();
        speed = (1 + random(2)) * bossmovespeed;
        friction = 0.02 * bossmovespeed;
        direction = bossdirection;
        
        bullet_count = 5;
        bullet_spread = 15;
        bullet_lifespan = 400;
        bullet_speed = bossbulletspeed + speed / 2;
        if champ = 8 {
            bullet_speed = 0.5 * bossbulletspeed + speed / 4;
        }
        scr_Soul_Shoot();
    
        bossActiveAttack[1] = -1;
    }
    if bossActiveAttack[1] = 2 {
		scr_Boss_Stretch("Vertical",0.4);
		
        var bossdirection = random(360);
        speed = (1 + random(2)) * bossmovespeed;
        friction = 0.02 * bossmovespeed;
        direction = bossdirection;
        
        bullet_count = 5;
        bullet_spread = 15;
        bullet_lifespan = 400;
        bullet_speed = bossbulletspeed + speed / 2;
        if champ = 8 {
            bullet_speed = 0.5 * bossbulletspeed + speed / 4;
        }
        scr_Soul_Shoot();
    
        bossActiveAttack[1] = -2;
    }
    
}

/// Active Attack Post
   
   scr_Boss_Size_Lerp(0.15);
   
if bossActiveAttackDuration[1] <= 0 { 
    bossActiveAttack[1] = 0;
}

if bossActiveAttack[1] = 1 || bossActiveAttack[1] = 2 || bossActiveAttack[1] = -1 || bossActiveAttack[1] = -2 { // Sonic Attack
	//if bossActiveAttackDuration[1] > 0 {
		sprite_index = spr_Flying_Stacklet_Attack;
	//} else {
	//	sprite_index = spr_Flying_Stacklet;
	//}
} else { // Default
	sprite_index = spr_Flying_Stacklet;
}

scr_Boss_Soul_Hitbox(sprite_index);