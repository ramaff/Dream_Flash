/// @description  Boss Step Event

scr_Boss_Step();

if bosshealth < bossmaxhealth {
	var diff = bossmaxhealth - bosshealth;
	bosshealth = bossmaxhealth;
	if instance_exists(followtarget) {
		followtarget.bosshealth -= diff;	
	}
}

//image_angle = direction;

#region ///Passive Attack Prep


if instance_exists(followtarget) {
	currentphase = followtarget.currentphase;
	if point_distance(x, y, followtarget.x, followtarget.y) > 100 {
		direction = point_direction(x, y, followtarget.x, followtarget.y);
		speed = followtarget.speed;
	}
} else {
	speed = lerp(speed, 0, 0.025);
	instance_destroy();
}

#region /// Boss Sprite Code

scr_Boss_Size_Lerp_Dir(0.15);

scr_Boss_Two_Face_Direction();

#endregion

scr_Boss_Soul_Hitbox(sprite_index);

if bossPassiveAttackDelay[1] <= 0 and bossPassiveAttackCooldown[1] <= 0 {
	
    if champ = 1 {
		
    bossPassiveAttack[1] = 1;
    bossPassiveAttackCooldown[1] = 1 + 12 / (1 + speed);
    bossPassiveAttackDelay[1] = 2;
	}
    
}

#endregion

#region ///Passive Attack Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Poison_Pool;
    bullet_sprite = spr_Poison_Pool;
    bullet_speed = bossbulletspeed * 0;
    bullet_power = bosspower * 0.15;
    bullet_direction = (-180 + random(360)) / bossaccuracy;
    bullet_lifespan = 75 + irandom(15);
    bullet_size = 0.65 + random(0.15);
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;
	bullet_image_speed = 0.2;

if bossPassiveAttack[1] = 1 {
	//bullet_blend = c_lime;
    scr_Just_Shoot();    
}

bossPassiveAttack[1] = 0;
bossPassiveAttack[2] = 0;

#endregion


#region ///Active Attack Prep///
////////////////////////

if tail = true {
	exit;	
}

if bossActiveAttackDelay[1] <= 0 and bossActiveAttackCooldown[1] <= 0 and bossActiveAttackDuration[1] <= 0 {
    if currentphase = 1 {
        bossActiveAttack[1] = choose(1);
    }
    if currentphase = 2 {
        bossActiveAttack[1] = choose(2);
    }
	//bossActiveAttack[1] = 1;
    bossActiveAttackDelay[1] = 10;   
    
    if bossActiveAttack[1] = 1  {
		bossPatternCount = 2;
        bossPatternCountMax = bossPatternCount;
        bossPatternCooldown = 75;
        bossPatternCooldownMax = 75;
        bossActiveAttackDuration[1] = 15 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 120 + random(120);
    }
    if bossActiveAttack[1] = 2  {
		bossPatternCount = 7;
        bossPatternCountMax = bossPatternCount;
        bossPatternCooldown = 15;
        bossPatternCooldownMax = 15;
        bossActiveAttackDuration[1] = 15 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 120 + random(120);
    }
    if bossActiveAttack[1] = 3  {
		bossActiveAttackDelay[1] = 15;
        bossActiveAttackDuration[1] = 15;
        bossActiveAttackCooldown[1] = (130 + (40 * irandom(1)));
    }
    if bossActiveAttack[1] = 4  {
        scr_Boss_Teleport();
		bossActiveAttackDelay[1] = 15;
        bossActiveAttackDuration[1] = 15;
        bossActiveAttackCooldown[1] = (90 + (40 * irandom(1)));
    }
    if bossActiveAttack[1] = 5  {
        bossActiveAttackDelay[1] = 15;
        bossActiveAttackDuration[1] = 15;
        bossActiveAttackCooldown[1] = (130 + (40 * irandom(1)));
    }
    if bossActiveAttack[1] = 6  {
        scr_Boss_Dash_Setup();
        bossPatternCount = 40;
        bossPatternCountMax = bossPatternCount;
        bossPatternCooldown = 1;
        bossPatternCooldownMax = 1;
        bossActiveAttackDuration[1] = 15 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 60 + (40 * irandom(1))
		
		var bossdirection = scr_Soul_Point();
        bossMaxDashSpeed = 7.5 * bossmovespeed;
		bossDashSpeed = 0;
    }
}

