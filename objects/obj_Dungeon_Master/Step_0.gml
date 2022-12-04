/// @description  Boss Step Event

scr_Boss_Step();

if state = states.phasing {
	exit;	
}

///Passive Attack Prep

if bossPassiveAttackDelay[1] <= 0 and bossPassiveAttackCooldown[1] <= 0 {
    if champ = 0 and currentphase = 2 {
        bossPassiveAttack[1] = 1;
        bossPassiveAttackCooldown[1] = 15;
        bossPassiveAttackDelay[1] = 0;
    }
}

///Passive Attack Code   

if bossPassiveAttack[1] = 1 {
}

bossPassiveAttack[1] = 0;
bossPassiveAttack[2] = 0;

///Active Attack Prep


if bossActiveAttackDelay[1] <= 0 and bossActiveAttackCooldown[1] <= 0 and bossActiveAttackDuration[1] <= 0 {
    
    bossActiveAttack[1] = choose(1,1,1,2);
    bossActiveAttackDelay[1] = 15;
    
    if currentphase = 2 {
		bossActiveAttack[1] = choose(3,3,3,4);
    }
	
	bossActiveAttackDelay[1] = 15;
	
    
    if bossActiveAttack[1] = 1 {
		jumpDirection = "Up";
		jumpHeight = 0;
		
		bossActiveAttackDelay[1] = 0;
		
        scr_Boss_Dash_Setup();
        bossPatternCount = 60;
        bossPatternCountMax = bossPatternCount;
        bossPatternCooldown = 10;
        bossPatternCooldownMax = 1;
		
		var bossdirection = scr_Soul_Point();
        bossDashDirection = bossdirection;
		
		scr_Leap_Distance_Calc(1 * bossmovespeed,5);
		
		bossDashSpeed = 0;
		state = states.jumping;
		
		bossActiveAttackDuration[1] = 60 + bossattackspeed * bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 90 + random(30);
    }
    if bossActiveAttack[1] = 2 {
		image_index = 0;
        bossActiveAttackCooldown[1] = (120 + random(30));
        bossPatternCount = 6;
		//bossActiveAttackDelay[1] = 0;
        bossPatternCooldown = bossActiveAttackDelay[1] + 15;
		bossPatternCooldownMax = 30;
		
		if tier >= 1 {
			bossPatternCount = 9;
			bossPatternCooldownMax = 20;
		}
		if tier >= 3 {
			bossPatternCount = 13;
			bossPatternCooldownMax = 18;
		}
		
        bulletdirection = random(360);
        bossPatternDirection = bulletdirection;
		bossPatternDirection2 = bulletdirection + 180;
        bossActiveAttackDuration[1] = 10 + bossPatternCooldownMax * bossPatternCount;
    }
    if bossActiveAttack[1] = 3 {
		scr_Boss_Dash_Setup();
        bossPatternCount = 30;
		bossPatternHop = 2;
		
        bossPatternCountMax = bossPatternCount;
        bossPatternCooldown = 1;
        bossPatternCooldownMax = 1;
        bossActiveAttackDuration[1] = 15 + bossattackspeed * bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 30 + random(15);
		
		if tier >= 1 {
			bossActiveAttackDuration[1] += 18;	
		}
		
		var bossdirection = scr_Soul_Point();
		
		bossPatternDirection = 0;
        bossDashDirection = bossdirection;
		bossMaxDashSpeed = (point_distance(x,y,obj_Soul_Parent.perX, obj_Soul_Parent.perY) - 50) / 30;
		bossDashSpeed = 0;
    }
	if bossActiveAttack[1] = 4 {
		image_index = 0;
        bossActiveAttackCooldown[1] = (120 + random(30));
        bossPatternCount = 16;
		//bossActiveAttackDelay[1] = 0;
        bossPatternCooldown = 12;
		bossPatternCooldownMax = 12;
		
		if tier >= 1 {
			bossPatternCount = 24;
		}
		if tier >= 2 {
			bossPatternCount = 36;
			bossPatternCooldownMax = 9;
		}
		if tier >= 3 {
			bossPatternCount = 48;
			bossPatternCooldownMax = 8;
		}
		
		var adisp = (-30 + random(60)) / bossaccuracy;
        bulletdirection = scr_Soul_Point() + adisp;
        bossPatternDirection = bulletdirection;
		bossPatternDirection2 = bulletdirection + 180;
        bossActiveAttackDuration[1] = 10 + bossPatternCooldownMax * bossPatternCount;
    }
    
}


