/// @description  Boss Step Event

scr_Boss_Step();

//image_angle = direction;

//if bossActiveAttack[1] = 2 and bossActiveAttackDuration[1] > 0 {
//    image_angle = point_direction(x,y,instance_nearest(x,y,obj_Soul).x,instance_nearest(x,y,obj_Soul).y);
//}

random_y = 0;

scr_Room_Loop_Everywhere();

///Active Attack Prep

if bossActiveAttackDelay[1] <= 0 and bossActiveAttackCooldown[1] <= 0 and bossActiveAttackDuration[1] <= 0 {
    bossActiveAttack[1] = choose(1,2,3,4);
    bossPhase = 0;
    if currentphase = 2 {
        bossActiveAttack[1] = choose(5,6);
        bossPhase = 1;
    }
    
        speed = (0.25 + random(0.25)) * bossmovespeed;
        direction = random(360);
        friction = 0;
    
    if bossActiveAttack[1] = 1 {
        scr_Boss_Dash_Setup();
        bossPatternCount = 115;
        bossPatternCountMax = bossPatternCount;
        bossPatternCooldown = 1;
        bossPatternCooldownMax = 1;
        bossActiveAttackDuration[1] = 15 + bossattackspeed * bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 60 + random(30);
		
		var bossdirection = scr_Soul_Point();
        bossDashDirection = bossdirection;
		bossMaxDashSpeed = 3 * bossmovespeed;
		bossDashSpeed = 0;
    }
    if bossActiveAttack[1] = 2 {
        bossActiveAttackDelay[1] = 10;
        bossPatternCount = 30;
        bossPatternCooldown = 5;
        bossPatternCooldownMax = 5;
        patterndirection = scr_Soul_Point();
        bossActiveAttackDuration[1] = 15 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 60 + random(30);
    }
    if bossActiveAttack[1] = 3 {
        bossActiveAttackDelay[1] = 10;
        bossPatternCount = 25;
        bossPatternCooldown = 5;
        bossPatternCooldownMax = 5;
        patterndirection = scr_Soul_Point();
        bossActiveAttackDuration[1] = 15 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 60 + random(30);
    }
    if bossActiveAttack[1] = 4 {
        bossActiveAttackDelay[1] = 10;
        bossPatternCount = 3;
        if champ = 8 || champ = 1 {
            bossPatternCount = 4;
        }
        bossPatternCooldown = 15;
        bossPatternCooldownMax = 45;
        patterndirection = scr_Soul_Point();
        bossActiveAttackDuration[1] = 15 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 60 + random(30);
    }
    if bossActiveAttack[1] = 5 {
        scr_Boss_Dash_Setup();
        bossPatternCount = 240;
        bossPatternCountMax = bossPatternCount;
        bossPatternCooldown = 1;
        bossPatternCooldownMax = 1;
        bossActiveAttackDuration[1] = 15 + bossattackspeed * bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 60 + random(30);
		
		var bossdirection = scr_Soul_Point();
        bossDashDirection = bossdirection;
		bossMaxDashSpeed = 4 * bossmovespeed;
		bossDashSpeed = 0;
    }
    if bossActiveAttack[1] = 6 {
        bossActiveAttackDelay[1] = 10;
        bossPatternCount = 2;
        bossPatternCooldown = 15;
        bossPatternCooldownMax = 90;
        patterndirection = scr_Soul_Point();
        bossActiveAttackDuration[1] = 15 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 90 + random(30);
    }
    bossPatternCountMax = bossPatternCount;
}


/// Active Attack Code
    
if bossActiveAttackDelay[1] <= 0 {
    
}

/// Active Attack Pattern Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Basic_Bullet;
    bullet_sprite = spr_Puck_Shot;
    bullet_speed = bossbulletspeed;
    bullet_power = bosspower * 1.5;
    bullet_direction = (-15 + random(30)) / bossaccuracy;
    bullet_lifespan = 300;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;
    bullet_image_speed = 0.25;

