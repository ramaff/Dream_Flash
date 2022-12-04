/// @description  Boss Step Event

scr_Boss_Step();

if currentphase = 2 and !instance_exists(obj_Migraine_After_Image) {
	var num = 1;
	var targ = id;
	repeat(3) {
		with instance_create(x,y, obj_Migraine_After_Image) {
			target = targ;
			dist = 20;
			targ = id;
			image_xscale = other.image_xscale;
			image_yscale = other.image_yscale;
		}
		num++;
	}
}

///Passive Attack Prep

if bossPassiveAttackDelay[1] <= 0 and bossPassiveAttackCooldown[1] <= 0 {
    if champ = 1 and currentphase = 2 {
        bossPassiveAttack[1] = 1;
        bossPassiveAttackCooldown[1] = 10 + irandom(5);
        bossPassiveAttackDelay[1] = 1;
    }
}


///Passive Attack Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Infatuation_Drop_Bullet;
    bullet_sprite = spr_Blood_Tear;
    bullet_speed = bossbulletspeed * (0.75 + random(0.5));
    bullet_power = bosspower;
    bullet_direction = (-180 + random(360)) / bossaccuracy;
    bullet_lifespan = 300;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;

if bossPassiveAttack[1] = 1 {
	
	bullet_part = 2;
	bullet_part_sprite = spr_Bullet_Tear_Part;
	bullet_part_area = 25;
	bullet_part_life = 20;
	bullet_part_color1 = make_color_rgb(0,106,255);
	bullet_part_color2 = c_white;
	
    bullet_type = obj_Phase_Rain;
    bullet_sprite = spr_Tear_Drop_Bullet;
    bullet_direction = 270 + ((-5 + random(10)) / other.bossaccuracy);
    bullet_lifespan = 600;
    scr_Top_Rain();
}

bossPassiveAttack[1] = 0;
bossPassiveAttack[2] = 0;

///Active Attack Prep

var speedfac = 1;

if currentphase = 2 {
	speedfac = 3;	
}

if bossActiveAttack[1] = 1 {
	speed = 0;	
} else if bossActiveAttack[1] != 0 {
	var bossdirection = scr_Soul_Point();
    direction = bossdirection;
    speed = bossmovespeed * (0.05) * speedfac;
} else {
	var bossdirection = scr_Soul_Point();
    direction = bossdirection;
    speed = bossmovespeed * (0.5) * speedfac;
}

