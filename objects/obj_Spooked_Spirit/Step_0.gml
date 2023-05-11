/// @description  Boss Step Event

scr_Boss_Step();

//image_angle = direction;
trailindex += 0.2;

#region ///Passive Attack Prep

//if champ = 1 {
	speed = bossmovespeed * 0.5;
	direction = scr_Soul_Point();
//}

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
    bullet_lifespan = 120 + irandom(15);
    bullet_size = 0.65 + random(0.15);
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;
	bullet_image_speed = 0.2;

if bossPassiveAttack[1] = 1 {
	//bullet_blend = c_lime;
	bullet_depth = 10;
	boss_xoffset = -50 + random(100);
	boss_yoffset = -50 + random(100);
    scr_Offset_Normal_Shoot();    
}

bossPassiveAttack[1] = 0;
bossPassiveAttack[2] = 0;

#endregion


#region ///Active Attack Prep///
////////////////////////

if bossActiveAttackDelay[1] <= 0 and bossActiveAttackCooldown[1] <= 0 and bossActiveAttackDuration[1] <= 0 {
    if currentphase = 1 {
        bossActiveAttack[1] = choose(1,2,3);
    }
    if currentphase = 2 {
        bossActiveAttack[1] = choose(1,4);
    }
    if champ = 1 || champ = 2 {
        if currentphase = 1 {
            bossActiveAttack[1] = choose(1,2,3,5);
        }
        if currentphase = 2 {
            bossActiveAttack[1] = choose(1,4,5);
        }
    }   
    if champ = 8 {
        if currentphase = 1 {
            bossActiveAttack[1] = choose(1,3,6);
        }
        if currentphase = 2 {
            bossActiveAttack[1] = choose(1,4,6);
        }
    }  
    bossActiveAttackDelay[1] = 10;   
    
    if bossActiveAttack[1] = 1  {
		scr_Boss_Attack_Time_Setup(3, 30, 35, 90, 30);
    }
    if bossActiveAttack[1] = 2  {
		
		scr_Boss_Attack_Time_Setup(150, 15, 1, 90, 30);
		
		var dashSpeed = 5.5;
        if champ = 8 {
            dashSpeed = 6.3;
        }
		scr_Boss_Dash_Setup(scr_Soul_Point(), 0, dashSpeed * bossmovespeed);
    }
    if bossActiveAttack[1] = 3  { 
		var attackCount = 10;
		if champ = 8 {
			attackCount = 18;
		}
		scr_Boss_Attack_Time_Setup(attackCount, 30, 10, 120, 30);
    }
    if bossActiveAttack[1] = 4  {
        scr_Boss_Teleport(); /*
		
		bossActiveAttackDelay[1] = 15;
		bossPatternCount = 2;
        bossPatternCooldown = 15;
        bossPatternCooldownMax = 60;
		
		bossActiveAttackCooldown[1] = 90 + random(30);
		bossActiveAttackDuration[1] = 15 + bossPatternCooldownMax * bossPatternCount; */
		scr_Boss_Attack_Time_Setup(2, 30, 60, 90, 30);
    }
    if bossActiveAttack[1] = 5  { /*
        bossActiveAttackDelay[1] = 15;
        bossActiveAttackDuration[1] = 15;
        bossActiveAttackCooldown[1] = (130 + (40 * irandom(1))); */
		
		scr_Boss_Attack_Time_Setup(1, 15, 60, 135, 30);
    }
    if bossActiveAttack[1] = 6  { /*
        scr_Boss_Dash_Setup();
        bossPatternCount = 40;
        bossPatternCountMax = bossPatternCount;
        bossPatternCooldown = 1;
        bossPatternCooldownMax = 1;
        bossActiveAttackDuration[1] = 15 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 60 + (40 * irandom(1))
		
		var bossdirection = scr_Soul_Point();
        bossMaxDashSpeed = 7.5 * bossmovespeed;
		bossDashSpeed = 0; */
		
		scr_Boss_Attack_Time_Setup(100, 15, 1, 90, 30, 1);
		scr_Boss_Dash_Setup(scr_Soul_Point(), 0, 5.5 * bossmovespeed);
    }
	
	bossPatternCountMax = bossPatternCount;
}

#endregion


#region /// Active Attack Code ///
//////////////////////////

    scr_Default_Attack_Settings();
    bullet_type = obj_Fright_Bullet;
    bullet_sprite = spr_Glowy_Dark_Shot;
    bullet_speed = bossbulletspeed;
    bullet_power = bosspower * 1;
    bullet_direction = (-5 + random(10)) / bossaccuracy;
    bullet_lifespan = 120 + random(90);
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;
	
	bullet_part = 1;
	bullet_part_sprite = spr_Soul_Big_Bit;
	bullet_part_area = 30;
	bullet_part_life = 15;
	bullet_part_color1 = make_color_rgb(0,0,0);
	bullet_part_color2 = c_white;
	bullet_part_frequency = 5;
	
	if champ = 2 {
		bullet_part_color1 = make_color_rgb(102,0,255);	
	}

if bossActiveAttackDelay[1] <= 0 {
        

    if bossActiveAttack[1] = 5 {
		scr_Boss_Stretch("Vertical",0.4);
		
        minion_count = 4;
        minion_type = obj_Spooked_Ghoul;
        if champ = 2 {
            minion_type = obj_Distorted_Ghoul;
			minion_count = 3;
        }
        minion_health = bossmaxhealth / 25;
        scr_Minion_Spawn();
		
		bossActiveAttack[1] = -5;
    }
    
}