#endregion


#region /// Active Attack Code ///
//////////////////////////

    scr_Default_Attack_Settings();
    bullet_type = obj_Basic_Bullet;
    bullet_sprite = spr_Glowy_Purple_Shot;
    bullet_speed = bossbulletspeed;
    bullet_power = bosspower * 1;
    bullet_direction = (-5 + random(10)) / bossaccuracy;
    bullet_lifespan = 120 + random(90);
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;

if bossActiveAttackDelay[1] <= 0 {
        
    
}

#endregion

#region /// Active Attack Pattern Code

scr_Default_Attack_Settings();
    bullet_type = obj_Basic_Bullet;
    bullet_sprite = spr_Glowy_Purple_Shot;
    bullet_speed = bossbulletspeed;
    bullet_power = bosspower * 1;
    bullet_direction = (-5 + random(10)) / bossaccuracy;
    bullet_lifespan = 120 + random(90);
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;
    
if bossActiveAttackDelay[1] <= 0 and bossPatternCooldown <= 0 and bossPatternCount > 0 {
    
	if bossActiveAttack[1] = 1 {
		scr_Boss_Stretch("Horizontal",0.4);
		
        bullet_speed = bossbulletspeed * 1.5;
		bullet_count = 2;
		bullet_direction = direction;
		bullet_spread = 180;
		bullet_lifespan = 300;
		
		repeat(3) {
			scr_Just_Shoot();
			bullet_speed += bossbulletspeed * 0.75;
		}
    }
	
    if bossActiveAttack[1] = 2 {
		scr_Boss_Stretch("Horizontal",0.3);
		
		bullet_type = obj_Speed_UpDown_Bullet;
        bullet_speed = bossbulletspeed * 2.5;
		bullet_count = 2;
		bullet_direction = direction;
		bullet_spread = 180;
		bullet_lifespan = 300;
		
		scr_Just_Shoot();
    }
	
	if bossActiveAttack[1] = 6 {
		
		//if bossSizeY > 0.7 {
			scr_Boss_Stretch("Horizontal",0.03);
		//}
        
		scr_Boss_Dash_Movement(15,5);
		speed = bossDashSpeed;
        direction = bossDashDirection;
		
		if bossPatternCount = bossPatternCountMax {
	        bullet_type = obj_Basic_Red_Bullet;
	        bullet_sprite = spr_Grey_Shot;
	        bullet_count = 10;
	        bullet_spread = 36;
	        bullet_lifespan = 150;
	        bullet_direction = (random(36));
	        bullet_speed = bossbulletspeed * 2.5;
	        scr_Just_Shoot();
	        bullet_lifespan = 300;
			bullet_direction += 18;
	        bullet_speed = bossbulletspeed * 1.5;
	        scr_Just_Shoot();
		}
    }
    
    bossPatternCount -= 1;
    bossPatternCooldown += bossPatternCooldownMax;
}

#endregion


#region /// Active Attack Post ///
//////////////////////////
   
if bossActiveAttackDuration[1] <= 0 { 
    bossActiveAttack[1] = 0;
}

#endregion

#region /// Boss Sprite

scr_Boss_Size_Lerp(0.15);

if (bossActiveAttack[1] != 0) {
	sprite_index = spr_Dream_Crawler_Part_Blink;
	if image_index > 5 {
		image_index = 5;	
	}
	bossdefense = 0;
} else {
	sprite_index = spr_Dream_Crawler_Part_Blink;
	if image_index > 3 {
		image_index = 3;	
	}
	bossdefense = 12;
}

#endregion

scr_Boss_Soul_Hitbox(sprite_index);