if bossActiveAttackDelay[1] <= 0 and bossPatternCooldown <= 0 and bossPatternCount > 0 {
        
	if bossActiveAttack[1] = 1 {
        scr_Boss_Dash_Movement(33,25);
		
		if bossPatternCount = 1 {
			scr_Boss_Stretch("Horizontal", 0.4);
			
			bullet_power = bosspower;
	        bullet_size = 0.85;
			bullet_count = 20;
			bullet_spread = 360 / bullet_count;
			bullet_speed = bossbulletspeed * 1.45;
			scr_Just_Shoot();
		}
		
		speed = bossDashSpeed;
        direction = bossDashDirection;
    }
		
    if bossActiveAttack[1] = 2 {
		if bossPatternCount mod 2 = 0 {
			scr_Boss_Stretch("Horizontal", 0.1);	
		}
        bullet_direction = patterndirection + (-75 + random(150)) / bossaccuracy;
        bullet_speed = bossbulletspeed * 1.65;
        if champ = 8 {
            bullet_type = obj_Speed_Up_Direction_Bullet;
            bullet_sprite = spr_Big_Fire_Shot;
            bullet_speed = bossbulletspeed * 0.66;
        }
        if champ = 1 {
            bullet_type = obj_Slight_Home_Bullet;
            bullet_sprite = spr_Homing_Puck;
        }
		if bossPatternCount mod 2 = 0 {
			bullet_type = obj_Dimensional_Bullet;	
			bullet_sprite = spr_Dimensional_Puck;
		}
		
        scr_Just_Shoot();
        alarm[1] = 1 + 5 / bossattack
    }
    if bossActiveAttack[1] = 3 {
		if bossPatternCount mod 2 = 0 {
			scr_Boss_Stretch("Horizontal", 0.1);	
		}
		
        bullet_direction = patterndirection + (-120 + random(120)) / bossaccuracy;
        bullet_power = bosspower;
        bullet_size = 0.85;
        bullet_count = 3;
        bullet_spread = 120;
        bullet_speed = bossbulletspeed * 1.55;
        if champ = 1 {
            bullet_type = obj_Dimensional_Bullet;
            bullet_sprite = spr_Dimensional_Puck;
            bullet_lifespan = 200;
        }
        if champ = 8 {
            bullet_type = obj_Speed_Up_Direction_Bullet;
            bullet_sprite = spr_Big_Fire_Shot;
            bullet_speed = bossbulletspeed * 0.66;
        }
        scr_Just_Shoot();
		if bossPatternCount = 1 {
			bullet_count = 20;
			bullet_spread = 360 / bullet_count;
			bullet_speed = bossbulletspeed * 1.45;
			scr_Just_Shoot();
		}
    }
    if bossActiveAttack[1] = 4 {
		scr_Boss_Stretch("Horizontal", 0.2);
			
        bullet_direction = patterndirection + (-15 + random(30)) / bossaccuracy;
        bullet_count = 8;
        bullet_spread = 360 / bullet_count;
        bullet_type = obj_Dimensional_Bullet;
        bullet_sprite = spr_Dimensional_Puck;
		bullet_speed = bossbulletspeed * 1.45;
        if champ = 8 {
            bullet_type = obj_Dimensional_Direction_Bullet;
            bullet_sprite = spr_Dimensional_Fire_Shot;
            bullet_speed += bossbulletspeed * 0.35;
        }
        bullet_lifetime = 600;
		if champ = 1 {
			bullet_lifetime = 750;	
		}
        scr_Just_Shoot();
    }
	
	if bossActiveAttack[1] = 5 {
        scr_Boss_Dash_Movement(60,25);
		
		if bossPatternCount = 1 {
			scr_Boss_Stretch("Horizontal", 0.4);
			
			bullet_power = bosspower;
	        bullet_size = 0.85;
			bullet_count = 20;
			bullet_spread = 360 / bullet_count;
			bullet_speed = bossbulletspeed * 1.45;
			scr_Just_Shoot();
		}
		
		speed = bossDashSpeed;
        direction = bossDashDirection;
    }
	
    if bossActiveAttack[1] = 6 {
		scr_Boss_Stretch("Horizontal", 0.4);
		
        bullet_direction = 45 + (-1 + random(2)) / bossaccuracy;
        bullet_power = bosspower;
        bullet_size = 0.85;
        bullet_count = 4;
		if champ = 8 {
			bullet_count = 16;
		}
        bullet_spread = 360 / bullet_count;
        bullet_type = obj_Dimensional_Bullet;
        bullet_sprite = spr_Dimensional_Puck;
        if champ = 8 {
            bullet_type = obj_Dimensional_Direction_Bullet;
            bullet_sprite = spr_Dimensional_Fire_Shot;
            bullet_speed += bossbulletspeed * 0.2;
        }
        bullet_lifetime = 600;
		if champ = 1 {
			bullet_lifetime = 900;	
		}
		var basebspd = 1 * bossbulletspeed;
		bullet_speed = basebspd;
        scr_Just_Shoot();
		
		/*
		if champ = 0 {
			bullet_speed = 0.85 * bossbulletspeed * 0.8;
			bullet_direction += 22.5;
			scr_Just_Shoot();
			bullet_speed = 0.85 * bossbulletspeed * 0.74;
			bullet_direction += 22.5;
			scr_Just_Shoot();
			bullet_speed = 0.85 * bossbulletspeed * 0.8;
			bullet_direction += 22.5;
			scr_Just_Shoot();
		}*/
		if champ = 0 || champ = 1 {
			bullet_speed = basebspd * 0.8475;
			bullet_direction += 15;
			scr_Just_Shoot();
			bullet_speed = basebspd * 0.77;
			bullet_direction += 15;
			scr_Just_Shoot();
			bullet_speed = basebspd * 0.74;
			bullet_direction += 15;
			scr_Just_Shoot();
			bullet_speed = basebspd * 0.77;
			bullet_direction += 15;
			scr_Just_Shoot();
			bullet_speed = basebspd * 0.8475;
			bullet_direction += 15;
			scr_Just_Shoot();
		}
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

#region /// Boss Sprite

scr_Boss_Size_Lerp_Dir(0.15);

if bossActiveAttack[1] = 1 || bossActiveAttack[1] = 5 {
    sprite_index = spr_Mass_Puck_Dash;
	if image_index >= 6 and bossActiveAttackDuration[1] > 20 {
		image_index = 6;	
	}
} else if bossActiveAttack[1] != 0 {
    sprite_index = spr_Mass_Puck_Shooting;
} else {
	sprite_index = spr_Mass_Puck;
}

#endregion

scr_Boss_Soul_Hitbox(sprite_index);