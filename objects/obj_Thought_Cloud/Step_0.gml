/// @description  Boss Step Event

scr_Boss_Step();

depth = -3;

#region ///Passive Attack Prep

if bossPassiveAttackDelay[1] <= 0 and bossPassiveAttackCooldown[1] <= 0 {
    if (champ = 0 || champ = 2) and currentphase = 2 {
        bossPassiveAttack[1] = 1;
        bossPassiveAttackCooldown[1] = 20;
        bossPassiveAttackDelay[1] = 0;
    }
    if champ = 1 {
        bossPassiveAttack[1] = 2;
        bossPassiveAttackCooldown[1] = 25;
        if currentphase = 2 {
            bossPassiveAttack[1] = 3;
            bossPassiveAttackCooldown[1] = 6;
        }
        bossPassiveAttackDelay[1] = 0;
    } /*
    if champ = 2 {
        bossPassiveAttack[1] = 4;
        bossPassiveAttackCooldown[1] = 20 + irandom(3);
        bossPassiveAttackDelay[1] = 0;
    }
	*/
}

#endregion


#region ///Passive Attack Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Rain_Drop_Bullet;
    bullet_sprite = spr_Water_Drop_Bullet;
    bullet_speed = bossbulletspeed * (0.8 + random(0.6));
    bullet_power = bosspower;
    bullet_direction = (-180 + random(360)) / bossaccuracy;
    bullet_lifespan = 300;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;

if bossPassiveAttack[1] = 1 {
    bullet_direction += (-180 + random(360)) / bossaccuracy;
	if champ = 2 { bullet_type = obj_Spin_Bullet; }
    scr_Just_Shoot();    
}
if bossPassiveAttack[1] = 2 {
	bullet_part = 2;
	bullet_part_sprite = spr_Bullet_Tear_Part;
	bullet_part_area = 25;
	bullet_part_life = 20;
	bullet_part_color1 = make_color_rgb(0,106,255);
	bullet_part_color2 = c_white;
	
    bullet_type = obj_Phase_Rain;
    bullet_sprite = spr_Tear_Drop_Bullet;
    bullet_speed = bossbulletspeed * (0.85 + random(0.5));
    bullet_direction = 270 + ((-5 + random(10)) / other.bossaccuracy);
    bullet_lifespan = 600;
    scr_Top_Rain();
}
if bossPassiveAttack[1] = 3 {
	bullet_part = 2;
	bullet_part_sprite = spr_Bullet_Tear_Part;
	bullet_part_area = 25;
	bullet_part_life = 20;
	bullet_part_color1 = make_color_rgb(0,106,255);
	bullet_part_color2 = c_white;
	
    bullet_type = obj_Phase_Rain;
    bullet_sprite = spr_Tear_Drop_Bullet;
    bullet_direction = 270 + ((-5 + random(10)) / other.bossaccuracy);
    bullet_speed = bossbulletspeed * (2.35 + random(0.6));
    bullet_lifespan = 450;
    scr_Soul_Top_Rain();  
}
if bossPassiveAttack[1] = 4 {
    bullet_speed = bossbulletspeed * (1.35 + random(0.75));
    if currentphase = 2 { bullet_type = obj_Spin_Bullet; }
    bullet_direction = bossPassivePatternDirection;
    scr_Just_Shoot();
    bossPassivePatternDirection += 13 + random(10);
}

bossPassiveAttack[1] = 0;
bossPassiveAttack[2] = 0;

#endregion

#region ///Active Attack Prep

if champ = 3 {
	speed = bossmovespeed * 0.75;
	direction = scr_Soul_Point();
}

