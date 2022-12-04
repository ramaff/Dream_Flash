/// @description  Boss Step Event

scr_Boss_Step();

scr_Boss_Two_Face_Direction();

scr_Spirit_Outside_View();

var bossdirection = scr_Soul_Point();
    speed = 0.65 * bossmovespeed;
    direction = bossdirection;

///Passive Attack Prep

if bossPassiveAttackDelay[1] <= 0 and bossPassiveAttackCooldown[1] <= 0 {
        bossPassiveAttack[1] = 1;
        bossPassiveAttackCooldown[1] = 1;
        bossPassiveAttackDelay[1] = 0;
}

/*
if bossPassiveAttackDelay[2] <= 0 and bossPassiveAttackCooldown[2] <= 0 {
    if tier >= 2 and currentphase = 2 {
        bossPassiveAttack[2] = 1;
        bossPassiveAttackCooldown[2] = 15 + random(10);
        bossPassiveAttackDelay[2] = 0;
        if tier >= 3 {
            bossPassiveAttackCooldown[2] -= 5;
        }
    }
}
*/

/* */
///Passive Attack Code   

if currentphase = 2 {
	if bossActiveAttack[1] = 0 {
	    var bossdirection = scr_Soul_Point() + 180;
	    speed = 1 * bossmovespeed;
	    direction = bossdirection;
	} else {
		speed = 0.05 * bossmovespeed;
		direction = bossPointDirection;
	}
}

    scr_Default_Attack_Settings();
    bullet_type = obj_Basic_Bullet;
    bullet_sprite = spr_Glowy_Loopy_Bullet;
    bullet_speed = bossbulletspeed * (1.05 + random(0.09));
    bullet_power = bosspower;
    bullet_direction = (-5 + random(10)) / bossaccuracy;
    bullet_lifespan = 900;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;
    bullet_image_speed = 0.5
    
if bossPassiveAttack[2] = 1 {
    bullet_count = 1;
    bullet_sprite = spr_Light_Loopy_Bullet
    bullet_type = obj_Fake_Bullet;
    bossX = x;
    bossY = y;
    bullet_direction = point_direction(x,y,bossX,bossY) + (-40 + random(80)) / bossaccuracy;
    scr_Outside_Shoot_More_Life();
    
    bullet_count = 1;
    bullet_sprite = spr_Glowy_Loopy_Bullet
    bullet_type = obj_Loopy_Bullet;
    bossX = x;
    bossY = y;
    bullet_direction = point_direction(x,y,bossX,bossY) + (-40 + random(80)) / bossaccuracy;
    scr_Outside_Shoot_More_Life(); 
}

bossPassiveAttack[1] = 0;
bossPassiveAttack[2] = 0;

/* */
///Active Attack Prep

