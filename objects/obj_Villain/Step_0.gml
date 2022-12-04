/// @description  Boss Step Event

scr_Boss_Step();

scr_Room_Loop_Horizontal();

///Passive Attack Prep

if bossPassiveAttackDelay[1] <= 0 and bossPassiveAttackCooldown[1] <= 0 {
    var bossdirection = scr_Soul_Point();
    speed = 0.5 * bossmovespeed;
	if bossActiveAttack[1] != 0 {
		speed = 0.05 * bossmovespeed;	
	}
    direction = bossdirection;
    
}


///Passive Attack Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Phase_Bullet;
    bullet_sprite = spr_Purple_Shot;
    bullet_speed = 105;
    bullet_power = bosspower;
    bullet_direction = (-180 + random(360)) / bossaccuracy;
    bullet_lifespan = 6;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;

if bossPassiveAttack[1] = 1 {
    bullet_direction = bossHandDirection;
    bullet_count = 3;
    bullet_spread = 120;
    scr_Just_Shoot();    
    bossHandDirection += 1;
}

bossPassiveAttack[1] = 0;
bossPassiveAttack[2] = 0;



///Active Attack Prep

if bossActiveAttack[1] = 0 and bossActiveAttackDuration[1] <= 0 and bossActiveAttackCooldown[1] <= 0 and currentphase = 1{
    if distance_to_point(x,instance_nearest(x,y,obj_Soul_Parent).perY) <= 30 {
        bossActiveAttack[1] = 3;
        if champ = 1 {
            bossActiveAttack[1] = 4;
        }
        bossActiveAttackDelay[1] = 0;
        bossActiveAttackDuration[1] = 0;
        bossActiveAttackCooldown[1] = 0;
    }
}

if bossActiveAttackDelay[1] <= 0 and bossActiveAttackCooldown[1] <= 0 and bossActiveAttackDuration[1] <= 0 {
    if bossActiveAttack[1] = 3 {
		scr_Boss_Dash_Setup();
        bossActiveAttackDelay[1] = 15;
        bossPatternCount = 400;
        bossPatternCountMax = bossPatternCount;
        bossPatternCooldown = 1;
        bossPatternCooldownMax = 1;
        bossActiveAttackDuration[1] = 15 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 30 + random(15);
		
		var bossdirection = scr_Soul_Point();
		if champ != 1 {
	        bossdashorientation = 0;
			if bossdirection > 90 and bossdirection <= 270 {
				bossdashorientation = -1;
				bossdirection = 180
			} else {
				bossdashorientation = 1;
				bossdirection = 0
			}
			bossDashDirection = bossdirection;
		}
		direction = bossdirection;
		
		bossMaxDashSpeed = 6 * bossmovespeed;
		bossDashSpeed = 0;
    }
    if bossActiveAttack[1] = 4 {
        var bossdirection = scr_Soul_Point();
        speed = 0.03 * bossmovespeed;
		direction = bossdirection;
    
        bossActiveAttackDelay[1] = 30;
        bossPatternCount = 120;
        bossPatternCountMax = bossPatternCount;
        bossPatternCooldown = 1;
        bossPatternCooldownMax = 1;
		bossPatternDirection = direction;
        bossActiveAttackDuration[1] = 15 + bossPatternCooldownMax * bossPatternCount;
        
        bossActiveAttackCooldown[1] = 60 + random(30);
    }
}

if bossActiveAttackDelay[1] <= 0 and bossActiveAttackCooldown[1] <= 0 and bossActiveAttackDuration[1] <= 0 {
    bossActiveAttack[1] = choose(1,2);
    if currentphase = 2 {
        bossActiveAttack[1] = choose(2,5);
    }
	if bossActiveAttack[1] = 1 {
        bossActiveAttackCooldown[1] = (60 + random(30));
        bossPatternCount = 54;
        bossPatternCooldown = 3;
        bossPatternCooldownMax = bossPatternCooldown;
        bulletdirection = -90;
        bossPatternDirection = bulletdirection;
		bossPatternDirection2 = 90;
        bossActiveAttackDuration[1] = 15 + bossPatternCooldown * bossPatternCount;
    }
    if bossActiveAttack[1] = 2 {
        bossActiveAttackCooldown[1] = (60 + random(30));
        bossPatternCount = 16;
        bossPatternCooldown = 20;
        bossPatternCooldownMax = 4;
        bulletdirection = random(360);
        bossPatternDirection = bulletdirection;
        bossActiveAttackDuration[1] = 15 + bossPatternCooldownMax * bossPatternCount;
    }
    if bossActiveAttack[1] = 5 {
        
        var bossdirection = 270;
        speed = 0.03 * bossmovespeed;
		direction = 270;
    
        bossActiveAttackDelay[1] = 30;
        bossPatternCount = 600;
        bossPatternCountMax = bossPatternCount;
        bossPatternCooldown = 1;
        bossPatternCooldownMax = 1;
		bossPatternDirection = direction;
        bossActiveAttackDuration[1] = 15 + bossPatternCooldownMax * bossPatternCount;
		
		bossMaxDashSpeed = 2 * bossmovespeed;
		bossDashSpeed = 0;
        
        bossActiveAttackCooldown[1] = 60 + random(30);
    }
    bossPatternCountMax = bossPatternCount;
}


