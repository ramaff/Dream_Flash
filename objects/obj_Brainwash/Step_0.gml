/// @description  Boss Step Event

scr_Boss_Step();

#region ///Passive Attack Prep
/*
speed = bossmovespeed * 0.5;
direction = scr_Soul_Point();
*/
if bossPassiveAttackDelay[1] <= 0 and bossPassiveAttackCooldown[1] <= 0 {
		
    bossPassiveAttack[1] = 1;
    bossPassiveAttackCooldown[1] = 1 + 18 / (1 + speed);
    bossPassiveAttackDelay[1] = 2;
    
}

#endregion

#region ///Passive Attack Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Soap_Pool;
    bullet_sprite = spr_Soap_Pool;
    bullet_speed = bossbulletspeed * 0;
    bullet_power = bosspower * 0.15;
    bullet_direction = (-180 + random(360)) / bossaccuracy;
    bullet_lifespan = 180 + irandom(60);
    bullet_size = 1 + random(0.15);
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;
	bullet_image_speed = 0.2;
	bullet_depth = 250;

if bossPassiveAttack[1] = 1 {
	//bullet_blend = c_lime;
	boss_xoffset = -50 + random(100);
	boss_yoffset = random(100);
    scr_Offset_Normal_Shoot();
}

bossPassiveAttack[1] = 0;
bossPassiveAttack[2] = 0;

#endregion


#region ///Active Attack Prep///
////////////////////////

if bossActiveAttackDelay[1] <= 0 and bossActiveAttackCooldown[1] <= 0 and bossActiveAttackDuration[1] <= 0 {
    bossActiveAttack[1] = choose(1,1,2,3);
	var minThreshold = scr_Over_Minion_Count();
	if minThreshold = 1 {
		bossActiveAttack[1] = choose(1,1,2);
	}
	if currentphase = 2 and bossActiveAttack[1] = 1 {
		bossActiveAttack[1] = 4;	
	}
	//bossActiveAttack[1] = 2;
    
    if bossActiveAttack[1] = 1  { // Whack a mole
		scr_Boss_Attack_Time_Setup(3, 60, 150, 180, 30);
		alarm[0] = 30;
    }
    if bossActiveAttack[1] = 2  { // Field Scrub
		scr_Boss_Attack_Time_Setup(300, 20, 1, 90, 30);
		
		scr_Boss_Dash_Setup(scr_Soul_Point(), 0, 5 * bossmovespeed);
    }
    if bossActiveAttack[1] = 3  { // Cube Shots
		scr_Boss_Attack_Time_Setup(3, 25, 10, 150, 30);
    }
    if bossActiveAttack[1] = 4  { // Whack a mole 2
		scr_Boss_Attack_Time_Setup(3, 60, 150, 180, 30);
		alarm[0] = 30;
    }
	
	bossPatternCountMax = bossPatternCount;
}

#endregion


#region /// Active Attack Code ///
//////////////////////////

    scr_Default_Attack_Settings();
    bullet_type = obj_Bubble_Bullet;
    bullet_sprite = spr_Pink_Bubble_Bullet;
    bullet_speed = bossbulletspeed;
    bullet_power = bosspower * 1;
    bullet_direction = (-15 + random(30)) / bossaccuracy;
    bullet_lifespan = 210 + random(90);
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;

#endregion

#region /// Active Attack Pattern Code
    