/// Active Attack Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Hatred_Seeking_Bullet;
    bullet_sprite = spr_Boss_Ninja_Star;
    bullet_speed = bossbulletspeed;
    bullet_power = bosspower * 1;
    bullet_direction = (-5 + random(10)) / bossaccuracy;
    bullet_lifespan = 300;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;

if bossActiveAttackDelay[1] <= 0 {        
    
    
}

#region /// Active Attack Pattern Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Basic_Bullet;
    bullet_sprite = spr_Glowy_Enemy_Shot;
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
		
		scr_Boss_Dash_Movement(10,10);
		
		speed = bossDashSpeed;
        direction = bossDashDirection;
		
		scr_Jump_Movement(5);
		
		if bossPatternCount = 1 {
			scr_Boss_Stretch("Horizontal", 0.5);
			scr_Screen_Shake(7,10);	
			
			bullet_type = obj_Boss_Sword;
			bullet_sprite = spr_Boss_Sword;
			bullet_speed = bossbulletspeed * 1.25;
			bullet_size = 1;
			bullet_lifespan = 75;
			bullet_image_speed = 1;
			bullet_count = 1;
			
			var bxoffset = obj_Soul_Parent.perX - x;
			var byoffset = obj_Soul_Parent.perY - y;
			var ang = random(360);
			var dis = 50;
			
			repeat(4) {
				ang += 90; 
				bullet_direction = ang + 90;
				boss_xoffset = bxoffset + lengthdir_x(dis, ang);
				boss_yoffset = byoffset + lengthdir_y(dis, ang);
			
				scr_Offset_Normal_Shoot();
			}
			dis = 100;
			ang += 22.5;
			repeat(8) {
				ang += 45; 
				bullet_direction = ang + 90;
				boss_xoffset = bxoffset + lengthdir_x(dis, ang);
				boss_yoffset = byoffset + lengthdir_y(dis, ang);
			
				scr_Offset_Normal_Shoot();
			}
			var spikecolnum = 2;
			if tier >= 2 {
				spikecolnum = 6;	
			}
			if tier >= 1 {
				repeat(spikecolnum) {
					dis += 100;
					repeat(4) {
						ang += 90; 
						bullet_direction = ang;
						boss_xoffset = bxoffset + lengthdir_x(dis, ang);
						boss_yoffset = byoffset + lengthdir_y(dis, ang);
			
						scr_Offset_Normal_Shoot();
					}
				}
			}
			if tier >= 3 {
				dis += 100;
				repeat(16) {
					ang += 22.5; 
					bullet_direction = ang + 90;
					boss_xoffset = bxoffset + lengthdir_x(dis, ang);
					boss_yoffset = byoffset + lengthdir_y(dis, ang);
			
					scr_Offset_Normal_Shoot();
				}
			}
		}
    }
		
    if bossActiveAttack[1] = 2 {
		scr_Boss_Stretch("Horizontal", 0.2);
		
        bullet_speed = bossbulletspeed * 2;
		bullet_direction = bossPatternDirection;
		
		bullet_count = 5;
		bullet_spread = 40 / bullet_count;
		
		if tier < 2 {
			repeat(3) {
				bullet_direction += 120;
				scr_Just_Shoot();
			}
		} else {
			repeat(2) {
				bullet_direction += 180;
				scr_Just_Shoot();
			}
		}
		
		if tier >= 2 and (bossPatternCount mod 2 = 0) {
			bullet_type = obj_Homing_Bullet_Crescent;
			bullet_size = 1;
			bullet_count = 1;
			bullet_speed = bossbulletspeed * (0.7 + random(0.6));
			bullet_lifespan = 240;
			bullet_direction = -120 + random(240);	
			scr_Just_Shoot();
		}
		
		bossPatternDirection += 33;
    }
    if bossActiveAttack[1] = 3 {
		
		if bossPatternHop = 2 {
	        scr_Boss_Dash_Movement(5,5);
		
			speed = bossDashSpeed;
	        direction = bossDashDirection;
			
			if tier >= 2 {
				if bossPatternCount mod 3 = 0 {
					bullet_count = 1;
					bullet_type = obj_Accel_Accel_Bullet;
					bullet_sprite = spr_Enemy_Bullet_Spike;
					bullet_speed = bossbulletspeed * 0.75;
					
					bullet_direction = direction - 90 + ((6) * bossPatternCount);
					scr_Just_Shoot();
					
					bullet_direction = direction - 90 - ((6) * bossPatternCount);
					scr_Just_Shoot();
					
					if tier >= 3 {
						bullet_speed += bossbulletspeed * 0.5;
					
						bullet_direction = direction - 90 + ((6) * bossPatternCount);
						scr_Just_Shoot();
					
						bullet_direction = direction - 90 - ((6) * bossPatternCount);
						scr_Just_Shoot();
					}
				}
			}
		}
		if bossPatternCount = 1 and bossPatternHop = 2 {
			scr_Boss_Stretch("Horizontal", 0.4);
			bossPatternHop = 1;
			bossPatternCount = 10;
			bossPatternCountMax = 10;
			if tier >= 1 {
				bossPatternCount = 28;
				bossPatternCountMax = 28;
			}
		}
		if bossPatternHop = 1 {
			bullet_speed = bossbulletspeed * (1.5 + (0.025 * bossPatternCount));
			bullet_direction = bossDashDirection - (20 * bossPatternCount) + 120;
		
			bullet_count = 1;
			scr_Just_Shoot();
		}
		
    }
	if bossActiveAttack[1] = 4 {
		scr_Boss_Stretch("Horizontal", 0.2);
		
        bullet_speed = bossbulletspeed * 2;
		bullet_direction = bossPatternDirection;
		bullet_direction += -4 + ((bossPatternCount mod 3) * 4)
		bullet_lifespan = 240;
		
		bullet_count = 5;
		bullet_spread = 225 / bullet_count;
		var modnum = 16;
		if tier >= 1 {
			modnum = 12;	
		}
		
		if tier >= 3 {
			if bossPatternCount mod 8 = 4 {
				bullet_count = 10;
			}
			if bossPatternCount mod 8 = 0 {
				bullet_count = 15;	
			}
			bullet_spread = 225 / bullet_count;
		}
		
		if bossPatternCount mod modnum <= 2 and bossPatternCount mod modnum > 0 {
			bullet_count = 20;
			bullet_spread = 360 / bullet_count;
		}
		
		scr_Just_Shoot();
		
		bossPatternDirection = scr_Boss_Pattern_Turn_To_Soul(bossPatternDirection, 10);
    }
	
	bossPatternCount -= 1;
    bossPatternCooldown += bossPatternCooldownMax;
}