/// Active Attack Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Direction_Phase_Bullet;
    bullet_sprite = spr_Glowy_Green_Shot;
    bullet_speed = bossbulletspeed * 1.5;
    bullet_power = bosspower;
    bullet_direction = (-10 + random(20)) / bossaccuracy;
    bullet_lifespan = 300 + irandom(90);
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;
    
    if champ = 1 {
        bullet_sprite = spr_Projectile_Wall_Shot;
    }

if bossActiveAttackDelay[1] <= 0 {        
    
}

/// Active Attack Pattern Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Basic_Bullet;
    bullet_sprite = spr_Glowy_Enemy_Shot;
    bullet_speed = bossbulletspeed * 1.5;
    bullet_power = bosspower;
    bullet_direction = (-10 + random(20)) / bossaccuracy;
    bullet_lifespan = 400;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;
	
	if champ = 1 {
        bullet_sprite = spr_Projectile_Wall_Shot;
    }

if bossActiveAttackDelay[1] <= 0 and bossPatternCooldown <= 0 and bossPatternCount > 0 {
    
	if bossActiveAttack[1] = 1 {
		
		bullet_sprite = spr_Glowy_Ruby_Shot;
		
		if bossPatternCount mod 2 = 0 {
			scr_Boss_Stretch("Vertical", 0.2);	
		}
    
        bullet_speed = bossbulletspeed * (1.75 + random(0.05));
        bullet_direction = bossPatternDirection;
        bullet_count = 1;
        //bullet_spread = 360 / bullet_count;
		
		boss_xoffset = -20;
		boss_yoffset = -85;
        scr_Offset_Soul_Shoot();
		
		
		bullet_direction = bossPatternDirection2;
		boss_xoffset = 20;
		boss_yoffset = -85;
        scr_Offset_Soul_Shoot();
    
		if (bossPatternCount > 36) || (bossPatternCount <= 18) {
	        bossPatternDirection += 10;
			bossPatternDirection2 -= 10;
		} else {
			bossPatternDirection -= 10;
			bossPatternDirection2 += 10;
		}
		
		/*if bossPatternCount mod 4 = 0 {
			scr_Boss_Stretch("Vertical", 0.2);	
			
			bullet_sprite = spr_Glowy_Enemy_Shot;
			bullet_type = obj_Basic_Bullet;
			bullet_count = 12;
			bullet_speed = bossbulletspeed * (1.35 + random(0.05));
			bullet_direction = random(360);
			bullet_spread = 360 / bullet_count;
			
			if bossPatternCount mod 8 = 0 {
				boss_xoffset = -20;
				boss_yoffset = -85;
		        scr_Offset_Soul_Shoot();
			} else {
				boss_xoffset = 20;
				boss_yoffset = -85;
		        scr_Offset_Soul_Shoot();
			}
		}*/
    }
	
    if bossActiveAttack[1] = 2 {
		
		if champ = 0 {
			if bossPatternCount = bossPatternCountMax {
				scr_Boss_Stretch("Horizontal", 0.5);
				
				bullet_sprite = spr_Glowy_Ruby_Shot;
				bullet_count = 24;
				bullet_spread = 360 / bullet_count;
				bullet_speed = bossbulletspeed * (1.75 + random(0.05));
				bullet_direction = random(360);
				
				//scr_Just_Shoot();
				
				bullet_direction += bullet_spread / 2;
				//scr_Just_Shoot();
			}
		
			bullet_type = obj_Boss_Sword;
			bullet_sprite = spr_Boss_Sword;
			bullet_speed = bossbulletspeed * 1.25;
			bullet_size = 1;
			bullet_lifespan = 75;
			bullet_image_speed = 1;
			bullet_count = 1;
		
			var spikelen = 50 + (50 * (bossPatternCountMax - bossPatternCount));
		
			var scount = 8;
			var rdir = 0;
			for(var s = 0; s < scount; s++) {
			    boss_xoffset = lengthdir_x(spikelen, rdir + s * (360 / scount));
				boss_yoffset = lengthdir_y(spikelen, rdir + s * (360 / scount));
				
				bullet_direction = rdir + s * (360 / scount);
				scr_Offset_Normal_Shoot();
			}
		} else {
			bullet_count = 16;	
			bullet_spread = 360 / bullet_count;
			bullet_direction = bossPatternDirection;
			bullet_speed = bossbulletspeed * (1.65 + random(0.05));
			
			scr_Just_Shoot();
			
			bossPatternDirection += 10;
		}
    }
    if bossActiveAttack[1] = 3 {
		scr_Boss_Stretch("Horizontal",0.02)
		
        scr_Boss_Dash_Movement(60,60);
		
		speed = bossDashSpeed;
        direction = bossDashDirection;
		
		if bossPatternCount mod 50 < 10 and bossPatternCount < 340 {
			
			if bossPatternCount mod 50 = 0 {
				scr_Boss_Stretch("Horizontal", 0.4);
			}
			bullet_type = obj_Boss_Sword;
			bullet_sprite = spr_Boss_Sword;
			bullet_speed = bossbulletspeed * 1;
			bullet_size = 1;
			bullet_lifespan = 75;
			bullet_image_speed = 1;
		
			var spikelen = 800 + (bossPatternCount mod 100) - (90 * (bossPatternCount mod 50));
		
			var scount = 2;
			var rdir = 90;
			for(var s = 0; s < scount; s++) {
				boss_xoffset = lengthdir_x(-30 * (10 - (bossPatternCount mod 50)), direction) + lengthdir_x(spikelen, rdir + s * (360 / scount));
				boss_yoffset = lengthdir_y(spikelen, rdir + s * (360 / scount));
				
				bullet_direction = rdir + s * (360 / scount);
				scr_Offset_Normal_Shoot();
			}
		}
	}
    if bossActiveAttack[1] = 4 {
		bullet_type = obj_Phase_Bullet;
		bullet_size = 1.1;
        bullet_count = bossPatternAttackCount;
        bullet_spread = 0.1;
        bullet_speed = bossbulletspeed * (2);
        bullet_lifespan = 300;
		bullet_direction = 270 + ((-0.5 + random(1)) / other.bossaccuracy);
		
        scr_Spread_Top_Rain_Gap(bossPatternGap);
		
		if frac((bossPatternCount + 3) / 6) = 0 {
			scr_Spread_Top_Rain_Gap_Reverse(bossPatternGap);
		}
    }
	if bossActiveAttack[1] = 5 {
		//scr_Boss_Stretch("Horizontal",0.02)
		
        scr_Boss_Dash_Movement(60,60);
		
		speed = bossDashSpeed;
        direction = 270;
		
		if bossPatternCount mod 10 = 0 {
			
			scr_Boss_Stretch("Horizontal", 0.4);
			
			bullet_type = obj_Homing_Trail_Bullet;
			bullet_sprite = spr_Glowy_Ruby_Shot;
			bullet_speed = bossbulletspeed * 1;
			bullet_size = 1;
			bullet_lifespan = 300;
			bullet_image_speed = 1;
			
			if bossPatternCount mod 20 = 0 {
				boss_xoffset = 100;
				boss_yoffset = -50;
				bullet_direction = -30 + random(60);
				scr_Offset_Normal_Shoot();
			} else {
				boss_xoffset = -100;
				boss_yoffset = -50;
				bullet_direction = 150 + random(60);
				scr_Offset_Normal_Shoot();
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


if bossActiveAttack[1] != 3 {
	scr_Boss_Size_Lerp(0.15);
} else {
	scr_Boss_Size_Lerp_DirAlt(0.15);
}

if bossActiveAttack[1] = 2 {
    sprite_index = spr_Villain_Slam;
	if image_index >= 9 and bossActiveAttackDuration[1] > 5 {
		image_index = 9;	
	}
} else if bossActiveAttack[1] = 1 {
    sprite_index = spr_Villain_Vision;
	if image_index >= 3 and bossActiveAttackDuration[1] > 10 {
		image_index = 3;	
	}
} else if bossActiveAttack[1] = 3 {
    sprite_index = spr_Villain_Dash;
	if image_index >= 3 and bossActiveAttackDuration[1] > 10 {
		image_index = 3;	
	}
}else if bossActiveAttack[1] = 5 {
    sprite_index = spr_Villain_Beams;
	if image_index >= 3 and bossActiveAttackDuration[1] > 10 {
		image_index = 3;	
	}
} else {
	sprite_index = spr_Villain;
}

#endregion

scr_Boss_Soul_Hitbox(sprite_index);