/// @description  Boss Step Event

scr_Boss_Step();

if currentphase = 2 {
	//image_speed = 2;	
}

#region ///Passive Attack Prep

if bossPassiveAttackDelay[1] <= 0 and bossPassiveAttackCooldown[1] <= 0 {
    if currentphase = 1 {
        var bossdirection = scr_Soul_Point();
        speed = 0.33 * bossmovespeed;
        direction = bossdirection;
    }
    if currentphase = 2 {
        var bossdirection = scr_Soul_Point();
        speed = 0.66 * bossmovespeed;
        direction = bossdirection;
    }
    
	if currentphase = 1 {
	    bossPassiveAttack[1] = 1;
	    bossPassiveAttackCooldown[1] = 1;
	    bossPassiveAttackDelay[1] = 0;
	}
    
}

if bossPassiveAttackDelay[2] <= 0 and bossPassiveAttackCooldown[2] <= 0 {
    if currentphase = 2 and champ = 0 {
		image_index = 4;
        bossPassiveAttack[2] = 1;
        bossPassiveAttackCooldown[2] = 50;
        bossPassiveAttackDelay[2] = 0;
    }
    if currentphase = 2 and champ = 1 {
		image_index = 4;
        bossPassiveAttack[2] = 2;
        bossPassiveAttackCooldown[2] = 50;
        bossPassiveAttackDelay[2] = 0;
    }
	if currentphase = 2 and champ = 8 {
		image_index = 4;
        bossPassiveAttack[2] = 3;
        bossPassiveAttackCooldown[2] = 10;
        bossPassiveAttackDelay[2] = 0;
    }
    
}

#endregion

#region ///Passive Attack Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Tri_Ghoul_Hand;
    bullet_sprite = spr_Gesture_Hand;
    bullet_speed = 100;
    bullet_power = bosspower;
    bullet_direction = (-180 + random(360)) / bossaccuracy;
    bullet_lifespan = 1;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;
    
    if champ = 1 {
        //bullet_sprite = spr_Shooty_Shot;
    }

    if bossActiveAttack[1] = 2 || bossActiveAttack[1] = -2 || bossActiveAttack[1] = 3 || bossActiveAttack[1] = -3 || bossActiveAttack[1] = 5 || bossActiveAttack[1] = -5 {
		if bossActiveAttackDelay[1] > 0 {
			bullet_sprite = spr_Gesture_Hand_Shoot_Mid;	
			//image_index = 0;
		} else {
			bullet_sprite = spr_Gesture_Hand_Shoot;	
			//image_index = 1;
		}
	}
	
	bossHandDirection += bossmovespeed * 0.6;
	
if bossPassiveAttack[1] = 1 {
    bullet_direction = bossHandDirection;
    bullet_count = 1;
    bullet_spread = 0;
    soul_shot_block = 1;
    bullet_id = id;
    
    bullet_hit_list = hand1List;
    bullet_hit_ID = hand1HitID;
    boss_Part = 1;
    scr_Just_Shoot_No_Paranoia();    
    bullet_direction += 120;
    
    bullet_hit_list = hand2List;
    bullet_hit_ID = hand2HitID;
    boss_Part = 2;
    scr_Just_Shoot_No_Paranoia();    
    bullet_direction += 120;
    
    bullet_hit_list = hand3List;
    bullet_hit_ID = hand3HitID;
    boss_Part = 3;
    scr_Just_Shoot_No_Paranoia();    
    
}

    scr_Default_Attack_Settings();
    bullet_type = obj_Basic_Bullet;
    bullet_sprite = spr_Glowy_Pink_Shot;
    bullet_speed = bossbulletspeed * 1;
    bullet_power = bosspower;
    bullet_direction = (-10 + random(20)) / bossaccuracy;
    bullet_lifespan = 300 + irandom(90);
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;
    
    if champ = 1 {
        bullet_sprite = spr_Glowy_Yellow_Shot;
    }

	if champ = 8 {
		bullet_sprite = spr_Glowy_Cyan_Shot;	
	}

if bossPassiveAttack[2] = 1 {
	scr_Boss_Stretch("Horizontal",0.2);
	
    bullet_direction = bossHandDirection + 60;
    bullet_count = 3;
    bullet_spread = 120;
    scr_Just_Shoot();    
}

if bossPassiveAttack[2] = 2 {
	bullet_count = 3;
	bullet_direction = bossHandDirection + 60;
    bullet_spread = 120;
	bullet_speed = 0.75 * bossbulletspeed;
	
	repeat(3) {
		scr_Just_Shoot();  
		bullet_direction += 120;
		scr_Just_Shoot();
		bullet_direction += 120;
		scr_Just_Shoot();
		bullet_direction += 120;
		bullet_speed += 0.5 * bossbulletspeed;
	}
}