if bossActiveAttackDelay[1] <= 0 and bossActiveAttackCooldown[1] <= 0 and bossActiveAttackDuration[1] <= 0 {
    speed = bossmovespeed * (0.75 + random(0.5));
    direction = random(360);
    if champ = 0 || champ = 2 {
        bossActiveAttack[1] = choose(1,2);
        bossActiveAttackDelay[1] = 31;
        bossActiveAttackCooldown[1] = (50 + random(15));
        bossPatternCooldown = 10;
        bossPatternCooldownMax = 10;
        
        bossPatternCount = 18 - (2 * bossActiveAttack[1]) + (2 * irandom(1));
		if champ = 2 {
			bossPatternCount += 6;	
		}
        bulletdirection = scr_Soul_Point();
        bossPatternDirection = bulletdirection;
        
		//scr_Boss_Stretch("Vertical", 0.15);
		
        bossActiveAttackDuration[1] = round((1 + bossPatternCooldown * bossPatternCount) / 24) * 24;
		bossActiveAttackDuration[1] = (1 + bossPatternCooldown * bossPatternCount);
		
		updowntick = 0;
    }
    if bossActiveAttackDelay[1] <= 0 and bossActiveAttackCooldown[1] <= 0 and bossActiveAttackDuration[1] <= 0
    if champ = 1 {
		speed = bossmovespeed * (0.75 + random(0.5));
		direction = random(360);
	
        bossActiveAttack[1] = 7;
        
        if currentphase = 2 { 
            bossActiveAttack[1] = 8; 
            scr_Boss_Attack_Time_Setup(1,20,0,20,5,0)
        } else {
			scr_Boss_Attack_Time_Setup(1,20,0,45,15,0)
		}
		
		scr_Boss_Stretch("Vertical", 0.15);
        
        direction = scr_Soul_Point();
    }
    if champ = 3 {
        bossActiveAttack[1] = choose(3,4);
        bossActiveAttackDelay[1] = 20;
        bossActiveAttackCooldown[1] = (30 + random(10));
        bossPatternCooldown = 8;
        bossPatternCooldownMax = 8;
        
        bossPatternCount = 20 + irandom(3);
        bulletdirection = scr_Soul_Point();
        bossPatternDirection = bulletdirection;
        
        if bossActiveAttack[1] = 4 {
            bossPatternCount -= 6;
            bossPatternDirection = random(360);
            bulletdirection = random(360);
            bossActiveAttackCooldown[1] += 40;
        }    
		
		//scr_Boss_Stretch("Vertical", 0.15);
        
        bossActiveAttackDuration[1] = 1 + bossPatternCooldown * bossPatternCount;
    }
    
    if champ = 8 {
		speed = bossmovespeed * (0.75 + random(0.5));
		direction = random(360);
		
        bossActiveAttack[1] = choose(5,6);
        bossActiveAttackDelay[1] = 20;
        bossActiveAttackCooldown[1] = (40 + random(10));
        bossPatternCooldown = 7;
        bossPatternCooldownMax = 7;
        
        bossPatternCount = 2 + irandom(3);
        bulletdirection = scr_Soul_Point();
        bossPatternDirection = bulletdirection;
		
		//scr_Boss_Stretch("Vertical", 0.15);
		
		if bossActiveAttack[1] = 5 {
            bossPatternCount = 16;
            bossPatternDirection = random(360);
            bulletdirection = random(360);
            bossActiveAttackCooldown[1] += 50;
            bossPatternCooldown = 10;
            bossPatternCooldownMax = 10;
        }    
        
        if bossActiveAttack[1] = 6 {
            bossPatternCount = 3;
            bossPatternDirection = random(360);
            bulletdirection = random(360);
            bossActiveAttackCooldown[1] += 50;
            bossPatternCooldown = 45;
            bossPatternCooldownMax = 45;
        }    
        
        bossActiveAttackDuration[1] = 1 + bossPatternCooldown * bossPatternCount;
    }
}

#endregion


#region /// Active Attack Code
    
    scr_Default_Attack_Settings(); 
    bullet_type = obj_Rain_Drop_Bullet;
    bullet_sprite = spr_Water_Drop_Bullet;
    bullet_speed = bossbulletspeed * (0.5 + random(0.5));
    bullet_power = bosspower;
    bullet_lifespan = 300;

if bossActiveAttackDelay[1] <= 0 {        
}

#endregion

#region /// Active Attack Pattern Code
    
    scr_Default_Attack_Settings(); 
    bullet_type = obj_Rain_Drop_Bullet;
    bullet_sprite = spr_Tear_Drop_Bullet;
    bullet_speed = bossbulletspeed * (0.9 + random(0.6));
    bullet_power = bosspower;
    bullet_lifespan = 300;