#endregion

/// Active Attack Post
   
if bossActiveAttackDuration[1] <= 0 { 
    bossActiveAttack[1] = 0;
    bossActiveAttack[2] = 0;
	speed = 0;
}

#region /// Boss Sprite

scr_Boss_Size_Lerp(0.15);

if bossActiveAttack[1] = 1 {
	sprite_index = spr_Dungeon_Master_Leap;
	if image_index > 5 and bossActiveAttackDuration[1] > 60 {
		image_index = 5;	
	}
	if image_index > 6 and bossActiveAttackDuration[1] > 10 {
		image_index = 6;	
	}
} else if bossActiveAttack[1] = 2 || bossActiveAttack[1] = 4 {
	sprite_index = spr_Dungeon_Master_Spin;
	if image_index > 7 and bossActiveAttackDuration[1] > 20 {
		image_index = 4;	
	}
} else if bossActiveAttack[1] = 3 {
	if bossDashDirection > 90 and bossDashDirection < 270 {
		image_xscale = -bossSizeX;
		image_yscale = bossSizeY;
	} else {
		image_xscale = bossSizeX;
		image_yscale = bossSizeY;
	}
	sprite_index = spr_Dungeon_Master_Swing;
	if image_index > 10 and bossActiveAttackDuration[1] > 10 {
		image_index = 10;
	}
} else {
	sprite_index = spr_Dungeon_Master;
}
image_speed = 1;

   
#endregion

scr_Boss_Soul_Hitbox(sprite_index);