if bossActiveAttackDelay[1] <= 0 and bossActiveAttackCooldown[1] <= 0 and bossActiveAttackDuration[1] <= 0 {
    
	var minThreshold = scr_Minion_Count();
	
    bossActiveAttack[1] = choose(1,1,3);
    if currentphase = 2 {
        bossActiveAttack[1] = choose(5,4);
    }
	
	if minThreshold = true {
		bossActiveAttack[1] = choose(1,3);	
	}
	
    bossActiveAttackDelay[1] = 30;
    bossActiveAttackCooldown[1] = (150 + random(15));
    bossPatternCooldown = 5;
	bossPatternCooldownMax = 5;
    
    if bossActiveAttack[1] = 1 {
        bossPatternCount = 30;
		bossActiveAttackDelay[1] = 15;
		var bossSavedPos = scr_Boss_Teleport_Near_Return();
		bossSavedX = bossSavedPos[0];
		bossSavedY = bossSavedPos[1];
		
        bossPatternDirection = point_direction(x,y,bossSavedX, bossSavedY);
		bossSavedDistance = point_distance(x,y,bossSavedX, bossSavedY);
		
		bossPatternCooldown = bossActiveAttackDelay[1];
		bossPatternCooldownMax = 1;
        //bossActiveAttackCooldown[1] -= 30;
		
		bossActiveAttackDuration[1] = 30 + bossPatternCooldownMax * bossPatternCount;
    }
    if bossActiveAttack[1] = 2 {
        bossPatternCount = 1;
        bulletdirection = random(360);
        bossPatternDirection = bulletdirection;
		bossPatternCooldown = 30;
		bossPatternCooldownMax = 30;
		bossActiveAttackCooldown[1] = 180 + random(60);
		bossActiveAttackDuration[1] = 30 + bossPatternCooldownMax * bossPatternCount;
    }
    if bossActiveAttack[1] = 3 {
		bossPatternCount = 6;
        bulletdirection = random(360);
        bossPatternDirection = bulletdirection;
		bossPatternCooldown = 30;
		bossPatternCooldownMax = 30;
		bossPatternCountMax = bossPatternCount;
		
		bossActiveAttackDuration[1] = 1 + bossPatternCooldownMax * bossPatternCount;
    }
    if bossActiveAttack[1] = 4 {
        bossPatternCount = 16;
		bossActiveAttackDelay[1] = 15;
		var bossSavedPos = scr_Boss_Teleport_Near_Return();
		bossSavedX = bossSavedPos[0];
		bossSavedY = bossSavedPos[1];
		
        //bossPatternDirection = point_direction(x,y,bossSavedX, bossSavedY
		bossPatternDirection = 0;
		bossSavedDistance = point_distance(x,y,bossSavedX, bossSavedY);
		
		bossPatternCooldown = bossActiveAttackDelay[1];
		bossPatternCooldownMax = 2;
        //bossActiveAttackCooldown[1] -= 30;
		
		bossActiveAttackDuration[1] = 30 + bossPatternCooldownMax * bossPatternCount;
    }
    if bossActiveAttack[1] = 5 {
        bossPatternCount = 3;
        bulletdirection = random(360);
        bossPatternDirection = bulletdirection;
		bossPatternCooldown = 30;
		bossPatternCooldownMax = 60;
		bossPatternCountMax = bossPatternCount;
		
		bossActiveAttackDuration[1] = 1 + bossPatternCooldownMax * bossPatternCount;
    }
    if bossActiveAttack[1] = 6 {
        scr_Boss_Dash_Setup();
        bossPatternCount = 90;
        bossPatternCountMax = bossPatternCount;
		bossPatternPhase = 1;
        bossPatternCooldown = 1;
        bossPatternCooldownMax = 1;
        bossActiveAttackDuration[1] = 1 + bossattackspeed * bossPatternCooldownMax * (bossPatternCount + 60);
        bossActiveAttackCooldown[1] += 30;
		
		var bossdirection = scr_Soul_Point();
        bossMaxDashSpeed = 11 * bossmovespeed;
		bossDashSpeed = 0;
    }
    if bossActiveAttack[1] = 7 {
        speed = bossmovespeed * (0.05 + random(0.05));
        bossPatternCount = 10;
		bossPatternCountMax = 10;
        bulletdirection = random(360);
        bossPatternDirection = bulletdirection;
		bossPatternCooldown = 20;
		bossPatternCooldownMax = 20;
        bossActiveAttackCooldown[1] += 60;
		bossActiveAttackDuration[1] = 1 + bossPatternCooldownMax * bossPatternCount;
    }
	if bossActiveAttack[1] = 8 {
        bulletdirection = scr_Soul_Point();
        bossPatternDirection = bulletdirection;
        bossActiveAttackCooldown[1] += 90;
    }
	if bossActiveAttack[1] = 9 {
        bossActiveAttackCooldown[1] += 60;
    }
	
	bossPatternCountMax = bossPatternCount;
}

/// Active Attack Code
    
    scr_Default_Attack_Settings(); 
    bullet_type = obj_Rain_Drop_Bullet;
    bullet_sprite = spr_Water_Drop_Bullet;
    bullet_speed = bossbulletspeed * (1 + random(0.25));
    bullet_power = bosspower;
    bullet_lifespan = 300;

if bossActiveAttackDelay[1] <= 0 {   

	
	///// 8 Way Zig Zag Lightning
	if bossActiveAttack[1] = 9 {
		scr_Boss_Stretch("Horizontal",0.3);
		
        bullet_direction = random(360);
        bullet_count = 8;
		bullet_type = obj_Zig_Zag_Trail;
		bullet_sprite = spr_Big_Lightning_Ball;
		bullet_size = 1;
        bullet_spread = 360 / bullet_count;
        bullet_speed = bossbulletspeed * (1.55 + random(0.15));
        scr_Just_Shoot();
		
		bossActiveAttack[1] = -9;
    }
}

