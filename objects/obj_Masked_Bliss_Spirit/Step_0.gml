/// @description  Boss Step Event

scr_Boss_Step();

scr_Boss_Two_Face_Direction();

scr_Spirit_Outside_View();

if currentphase = 2 {
    var bossdirection = scr_Soul_Point();
    speed = 0.45 * bossmovespeed;
    direction = bossdirection;
} else {
	scr_Spirit_Move_Away();
}


///Passive Attack Prep

if bossPassiveAttackDelay[1] <= 0 and bossPassiveAttackCooldown[1] <= 0 {
    if champ = 0 and currentphase = 2 {
        bossPassiveAttack[1] = 1;
        bossPassiveAttackCooldown[1] = 1;
        bossPassiveAttackDelay[1] = 0;
    }
}


///Passive Attack Code   

if currentphase = 2 {
	if bossPassiveAttack[1] = 1 {
	    var bossdirection = scr_Soul_Point();
	    speed = 0.55 * bossmovespeed;
	    direction = bossdirection;
	}
if bossActiveAttack[1] = 3 and bossActiveAttackDuration[1] > 0 {
        speed = 0.1 * bossmovespeed;   
    }
}

if bossActiveAttack[1] = 3 {
    scr_Soul_Push_Pull(-1.5);
	if bossActiveAttackDuration[1] mod 3 = 0 {
		var color = make_color_rgb(0, 255, 84);
		scr_Particle_Burst(obj_Weapon_Trail, spr_Soul_Big_Bit, color, color, 1, 12, 0, 360, 20, 0.4, 60, false)
	}
}

bossPassiveAttack[1] = 0;
bossPassiveAttack[2] = 0;

///Active Attack Prep

if bossActiveAttackDelay[1] <= 0 and bossActiveAttackCooldown[1] <= 0 and bossActiveAttackDuration[1] <= 0 {
    
    if currentphase = 2 {
        bossActiveAttack[1] = choose(1,3);
        bossActiveAttackDelay[1] = 10;
        if tier >= 2 {
            bossActiveAttack[1] = choose(1,3,4,5);
        }
    }
    
    if bossActiveAttack[1] = 1 {
		scr_Boss_Stretch("Horizontal", 0.2);
		
        bossActiveAttackCooldown[1] = (150 + random(30));
        bossPatternCount = 3
        bossPatternCooldown = 30;
        bossPatternCooldownMax = 90;
        if tier >= 1 {
            bossPatternCount = 4
            bossPatternCooldownMax -= 15;
        }
		if tier >= 2 {
			bossPatternCount = 5;
	        bossPatternCooldownMax = 60;
		}
        bulletdirection = random(360);
        bossPatternDirection = bulletdirection;
        bossActiveAttackDuration[1] = 90 + bossPatternCooldownMax * bossPatternCount;
    }
    if bossActiveAttack[1] = 2 {
		scr_Boss_Stretch("Horizontal", 0.2);
		
        bossActiveAttackCooldown[1] = (105 + random(30));
        bossActiveAttackDuration[1] = 15;
    }
    if bossActiveAttack[1] = 3 {
		scr_Boss_Stretch("Horizontal", 0.2);
		
        bossActiveAttackCooldown[1] = (150 + random(30));
        bossPatternCount = 6;
        bossPatternCooldown = 35;
        bossPatternCooldownMax = 35;
        if tier >= 1 {
            bossPatternCount = 8;
        }
		if tier >= 2 {
			bossPatternCooldownMax = 60;	
		}
        bossPatternCooldownMax = bossPatternCooldown;
        bulletdirection = random(360);
        bossPatternDirection = bulletdirection;
        bossActiveAttackDuration[1] = 15 + bossPatternCooldown * bossPatternCount;
    }
    if bossActiveAttack[1] = 4 {
		scr_Boss_Stretch("Horizontal", 0.2);
		
        bossActiveAttackCooldown[1] = (250 + random(30));
        bossActiveAttackDuration[1] = 15;
    }
    if bossActiveAttack[1] = 5 {
		scr_Boss_Stretch("Horizontal", 0.2);
		
        bossActiveAttackCooldown[1] = (180 + random(30));
        bossPatternCount = 15;
        bossPatternCooldown = 35;
        bossPatternCooldownMax = 35;
        bossActiveAttackDuration[1] = 15 + bossPatternCooldown * bossPatternCount;
    }
    
    if tier >= 1 {
        bossActiveAttackCooldown[1] -= 20;
    }
    
}


/// Active Attack Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Dimensional_Bliss_Shot;
    bullet_sprite = spr_Bliss_Bullet;
    bullet_speed = bossbulletspeed;
    bullet_power = bosspower * 2;
    bullet_direction = (-10 + random(20)) / bossaccuracy;
    bullet_lifespan = 600;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;