if bossActiveAttackDelay[1] <= 0 and bossPatternCooldown <= 0 and bossPatternCount > 0 {
    
	if bossActiveAttack[1] = 1 {
		scr_Boss_Stretch("Vertical",0.8);
		
		if tier < 2 {
	        bullet_speed = bossbulletspeed * (2);
			bullet_count = 8;
		
			bullet_spread = 120;
		
	        bullet_speedfac_min = 0.5;
	        bullet_speedfac_add = 0.7;
	        bullet_timefac_min = 0.8;
	        bullet_timefac_add = 0.3;
		
	        scr_Soul_Shoot_Vomit();
		
			if tier >= 1 {
				bullet_count = 6;
				bullet_spread = 180 / bullet_count;
				bullet_speed = bossbulletspeed * (1.2);
			
				scr_Soul_Shoot();
			}
		} else {
			var sdir = -90;
			repeat(2) {
				var sfac = 0.6;
				ramount = 2 + tier * 4;
				repeat(ramount) {
					bullet_direction = sdir + random(30);
					bullet_count = 1;
					bullet_speed = bossbulletspeed * (sfac + random(0.1));
			
					scr_Soul_Shoot();
					sfac += (2 + ramount / 10) / ramount;
				}
				sdir = 60;
			}
		}
		
		scr_Default_Attack_Settings();
	    bullet_type = obj_Soap_Pool;
	    bullet_sprite = spr_Soap_Pool;
	    bullet_speed = bossbulletspeed * 0;
	    bullet_power = bosspower * 0.15;
	    bullet_direction = (-180 + random(360)) / bossaccuracy;
	    bullet_lifespan = 180 + irandom(60);
	    bullet_size = 1 + random(0.15);
	    bullet_count = 1;
	    bullet_spread = 0;
	    boss_radius = 0;
		bullet_image_speed = 0.2;
		bullet_depth = 250;
		
		var dist = scr_Soul_Distance();
		var ddir = scr_Soul_Point();
		var cdist = 50;
	
		repeat(15) {
			boss_xoffset = lengthdir_x(cdist, ddir);
			boss_yoffset = lengthdir_y(cdist, ddir);
			boss_xoffset += (-cdist + random(cdist * 2)) / 3;
			boss_yoffset += (-cdist + random(cdist * 2)) / 3;
		    scr_Offset_Normal_Shoot();
		
			cdist += dist / 10;
		}
		
		if bossPatternCount > 1 {
			alarm[0] = 115;
			alarm[1] = 85;
		}
		
    }
	
    if bossActiveAttack[1] = 2 {
		//if bossSizeY > 0.75 {
		if bossPatternCount mod 15 = 0 {
			scr_Boss_Stretch("Horizontal",0.15);
		}
		
        scr_Boss_Dash_Movement(60,45);
		
		if tier >= 1 and bossPatternCount mod (60 / tier) = 0 {
			bullet_count = 3;
			bullet_spread = 360 / bullet_count;
			bullet_speed = bossbulletspeed * (0.6 + random(0.4));
			bullet_direction = 35 + random(20) / bossaccuracy;
			
			scr_Just_Shoot();	
		}
		
		speed = bossDashSpeed;
        direction = bossDashDirection;
		
		var dir = scr_Soul_Point();
		var adif = angle_difference(dir, bossDashDirection);
		
		var turnspeed = (bossPatternCountMax - bossPatternCount) / 100;
		
		if abs(adif) <= turnspeed {
			bossDashDirection = dir;	
		}
		if adif < 0 {
			bossDashDirection -= turnspeed;
		} else if adif > 0 {
			bossDashDirection += turnspeed;
		}
		
    }
	
	if bossActiveAttack[1] = 3 {
		scr_Boss_Stretch("Vertical",0.5);
		
        minion_count = 1;
        minion_type = obj_Soap_Cube;
        minion_health = 10 + bossmaxhealth / 20;
		
		if tier >= 2 {
			minion_type = obj_Soap_Cube_2;	
		}
		
		minion_dir = 240 + random(60);
		minion_speed = 5 + random(3);
		
        scr_Minion_Spawn();
    }
	
	if bossActiveAttack[1] = 4 {
		scr_Boss_Stretch("Vertical",0.8);
		if tier < 2 {
	        bullet_speed = bossbulletspeed * (2);
			bullet_count = 15;
		
			bullet_spread = 360;
		
	        bullet_speedfac_min = 0.5;
	        bullet_speedfac_add = 0.7;
	        bullet_timefac_min = 0.8;
	        bullet_timefac_add = 0.3;
		
	        scr_Soul_Shoot_Vomit();
		}
		
		if tier = 1 {
			bullet_count = 10;
			bullet_spread = 360 / bullet_count;
			bullet_speed = bossbulletspeed * (1.2);
			
			scr_Soul_Shoot();
		}
		if tier >= 2 {
			var sdir = 37.5;
			repeat(4) {
				var sfac = 0.6;
				var ramount = 1 + (tier * 3);
				repeat(ramount) {
					bullet_direction = sdir + random(15);
					bullet_count = 1;
					bullet_speed = bossbulletspeed * (sfac + random(0.15));
			
					scr_Just_Shoot();
					sfac += (4 + ramount / 10) / ramount;
				}
				sdir += 90;
			}
		}
		
		
		scr_Default_Attack_Settings();
	    bullet_type = obj_Soap_Pool;
	    bullet_sprite = spr_Soap_Pool;
	    bullet_speed = bossbulletspeed * 0;
	    bullet_power = bosspower * 0.15;
	    bullet_direction = (-180 + random(360)) / bossaccuracy;
	    bullet_lifespan = 180 + irandom(60);
	    bullet_size = 1 + random(0.15);
	    bullet_count = 1;
	    bullet_spread = 0;
	    boss_radius = 0;
		bullet_image_speed = 0.2;
		bullet_depth = 250;

		dir = 0;
		repeat(4) {
			dir += 90;
			dist = 60;
			var ramount = 2 + (tier * 2);
			repeat(ramount) {
				boss_xoffset = lengthdir_x(dist, dir) - 100 + random(200);
				boss_yoffset = lengthdir_y(dist, dir) - 100 + random(200);
			    scr_Offset_Normal_Shoot();
				dist += 900 / ramount;
			}
		}
		
		
		if bossPatternCount > 1 {
			alarm[0] = 115;
			alarm[1] = 85;
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

scr_Boss_Size_Lerp_Dir(0.15, true);

//if champ = 0 {
if bossActiveAttack[1] = 1 || bossActiveAttack[1] = 4 {
	scr_Boss_Attack_Sprite(spr_Brainwash_Sink, 10, 14, 14);
} else if bossActiveAttack[1] = 2 {
	scr_Boss_Attack_Sprite(spr_Brainwash_Slide, 10, 4, 4);
} else if bossActiveAttack[1] = 3 {
	scr_Boss_Attack_Sprite(spr_Brainwash_Blow, 10, 5, 5);
} else { // Default
	sprite_index = spr_Brainwash;
}
//}

#endregion

scr_Boss_Soul_Hitbox(sprite_index);