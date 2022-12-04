/// @description  Boss Step Event

scr_Boss_Step();

target_Y = y;
target_X = x;
bossParent = noone;

with obj_Manifest_Core {
    if bossID = other.bossID {
        other.bossParent = self;
    }
}

if champ = 0.1 {
if instance_exists(bossParent) {
    if coreNum = 1 {
        target_Y = bossParent.y + 60;
        target_X = bossParent.x + 60;
    }
    if coreNum = 2 {
        target_Y = bossParent.y + 60;
        target_X = bossParent.x - 60;
    }
    if coreNum = 3 {
        target_Y = bossParent.y - 60;
        target_X = bossParent.x + 60;
    }
    if coreNum = 4 {
        target_Y = bossParent.y - 60;
        target_X = bossParent.x - 60;
    }
}
}

if champ != 0.1 {
    if champ = 1.1 {
        //image_angle = direction;
    }
    target_Y = obj_Soul.y;
    target_X = obj_Soul.x;
}
image_index = coreNum;

///Passive Attack Prep

if bossPassiveAttackDelay[1] <= 0 and bossPassiveAttackCooldown[1] <= 0 {

    move_towards_point(target_X,target_Y, bossmovespeed * 0.55);
    
    if champ = 1.1 {
        move_towards_point(target_X,target_Y, bossmovespeed * 0.85);
    }
    
    bossPassiveAttack[1] = 1;
    bossPassiveAttackCooldown[1] = 5;
    bossPassiveAttackDelay[1] = 5;
}


///Passive Attack Code   

if bossPassiveAttack[1] = 1 {
    
}

bossPassiveAttack[1] = 0;
bossPassiveAttack[2] = 0;

///Active Attack Prep

if bossActiveAttackDelay[1] <= 0 and bossActiveAttackCooldown[1] <= 0 and bossActiveAttackDuration[1] <= 0 {
    bossActiveAttack[1] = choose(1);
        
    bossActiveAttackDelay[1] = 5;
    
    bossActiveAttackDuration[1] = 10;
    bossActiveAttackCooldown[1] = 90 + random(120);
    
    if champ = 1.1 {
        bossActiveAttackCooldown[1] = 45 + random(10);
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
    
    if coreNum = 2 {
        bullet_sprite = spr_Glowy_Blue_Shot;
    }
    if coreNum = 3 {
        bullet_sprite = spr_Glowy_Yellow_Shot;
    }
    if coreNum = 4 {
        bullet_sprite = spr_Glowy_Enemy_Shot;
    }
    
if bossActiveAttackDelay[1] <= 0 {
        
    if bossActiveAttack[1] = 1 {
		
		scr_Boss_Stretch("Horizontal", 0.3);
        
        bullet_count = 5;
        bullet_spread = 15 + irandom(5);
        bullet_lifespan = 400;
        bullet_speed = bossbulletspeed * (1.5 + random(0.25));
        
        if champ = 1.1 {
            bullet_count = 2;
            bullet_spread = 10;
            bullet_speed = bossbulletspeed * (2 + random(0.25));
            bullet_sprite = spr_Glowy_Blue_Shot;
        }
        
        if champ = 2.1 {
            bullet_count = 3;
            bullet_spread = 15;
            bullet_speed = bossbulletspeed * (1.35 + random(0.25));
            bullet_sprite = spr_Glowy_Pink_Shot;
        }
        
        scr_Soul_Shoot();
		
		if champ = 2.1 {
            bullet_count = 1;
            bullet_spread = 0;
            bullet_speed += bossbulletspeed * 0.4;
            bullet_sprite = spr_Glowy_Pink_Shot;
			scr_Soul_Shoot();
			
			bullet_speed -= bossbulletspeed * 0.8;
			scr_Soul_Shoot();
        }
        
    
        bossActiveAttack[1] = 0;
    }
    
}

/// Active Attack Post

if champ = 1.1 {
	sprite_index = spr_Vortex_Orbital;
}

if champ = 2.1 {
	sprite_index = spr_Queen_Orbital;
}
   
if bossActiveAttackDuration[1] <= 0 { 
    bossActiveAttack[1] = 0;
}

scr_Boss_Size_Lerp(0.15);

scr_Boss_Soul_Hitbox(sprite_index);