if bossActiveAttackDelay[1] <= 0 and bossActiveAttackCooldown[1] <= 0 and bossActiveAttackDuration[1] <= 0 {
    
    if currentphase = 2 {
        bossActiveAttack[1] = choose(1,2);
        bossActiveAttackDelay[1] = 10;
        if tier >= 2 {
            bossActiveAttack[1] = choose(1,2,3,4);
        }
    }
    bossActiveAttackDelay[1] = 30;
	
	var min_teleport_dist = 150;
	if tier >= 2 {
		min_teleport_dist = 225;	
	}
	
    if bossActiveAttack[1] = 1 {
		scr_Boss_Teleport_Near(min_teleport_dist, min_teleport_dist + 50);
		scr_Boss_Stretch("Horizontal", 0.2);
        bossActiveAttackCooldown[1] = (180 + random(30));
        bossPatternCount = 18;
        bossPatternCooldown = 38;
		if tier >= 2 {
			bossPatternCount -= 6;
            bossPatternCount += 3 * tier;
			bossPatternCooldown -= 1;
        }
        bossPatternCooldownMax = 8;
        bulletdirection = random(360);
		bossPointDirection = scr_Soul_Point();
        bossPatternDirection = bossPointDirection - 90;
		bossPatternDirection2 = bossPointDirection + 90;
		bossPatternDirection3 = bossPointDirection - 135;
		bossPatternDirection1 = bossPointDirection + 135;
        bossActiveAttackDuration[1] = 15 + bossPatternCooldownMax * bossPatternCount;
    }
    if bossActiveAttack[1] = 2 {
		scr_Boss_Teleport_Near(min_teleport_dist, min_teleport_dist + 50);
		scr_Boss_Stretch("Horizontal", 0.2);
        bossActiveAttackCooldown[1] = (180 + random(30));
        bossPatternCount = 4;
        bossPatternCooldown = 60;
        if tier >= 1 {
            bossPatternCount += 2;
            bossPatternCooldown -= 8;
        }
        if tier >= 2 {
            bossPatternCount += 2;
            bossPatternCooldown -= 7;
        }
		bossPointDirection = scr_Soul_Point();
        bossPatternCooldownMax = bossPatternCooldown;
        bulletdirection = random(360);
        bossPatternDirection = bulletdirection;
        bossActiveAttackDuration[1] = 15 + bossPatternCooldownMax * bossPatternCount;
    }
    if bossActiveAttack[1] = 3 {
		scr_Boss_Teleport_Near(min_teleport_dist, min_teleport_dist + 50);
		scr_Boss_Stretch("Horizontal", 0.2);
        bossActiveAttackCooldown[1] = (150 + random(30));
        bossPatternCount = 9;
        bossPatternCooldown = 31;
        bossPatternCooldownMax = 36;
        bulletdirection = random(360);
        bossPatternDirection = bulletdirection;
		bossPointDirection = scr_Soul_Point();
        bossActiveAttackDuration[1] = 15 + bossPatternCooldownMax * bossPatternCount;
    }
    if bossActiveAttack[1] = 4 {
		scr_Boss_Teleport_Near(min_teleport_dist, min_teleport_dist + 50);
		scr_Boss_Stretch("Horizontal", 0.2);
        bossActiveAttackCooldown[1] = (160 + random(30));
        bossPatternCount = 3;
        bossPatternCooldown = 35;
        bossPatternCooldownMax = 105;
        bulletdirection = random(360);
        bossPatternDirection = bulletdirection;
		bossPointDirection = scr_Soul_Point();
        bossActiveAttackDuration[1] = 15 + bossPatternCooldown * bossPatternCount;
    }
    
}


/* */
/// Active Attack Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Vanity_Soul_Shoot_Bullet;
    bullet_sprite = spr_Vanity_Ball;
    bullet_speed = bossbulletspeed;
    bullet_power = bosspower * 2;
    bullet_direction = (-5 + random(10)) / bossaccuracy;
    bullet_lifespan = 600;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;

if bossActiveAttackDelay[1] <= 0 {        
    
}

/* */
/// Active Attack Pattern Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Basic_Bullet;
    bullet_sprite = spr_Glowy_Loopy_Bullet;
    bullet_speed = bossbulletspeed;
    bullet_power = bosspower;
    bullet_direction = (-5 + random(10)) / bossaccuracy;
    bullet_lifespan = 300;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;
    bullet_image_speed = 0.5