if bossPassiveAttack[2] = 3 {
	bullet_count = 2;
	bullet_direction = bossHandDirection + 60;
    bullet_spread = 180;
	bullet_speed = 1.5 * bossbulletspeed;
	
	repeat(2) {
		scr_Just_Shoot();  
		//bullet_direction += 120;
		//scr_Just_Shoot();
		bullet_speed += 0.75 * bossbulletspeed;
	}
}

bossPassiveAttack[1] = 0;
bossPassiveAttack[2] = 0;

#endregion

#region ///Active Attack Prep

if bossActiveAttackDelay[1] <= 0 and bossActiveAttackCooldown[1] <= 0 and bossActiveAttackDuration[1] <= 0 {
    bossActiveAttack[1] = choose(1,2,2);
    if champ = 1 {
        bossActiveAttack[1] = choose(1,3,3);
    }
	if champ = 8 {
        bossActiveAttack[1] = choose(4,5,5);
    }
	if currentphase = 2 {
		bossActiveAttack[1] = 0;	
	}
    if bossActiveAttack[1] = 1 {
		image_index = 0;
		
        bossActiveAttackDelay[1] = 10;
        bossPatternCount = 8;
        bossPatternCooldown = 10;
        bossPatternCooldownMax = 10;
        bossPatternDirection = scr_Soul_Point();
        bossActiveAttackDuration[1] = 10 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 100 + (50 * irandom(1));
    }
    if bossActiveAttack[1] = 2 {
        bossActiveAttackDelay[1] = 5;
        bossActiveAttackDuration[1] = 10;
        bossActiveAttackCooldown[1] = 85;
    }
    if bossActiveAttack[1] = 3 {
        bossActiveAttackDelay[1] = 5;
        bossActiveAttackDuration[1] = 10;
        bossActiveAttackCooldown[1] = 85;
    }
    if bossActiveAttack[1] = 4 {
        image_index = 0;
		
        bossActiveAttackDelay[1] = 10;
        bossPatternCount = 6;
        bossPatternCooldown = 10;
        bossPatternCooldownMax = 15;
        bossPatternDirection = scr_Soul_Point();
        bossActiveAttackDuration[1] = 10 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 145 + (50 * irandom(1));
    }
    if bossActiveAttack[1] = 5 {
        image_index = 0;
		
        bossActiveAttackDelay[1] = 10;
        bossPatternCount = 8;
        bossPatternCooldown = 10;
        bossPatternCooldownMax = 10;
        bossPatternDirection1 = 0;
        bossPatternDirection2 = -80;
		bossPatternDirection3 = 80;
		bossActiveAttackDuration[1] = 10 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 100;
		
		
    }
    bossPatternCountMax = bossPatternCount;
}

#endregion

#region /// Active Attack Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Basic_Bullet;
    bullet_sprite = spr_Glowy_Purple_Shot;
    bullet_speed = bossbulletspeed * (1.05 + random(0.4));
    bullet_power = bosspower;
    bullet_direction = (-30 + random(60)) / bossaccuracy;
    bullet_lifespan = 300 + irandom(90);
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;
    
    if champ = 1 {
        bullet_sprite = spr_Glowy_Orange_Shot;
    }

if bossActiveAttackDelay[1] <= 0 {        
    
    if bossActiveAttack[1] = 2 {
    
        bullet_count = 3;
        bullet_spread = 15;
        boss_xoffset = lengthdir_x(90, bossHandDirection);
        boss_yoffset = lengthdir_y(90, bossHandDirection);
        scr_Offset_Soul_Shoot();
		bullet_direction = (-60 + random(60)) / bossaccuracy;
        boss_xoffset = lengthdir_x(90, bossHandDirection + 120);
        boss_yoffset = lengthdir_y(90, bossHandDirection + 120);
        scr_Offset_Soul_Shoot();
		bullet_direction = (0 + random(60)) / bossaccuracy;
        boss_xoffset = lengthdir_x(90, bossHandDirection + 240);
        boss_yoffset = lengthdir_y(90, bossHandDirection + 240);
        scr_Offset_Soul_Shoot();

        bossActiveAttack[1] = -2;
    }
    
    if bossActiveAttack[1] = 3 {
    
        bullet_count = 1;
        bullet_speed = bossbulletspeed * (0.75 + random(0.1));
		var bdir = (-30 + random(60)) / bossaccuracy;
		var bdir1 = (-60 + random(60)) / bossaccuracy;
		var bdir2 = (0 + random(60)) / bossaccuracy;
        repeat(3) {
			bullet_direction = bdir;
            boss_xoffset = lengthdir_x(90,bossHandDirection);
            boss_yoffset = lengthdir_y(90,bossHandDirection);
            scr_Offset_Soul_Shoot();
			bullet_direction = bdir1;
            boss_xoffset = lengthdir_x(90, bossHandDirection + 120);
            boss_yoffset = lengthdir_y(90, bossHandDirection + 120);
            scr_Offset_Soul_Shoot();
			bullet_direction = bdir2;
            boss_xoffset = lengthdir_x(90, bossHandDirection + 240);
            boss_yoffset = lengthdir_y(90, bossHandDirection + 240);
            scr_Offset_Soul_Shoot();
            bullet_speed += 0.5 * bossbulletspeed;
        }

        bossActiveAttack[1] = -3;
    }
}