#endregion

#region /// Active Attack Pattern Code
    
if bossActiveAttackDelay[1] <= 0 and bossPatternCooldown <= 0 and bossPatternCount > 0 {
    
	if bossActiveAttack[1] = 1 {
		scr_Boss_Stretch("Vertical",0.8);
		bullet_direction = (-90 + random(180)) / bossaccuracy
		
		bullet_part_life = 25;
		bullet_size = 1.15;
		
        bullet_speed = bossbulletspeed * (1.5 + random(0.5));
        if champ = 2 {
            bullet_type = obj_Distorter_Bullet;
            bullet_sprite = spr_Distorter_Shot;
            bullet_speed = bossbulletspeed * 1.15;
			
			bullet_part_color1 = make_color_rgb(102,0,255);
        }
		if champ = 8 {
			bullet_count = 3;
			bullet_spread = 90;
		}
        scr_Soul_Shoot();
    }
	
    if bossActiveAttack[1] = 2 {
		//if bossSizeY > 0.75 {
		if bossPatternCount mod 15 = 0 {
			scr_Boss_Stretch("Horizontal",0.15);
		}
		
        scr_Boss_Dash_Movement(45,12);
		
		speed = bossDashSpeed;
        direction = bossDashDirection;
		
		if point_distance(x,y,obj_Soul_Parent.perX, obj_Soul_Parent.perY) > 400 {
			bossDashDirection = scr_Soul_Point();
		}
		
		// todo: make dash horitzontal by like a tolerance of 30 degrees
		bossDashDirection = scr_Keep_Horizontal(bossDashDirection, 30);
		
    }
	
	if bossActiveAttack[1] = 3 {
		scr_Boss_Stretch("Vertical",0.5);
		
        bullet_type = obj_Wandering_Bullet;
        bullet_count = 1;
		bullet_direction = random(360);
        bullet_spread = 45;
        bullet_lifespan = 400;
        bullet_speed = bossbulletspeed * (1.2 + random(0.4));
        if champ = 2 {
            bullet_type = obj_Homing_Bullet;
            bullet_sprite = spr_Glowy_Purple_Shot;
            bullet_lifespan = 185;
            bullet_speed = bossbulletspeed * 1.75;
        }
		if champ = 8 {
			bullet_speed = bossbulletspeed * 1.45;	
		}
        scr_Just_Shoot();
    }
	
	if bossActiveAttack[1] = 4 {
		scr_Boss_Stretch("Vertical",1);
		
        bullet_type = obj_Wandering_Bullet;
        bullet_count = 4;
        bullet_spread = 15;
        bullet_lifespan = 400;
        bullet_speed = bossbulletspeed * 1.8;
        if champ = 2 {
            bullet_type = obj_Distorter_Bullet;
            bullet_sprite = spr_Distorter_Shot;
            bullet_count = 2;
            bullet_spread = 180;
            bullet_lifespan = 133;
            bullet_speed = bossbulletspeed * 1.8;
        }
        scr_Soul_Shoot();
		if champ = 8 {
			bullet_count = 3;
			bullet_speed = bossbulletspeed * 1.3;
			scr_Soul_Shoot();
		}
		
    }
	
	if bossActiveAttack[1] = 6 {
		
		//if bossSizeY > 0.7 {
			scr_Boss_Stretch("Horizontal",0.03);
		//}
        
		scr_Boss_Dash_Movement(45,5);
		speed = bossDashSpeed;
        direction = bossDashDirection;
		
		if point_distance(x,y,obj_Soul_Parent.perX, obj_Soul_Parent.perY) > 400 {
			bossDashDirection = scr_Soul_Point();
		}
		
		bossDashDirection = scr_Keep_Horizontal(bossDashDirection, 30);

		if bossPatternCount = bossPatternCountMax - 5 || bossPatternCount = 1 {
			scr_Boss_Stretch("Horizontal",0.2);
	        bullet_type = obj_Basic_Red_Bullet;
	        bullet_sprite = spr_Grey_Shot;
	        bullet_count = 8;
	        bullet_spread = 45;
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

#region /// Boss Sprite Code

scr_Boss_Size_Lerp_Dir(0.15);

scr_Boss_Two_Face_Direction();

//if champ = 0 {
if bossActiveAttack[1] = 2 || bossActiveAttack[1] = 6 { // Sonic Attack
	/* sprite_index = spr_Spooky_Spirit_Dash;
	if bossActiveAttackDuration[1] > 10 and image_index > 3 {
		image_index = 3;
	} */
	scr_Boss_Attack_Sprite(spr_Spooky_Spirit_Dash, 10, 3, 3);
	bossHeight += bossDashHeightVelocity;
	y -= bossDashHeightVelocity;
	if bossHeight > 60 {
		bossDashHeightVelocity = -3;
	} else if bossHeight < 25 {
		bossDashHeightVelocity = 3;
	}
} else if bossActiveAttack[1] = 1 || bossActiveAttack[1] = 3 || bossActiveAttack[1] = 4 || bossActiveAttack[1] = -1 || bossActiveAttack[1] = -3 || bossActiveAttack[1] = -4 {
	scr_Boss_Attack_Sprite(spr_Spooky_Spirit_Shoot, 15, 5, 7);
	if bossHeight < 60 {
		bossHeight++;
		y--;
	}
} else { // Default
	sprite_index = spr_Spooky_Spirit;
}
//}

#endregion

scr_Boss_Soul_Hitbox(sprite_index);