/// Active Attack Pattern Code
    
    scr_Default_Attack_Settings();
	scr_Beam_Shoot_Properties();
    bullet_type = obj_Rain_Drop_Bullet;
    bullet_sprite = spr_Glowy_Pink_Shot;
    bullet_speed = bossbulletspeed * (0.95 + random(0.5));
    bullet_power = bosspower;
    bullet_lifespan = 300;

if bossActiveAttackDelay[1] <= 0 and bossPatternCooldown <= 0 and bossPatternCount > 0 {
        
    if bossActiveAttack[1] = 1 {
		if (bossActiveAttackDuration[1] mod 15 = 0) {
			scr_Boss_Stretch("Vertical",0.15);
		}
		bullet_type = obj_Completely_Dormant_Bullet;
		bullet_sprite = spr_Glowy_Pink_Shot;
        bullet_count = 1;
		
		bullet_direction = bossPatternDirection + 90 + (180 * (bossPatternCount mod 2));
        bullet_speed = bossbulletspeed * (1.2 + random(0.25));
		if bossPatternCount mod 4 < 2 {
			bullet_speed = bossbulletspeed * (2 + random(0.4));
		}
		bullet_lifespan = (bossPatternCount * 1)
		
		var fac = (1 / bossPatternCountMax) * (bossPatternCountMax - bossPatternCount) * 1.5;
		
		boss_xoffset = lengthdir_x(bossSavedDistance * fac, bossPatternDirection);
		boss_yoffset = lengthdir_y(bossSavedDistance * fac, bossPatternDirection);
		
		boss_xoffset += lengthdir_x(bullet_speed * 3, bullet_direction);
		boss_yoffset += lengthdir_y(bullet_speed * 3, bullet_direction);
		
        scr_Offset_Normal_Shoot();
    }
    if bossActiveAttack[1] = 2 {
		scr_Boss_Stretch("Vertical",0.4);
		
		minion_count = 1;
	    minion_type = obj_Pea_Brain;
	    minion_health = bossmaxhealth / 30;
		minion_speed = bossmovespeed * 0.5;
		
		repeat(4) {
			minion_dir = bossPatternDirection;
		    scr_Minion_Spawn();
		
			bossPatternDirection += 90;
		}
    }
	if bossActiveAttack[1] = 3 {
		scr_Boss_Stretch("Vertical", 0.2);
		
		bullet_type = obj_Speed_UpDown_Bullet;
		bullet_sprite = spr_Glowy_Purple_Shot;
        bullet_count = 20;
		bullet_spread = 360 / bullet_count;
		bullet_direction = bossPatternDirection;
		bullet_speed = bossbulletspeed * 1.35;
		
		bossPatternDirection += bullet_spread / 2;
        
		scr_Just_Shoot();
    }    
	
	if bossActiveAttack[1] = 4 {
		if bossPatternCount > 1 {
			if (bossActiveAttackDuration[1] mod 15 = 0) {
				scr_Boss_Stretch("Vertical",0.15);
			}
			bullet_type = obj_Completely_Dormant_Bullet;
			bullet_sprite = spr_Glowy_Pink_Shot;
	        bullet_count = 1;
			bullet_lifespan = (bossPatternCount * 1);
			if bossPatternCount mod 4 < 2 {
				bullet_speed = bossbulletspeed * (2 + random(0.4));
			}
		
			var fac = (1 / bossPatternCountMax) * (bossPatternCountMax - bossPatternCount);
		
			repeat(4) {
				bullet_direction = bossPatternDirection;
				bossPatternDirection += 90;
		        bullet_speed = bossbulletspeed * (1.8);
		
				boss_xoffset = bossSavedX + lengthdir_x(800 * fac, bullet_direction);
				boss_yoffset = bossSavedY + lengthdir_y(800 * fac, bullet_direction);
		
				var extraOffset = -25 + (bossPatternCount mod 3) * 25;
		
				boss_xoffset += lengthdir_x(extraOffset, bullet_direction + 90);
				boss_yoffset += lengthdir_y(extraOffset, bullet_direction + 90);
		
				boss_xoffset -= x;
				boss_yoffset -= y;
		
		        scr_Offset_Normal_Shoot();
			}
		} else {
			scr_Boss_Stretch("Vertical",0.4);
			bullet_sprite = spr_Glowy_Pink_Shot;
        
			if instance_exists(obj_Migraine_After_Image) {
				bullet_count = 10;
				bullet_type = obj_Basic_Bullet;
				bullet_spread = 360 / bullet_count;
			
				var xx = [x,x,x,x];
				var yy = [y,y,y,y];
				var index = 0;
			
				with(obj_Migraine_After_Image) {
					xx[index] = x;
					yy[index] = y;
					index++;
				}
		
				for(var i = 0; i < 4; i++) {
					bullet_speed = bossbulletspeed * (1.15 + random(0.45));
					bullet_direction = random(360);
					if i != 3 {
						boss_xoffset = xx[i] - x;
						boss_yoffset = yy[i] - y;
						scr_Offset_Normal_Shoot();
					} else {
						scr_Just_Shoot();	
					}
				}
			}
		}
		
		if bossPatternCount = 2 {
			bossPatternCooldownMax = 15;
		}
		
    }
	
	
	if bossActiveAttack[1] = 5 {
		scr_Boss_Stretch("Vertical", 0.2);
		
		bullet_sprite = spr_Glowy_Purple_Shot;
		bullet_direction = bossPatternDirection;
        
		if instance_exists(obj_Migraine_After_Image) {
			bullet_count = 10;
			bullet_type = obj_Speed_UpDown_Bullet;
			bullet_spread = 360 / bullet_count;
			
			var xx = [x,x,x,x];
			var yy = [y,y,y,y];
			var index = 0;
			
			with(obj_Migraine_After_Image) {
				xx[index] = x;
				yy[index] = y;
				index++;
			}
		
			for(var i = 0; i < 4; i++) {
				bullet_speed = bossbulletspeed * (1 + (i * 0.25));
				bullet_direction = random(360);
				if i != 3 {
					boss_xoffset = xx[i] - x;
					boss_yoffset = yy[i] - y;
					scr_Offset_Normal_Shoot();
				} else {
					scr_Just_Shoot();	
				}
			}
		}
    } 
    if bossActiveAttack[1] = 7 {
		//if (bossPatternCount mod 2 = 0) {
			scr_Boss_Stretch("Horizontal",0.15);
		//}
		
		bullet_part = 2;
		bullet_part_sprite = spr_Bullet_Tear_Part;
		bullet_part_area = 25;
		bullet_part_life = 20;
		bullet_part_color1 = make_color_rgb(0,106,255);
		bullet_part_color2 = c_white;
		
        bossX = x;
        bossY = y;
        bullet_direction = random(360);
        bullet_count = 8;
        bullet_sprite = spr_Sorrow_Bullet;
		bullet_size = 0.7;
        bullet_type = obj_Direction_Phase_Bullet;
        bullet_speed = bossbulletspeed * (2.25 + random(0.25));
		bullet_spread = 360 / bullet_count;
        scr_Outside_Shoot_Spread();
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

scr_Boss_Size_Lerp(0.15);

if (bossActiveAttack[1] = 1 || bossActiveAttack[1] = 4) {
	sprite_index = spr_Migraine_Attack;
	if image_index > 4 and bossActiveAttackDuration[1] > 30 {
		image_index = 4;	
	}
	if bossActiveAttackDuration[1] < 32 and bossActiveAttackDuration[1] >= 30 {
		bossActiveAttackDuration[1] = 30;
		x = bossSavedX;
		y = bossSavedY;
	}
	if image_index > 7 and bossActiveAttackDuration[1] > 10 {
		image_index = 7;	
	}
} else if (bossActiveAttack[1] != 0) {
	sprite_index = spr_Migraine_Attack;
	if image_index > 7 and bossActiveAttackDuration[1] > 10 {
		image_index = 7;	
	}
} else {
	sprite_index = spr_Migraine;
}

#endregion

scr_Boss_Soul_Hitbox(sprite_index);

image_speed = 1;