if bossActiveAttackDelay[1] <= 0 and bossPatternCooldown <= 0 and bossPatternCount > 0 {
        
    if bossActiveAttack[1] = 1 {
		if (bossPatternCount mod 2 = 0) {
			scr_Boss_Stretch("Horizontal",0.15);
		}
		
		bullet_speed = bossbulletspeed * (1.05 + random(0.6));
        bullet_direction = bossPatternDirection + (-15 + random(30)) / bossaccuracy;
        scr_Just_Shoot();
		if champ = 2 {
			if bossPatternCount = 3 || bossPatternCount = 13 {
				bullet_count = 8;
				bullet_spread = 45;
				bullet_speed = bullet_speed + bossbulletspeed * 0.55;
				
				bullet_type = obj_Zig_Zag_Bullet;
				bullet_sprite = spr_Lightning_Bullet;
				
				scr_Just_Shoot();
			}
		}
    }
    if bossActiveAttack[1] = 2 {
		if (bossPatternCount mod 2 = 0) {
			scr_Boss_Stretch("Horizontal",0.15);
		}
		
        bullet_direction = bossPatternDirection + (-15 + random(30)) / bossaccuracy;
        bullet_count = 4;
        bullet_spread = 90;
        scr_Just_Shoot();
		if champ = 2 {
			if bossPatternCount = 1 || bossPatternCount = 11 {
				bullet_count = 6;
				bullet_spread = 360 / bullet_count;
				bullet_speed = bullet_speed + bossbulletspeed * 0.3;
				scr_Just_Shoot();
				bullet_direction += 30;
				bullet_speed = bullet_speed + bossbulletspeed * 0.6;
				
				bullet_type = obj_Zig_Zag_Bullet;
				bullet_sprite = spr_Lightning_Bullet;
				scr_Just_Shoot();
			}
		}
    }
    if bossActiveAttack[1] = 3 {
		if (bossPatternCount mod 2 = 0) {
			scr_Boss_Stretch("Horizontal",0.15);
		}
		
        bullet_sprite = spr_Blood_Tear;
        bullet_direction = scr_Soul_Point();
        bullet_direction += (-10 + random(20)) / bossaccuracy;
        scr_Just_Shoot();
    }
    if bossActiveAttack[1] = 4 {
		if (bossPatternCount mod 2 = 0) {
			scr_Boss_Stretch("Horizontal",0.15);
		}
		
        bullet_sprite = spr_Blood_Tear;
        bullet_direction = bossPatternDirection + (-60 + random(120)) / bossaccuracy;
        bullet_count = 3;
        bullet_spread = 120;
        scr_Just_Shoot();
    }
    if bossActiveAttack[1] = 5 {
		if (bossPatternCount mod 2 = 0) {
			scr_Boss_Stretch("Horizontal",0.15);
		}
		
		bullet_count = 5;
		bullet_sprite = spr_Rainbow_Tear;
		
		bullet_direction = bossPatternDirection + (-15 + random(30)) / bossaccuracy;
        bullet_spread = 72;
        scr_Just_Shoot();
		
		if (bossPatternCount mod 5 = 0) {
		bullet_speed = bossbulletspeed * (3 + random(0.5));
		bullet_size = 1.4;
		bullet_direction = 90 + (-7.5 + random(15)) / bossaccuracy;
		bullet_spread = 4 + random(3);
		
        bullet_sprite = spr_Rainbow_Tear;
		bullet_type = obj_Rainbow_Trail_Tear;
		bullet_lifespan = 450;
	
        scr_Just_Shoot();
		
		}
		
    }
    if bossActiveAttack[1] = 6 {
		scr_Boss_Stretch("Horizontal",0.15);
		
        bullet_sprite = spr_Rainbow_Tear;
        bullet_direction = bossPatternDirection + (-36 + random(72)) / bossaccuracy;
        bullet_count = 5;
		bullet_spread = 72;
		bullet_speed = bossbulletspeed * 1;
		scr_Just_Shoot();
		bullet_speed = bossbulletspeed * 1.33;
		bullet_direction += -2 + random(4);
		bullet_count = 10;
		bullet_spread = 36;
		bullet_speed = bullet_speed - bossbulletspeed * 0.225;
		scr_Just_Shoot();
		bullet_count = 5;
		bullet_spread = 72;
		bullet_direction += 36 - 2 + random(4);
		bullet_speed = bullet_speed - bossbulletspeed * 0.225;
		scr_Just_Shoot();
    }
	
	if bossActiveAttack[1] = 7 {
		scr_Boss_Stretch("Horizontal",0.3);
		
		bullet_speed = bossbulletspeed * (1.05 + random(0.6));
        bullet_direction = bossPatternDirection + (-15 + random(30)) / bossaccuracy;
		
		bullet_count = 8;
	    bullet_spread = 75 / bossaccuracy;
	    bullet_speed = bossbulletspeed;
		
		bullet_speedfac_min = 0.8;
	    bullet_speedfac_add = 1.3;
	    bullet_timefac_min = 1;
	    bullet_timefac_add = 0;
		
        scr_Soul_Shoot_Vomit()
	}
	if bossActiveAttack[1] = 8 {
		scr_Boss_Stretch("Horizontal",0.15);
		
		bullet_speed = bossbulletspeed * (1.05 + random(0.6));
        bullet_direction = bossPatternDirection + (-15 + random(30)) / bossaccuracy;
		
		bullet_count = 3;
		bullet_spread = 360 / bullet_count;
		
        scr_Just_Shoot();
    }
	
	bossPatternCount -= 1;
    bossPatternCooldown += bossPatternCooldownMax;
}

#endregion

#region /// Active Attack Post
   
if bossActiveAttackDuration[1] <= 0 { 
    bossActiveAttack[1] = 0;
}
/*
if bossActiveAttackDuration[2] <= 0 { 
    bossActiveAttack[2] = 0;
} */

#endregion

#region /// Boss Sprite

if (bossActiveAttack[1] != 0 and bossActiveAttackDelay[1] < 0 and bossPatternCount > 0) || (updowntick mod 12 != 0){
	var projbossHeight = updown[round(updowntick) mod 12];
	updowntick += 0.25;	
	
	if projbossHeight != bossHeight {
		y -= projbossHeight - bossHeight;
		bossHeight = projbossHeight;
	}
}

scr_Boss_Size_Lerp(0.15);

if bossActiveAttack[1] != 0 {
	//if bossPatternCooldown <= 31 and bossPatternCooldown > 0 {
		sprite_index = spr_Thought_Cloud_Cry;
		image_speed = 1;
		scr_Boss_Attack_Sprite(spr_Thought_Cloud_Cry,10,5,5)
	//} else {
	//	image_index = 0;	
	//}
} else {
	image_index = 0;
	sprite_index = spr_Thought_Cloud;
}

#endregion

scr_Boss_Soul_Hitbox(sprite_index);