if bossActiveAttackDelay[1] <= 0 {        
    
    if bossActiveAttack[1] = 2 {
		scr_Boss_Stretch("Vertical", 0.4);
		
        bullet_type = obj_Bounce_Bliss_Shot;
        bullet_sprite = spr_Bounce_Bliss;
        bullet_count = 3;
        if tier >= 2 {
            bullet_count += 1;
        }
        bullet_spread = 45;
        bullet_speed = bossbulletspeed * (1.9 + random(0.4));
        scr_Soul_Shoot();
        
        bossActiveAttack[1] = 0;   
    }
    if bossActiveAttack[1] = 4 {
		scr_Boss_Stretch("Vertical", 0.4);
		
        bullet_count = 2;
        bullet_spread = 180;
        bullet_type = obj_Orbit_Bliss_Shot;
        bullet_sprite = spr_Orbit_Bliss;
		bullet_lifespan = 360;
        if tier >= 2 {
            bullet_count += 1;
        }
        bullet_speed = bossbulletspeed * (5 + random(0.5));
        scr_Orbit_Shoot(150,obj_Soul_Parent);
        
        bossActiveAttack[1] = 0;   
    }
    
}

/// Active Attack Pattern Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Speed_Up_Direction_Bullet;
    bullet_sprite = spr_Glowy_Green_Shot;
    bullet_speed = bossbulletspeed;
    bullet_power = bosspower * 1;
    bullet_direction = (-5 + random(10)) / bossaccuracy;
    bullet_lifespan = 300;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;

if bossActiveAttackDelay[1] <= 0 and bossPatternCooldown <= 0 and bossPatternCount > 0 {
    
	if bossActiveAttack[1] = 1 {
		scr_Boss_Stretch("Vertical", 0.4);
		
		if bossPatternCount mod 2 = 1 {
			bullet_type = obj_Dimensional_Bliss_Shot;
			bullet_sprite = spr_Bliss_Bullet;
	        bullet_count = 2;
	        bullet_spread = 25;
	        bullet_speed = bossbulletspeed * (2.2 + random(0.4));
	        scr_Soul_Shoot();
		} else {
			bullet_type = obj_Bounce_Bliss_Shot;
	        bullet_sprite = spr_Bounce_Bliss;
	        bullet_count = 3;
	        bullet_spread = 45;
	        bullet_speed = bossbulletspeed * (1.9 + random(0.4));
	        scr_Soul_Shoot();	
		}
        
    }
    if bossActiveAttack[1] = 3 {
		scr_Boss_Stretch("Vertical", 0.15);
		
        bullet_speed = bossbulletspeed * (0.9 + random(0.2));
        bullet_direction = bossPatternDirection;
        bullet_count = 10;
		bullet_crowd_direction = bullet_direction;
			bullet_crowd_speed = bossbulletspeed;
        if tier >= 1 {
            bullet_count += 4;
            bullet_speed += bossbulletspeed * 0.15;
        }
		if tier >= 2 {
			bullet_count = 6;
			bullet_spread = 360 / bullet_count;
			
	        bullet_type = obj_Spin_Expand_Bullet;
			scr_Just_Shoot();
	        bullet_type = obj_Spin_Expand_Bullet_Alt;
	        scr_Just_Shoot();
        } else {
			bullet_spread = 360 / bullet_count;
			scr_Just_Shoot();	
			bossPatternDirection += 12;
		}
    }
    if bossActiveAttack[1] = 5 {
		scr_Boss_Stretch("Vertical", 0.15);
		
		bullet_lifespan = 480;
        bullet_type = obj_Rising_Bliss_Shot;
        bullet_sprite = spr_Rising_Bliss_Bullet;
        bullet_power = bosspower * 1.5;
        bullet_speed = bossbulletspeed * (1.3 + random(0.4));
        bullet_direction = 90 + (-5 + random(10)) / bossaccuracy;
        bullet_count = 1;
        
    	scr_Spirit_Boss_BullFX_Pre();
        dir = -(bullet_spread * (bullet_count - 1) / 2);
        repeat(bullet_count) {
            dir = -(bullet_spread / 2) + random(bullet_spread);
            with instance_create((room_width / 2) - (global.roomSizeX / 2) + random(global.roomSizeX),3 * room_height / 4,bullet_type) {
                scr_Bullet_Shoot_Properties();
                //direction = other.bullet_direction + (other.dir) * ((40 + random(global.soulparanoia)) / 40);
                direction = other.bullet_direction + other.dir;
                scr_Spiritual_Stats_Boss_Bullet_Effects();
            }
        }
        
    }
    bossPatternCount -= 1;
    bossPatternCooldown += bossPatternCooldownMax;
}

/// Active Attack Post
   
if bossActiveAttackDuration[1] <= 0 { 
    bossActiveAttack[1] = 0;
    bossActiveAttack[2] = 0;
}


#region /// Boss Sprite

scr_Boss_Size_Lerp_Dir(0.15);

if tier < 2 {
	scr_Masked_Spirit_Sprite(spr_Masked_Bliss_Spirit,spr_Masked_Bliss_Spirit_Attack);
} else {
	scr_Masked_Spirit_Sprite(spr_High_Bliss_Spirit,spr_High_Bliss_Spirit_Attack);
}
   
#endregion

scr_Boss_Soul_Hitbox(sprite_index);