if bossActiveAttackDelay[1] <= 0 and bossPatternCooldown <= 0 and bossPatternCount > 0 {
        
    if bossActiveAttack[1] = 1 {
		scr_Boss_Stretch("Vertical", 0.1);
		
        bullet_type = obj_Paranoia_Bullet;
        bullet_sprite = spr_Glowy_Purple_Shot;
        bullet_lifespan = 450;
    
        bullet_speed = bossbulletspeed * (1.75 + random(0.05));
        bullet_count = 1;
		
		if tier >= 2 {
			bullet_type = obj_Paranoia_Bullet_2;	
		}
		
		bullet_direction = bossPatternDirection;
        scr_Just_Shoot();
		bullet_direction = bossPatternDirection2;
		scr_Just_Shoot();
		
		bullet_speed = bossbulletspeed * (1.15 + random(0.05));
		//bullet_sprite = spr_Glowy_Dreamy_Shot;
		
		bullet_direction = bossPatternDirection3;
        scr_Just_Shoot();
		bullet_direction = bossPatternDirection1;
		scr_Just_Shoot();
		
		bossPatternDirection1 += 18;
		bossPatternDirection3 -= 18;
		if bossPatternCount mod 24 >= 12 {
			bossPatternDirection += 16;
			bossPatternDirection2 -= 16;
			
		} else {
			bossPatternDirection -= 16;
			bossPatternDirection2 += 16;
		}
    }
    if bossActiveAttack[1] = 2 {
		scr_Boss_Stretch("Vertical", 0.1);
		
        bullet_speed = bossbulletspeed * (0.9 + random(0.1));
        if tier >= 2 {
            bullet_speed += bossbulletspeed * 0.1;
        }
		bullet_lifespan = 180;
		bullet_direction = random(360);
		
		if tier < 2 {
			for(var i = 0; i < 40; i++) {
			
				if i mod 8 >= 4 {
					bullet_sprite = spr_Light_Loopy_Bullet
					bullet_type = obj_Fake_Bullet;
				} else {
					bullet_sprite = spr_Glowy_Loopy_Bullet
					bullet_type = obj_Loopy_Bullet;
				}
			
				scr_Just_Shoot();
				bullet_direction += 360 / 40;
			}
		} else {
			for(var i = 0; i < 50; i++) {
			
				if i mod 5 = 0 {
					bullet_direction -= 360 / 40;	
				}
				if i mod 10 >= 5 {
					bullet_sprite = spr_Light_Loopy_Bullet
					bullet_type = obj_Fake_Bullet_2;
				} else {
					bullet_sprite = spr_Glowy_Loopy_Bullet
					bullet_type = obj_Loopy_Bullet_2;
				}
			
				scr_Just_Shoot();
				bullet_direction += 360 / 40;
			}
		}
		
		/*
        bullet_direction = random(360);
        bullet_count = 8;
        if tier >= 1 {
            bullet_count += 2;
        }
        if tier >= 2 {
            bullet_count += 2;
        }
        bullet_spread = 360 / bullet_count;
        bullet_sprite = spr_Light_Loopy_Bullet
        bullet_type = obj_Fake_Bullet;
        scr_Just_Shoot();
        
        bullet_count = 8;
        if tier >= 1 {
            bullet_count += 2;
        }
        if tier >= 2 {
            bullet_count += 2;
        }
        bullet_direction += 180 / bullet_count;
        bullet_sprite = spr_Glowy_Loopy_Bullet
        bullet_type = obj_Loopy_Bullet;
        scr_Just_Shoot();
		*/
    }
    if bossActiveAttack[1] = 3 {
		scr_Boss_Stretch("Vertical", 0.1);
		
        bullet_type = obj_Paranoia_Mine_Bullet;
        bullet_sprite = spr_Paranoia_Bullet;
        bullet_lifespan = 330;
        bullet_power = bosspower * 1;
    
        bullet_speed = bossbulletspeed * (1.05 + random(0.7));
        bullet_direction = bossPatternDirection;
        bullet_count = 1;
        bullet_spread = 360 / bullet_count;
        scr_Just_Shoot();
    }
    
    if bossActiveAttack[1] = 4 {
		scr_Boss_Stretch("Vertical", 0.4);
		
        bullet_type = obj_Paranoia_Shotgun_Bullet;
        bullet_sprite = spr_Paranoia_Bullet;
        bullet_lifespan = 450;
        bullet_power = bosspower * 2;
        
        bullet_count = 6;
        bullet_spread = 45;
        bullet_speedfac_min = 1.5;
        bullet_speedfac_add = 0.6;
        bullet_timefac_min = 0.9;
        bullet_timefac_add = 0.4;
        
        scr_Soul_Shoot_Vomit();
    }
    
    bossPatternCount -= 1;
    bossPatternCooldown += bossPatternCooldownMax;
}

/* */
/// Active Attack Post
   
if bossActiveAttackDuration[1] <= 0 { 
    bossActiveAttack[1] = 0;
    bossActiveAttack[2] = 0;
}

scr_Spirit_Outside_View();

/* */
/*  */
#region /// Boss Sprite

scr_Boss_Size_Lerp_Dir(0.15);

if tier < 2 {
	scr_Masked_Spirit_Sprite(spr_Masked_Paranoia_Spirit,spr_Masked_Paranoia_Spirit_Attack);
} else {
	scr_Masked_Spirit_Sprite(spr_High_Paranoia_Spirit,spr_High_Paranoia_Spirit_Attack);
}
   
#endregion

scr_Boss_Soul_Hitbox(sprite_index);