#endregion

#region /// Active Attack Pattern Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Sporadic_Bullet;
    bullet_sprite = spr_Hand_Shot;
    bullet_speed = bossbulletspeed * (0.5 + random(1));
    bullet_power = bosspower;
    bullet_direction = (-180 + random(360)) / bossaccuracy;
    bullet_lifespan = 180 + irandom(90);
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;
    
    if champ = 1 {
        bullet_sprite = spr_Shooty_Shot;
    }


if bossActiveAttackDelay[1] <= 0 and bossPatternCooldown <= 0 and bossPatternCount > 0 {
    
    if bossActiveAttack[1] = 1 {
		scr_Boss_Stretch("Horizontal",0.1);
		
        bullet_speed = bossbulletspeed * (1.5 + random(0.5));
        bullet_count = 1;
        bullet_direction = (-20 + random(40)) / bossaccuracy;
        bullet_spread = 30;
        scr_Soul_Shoot();    
    }
	
	if bossActiveAttack[1] = 4 {
		scr_Boss_Stretch("Horizontal",0.1);
		
		bullet_part = 1;
		bullet_part_sprite = spr_Bullet_Part;
		bullet_part_area = 25;
		bullet_part_life = 40;
		bullet_part_color1 = make_color_rgb(76,255,255);
		bullet_part_color2 = bullet_part_color1;
		
		bullet_power = bosspower * 1.5;
		bullet_type = obj_Basic_Wall_Bullet;
		bullet_sprite = spr_Big_Cyan_Shot;
        bullet_speed = bossbulletspeed * (1 + random(0.5));
        bullet_count = 1;
        bullet_direction = (-20 + random(40)) / bossaccuracy;
        //bullet_spread = 30;
        scr_Soul_Shoot();    
    }
	
	if bossActiveAttack[1] = 5 {
		
		bullet_sprite = spr_Glowy_Cyan_Shot;
		bullet_type = obj_Basic_Bullet
		bullet_speed = bossbulletspeed * 1.75;
    
        bullet_count = 1;
        //bullet_spread = 15;
		bullet_direction = bossPatternDirection1;
        boss_xoffset = lengthdir_x(90, bossHandDirection);
        boss_yoffset = lengthdir_y(90, bossHandDirection);
        scr_Offset_Soul_Shoot();
		bullet_direction = bossPatternDirection2;
        boss_xoffset = lengthdir_x(90, bossHandDirection + 120);
        boss_yoffset = lengthdir_y(90, bossHandDirection + 120);
		scr_Offset_Soul_Shoot();
        bullet_direction = bossPatternDirection3;
        boss_xoffset = lengthdir_x(90, bossHandDirection + 240);
        boss_yoffset = lengthdir_y(90, bossHandDirection + 240);
        scr_Offset_Soul_Shoot();
		
		bossPatternDirection2 += 10;
		bossPatternDirection3 -= 10;
		

    }
    bossPatternCount -= 1;
    bossPatternCooldown += bossPatternCooldownMax;
}

#endregion

#region /// Active Attack Post
   
if bossActiveAttackDuration[1] <= 0 { 
    bossActiveAttack[1] = 0;
}
if bossActiveAttackDuration[2] <= 0 {
    bossActiveAttack[2] = 0;
}

if handspawn = 0
if currentphase = finalphase {
    minion_count = 1;
    minion_type = obj_Gesture_Hand;
    minion_health = 50;
	minion_xx = lengthdir_x(90, bossHandDirection);
    minion_yy = lengthdir_y(90, bossHandDirection);
    scr_Minion_Spawn();
	minion_xx = lengthdir_x(90, bossHandDirection + 120);
    minion_yy = lengthdir_y(90, bossHandDirection + 120);
    scr_Minion_Spawn();
	minion_xx = lengthdir_x(90, bossHandDirection + 240);
    minion_yy = lengthdir_y(90, bossHandDirection + 240);
    scr_Minion_Spawn();
    handspawn = 1;
}


#endregion

#region /// Boss Sprite

scr_Boss_Size_Lerp(0.2);


if (bossActiveAttack[1] = 1 || bossActiveAttack[1] = 4) and bossActiveAttackDuration[1] > 0 {
	sprite_index = spr_Gesture_Ghoul_Shoot;	
	if image_index > 5 {
		image_index = 5;	
	}
} else {
	sprite_index = spr_Gesture_Ghoul;	
}
   
#endregion

scr_Boss_Soul_Hitbox(sprite_index);