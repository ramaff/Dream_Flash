/// @description  Boss Step Event

image_angle = direction + 180

if direction <= 90 || direction > 270 {
	image_angle = direction;
}

scr_Boss_Step();

///Passive Attack Prep

if bossPassiveAttackDelay[1] <= 0 and bossPassiveAttackCooldown[1] <= 0 {
    if champ = 0 || champ = 3 {
        bossPassiveAttack[1] = currentphase;
        bossPassiveAttackCooldown[1] = 60 + random(15);
        if currentphase = 2 {
            bossPassiveAttackCooldown[1] = 75 + random(30);
        }
        if champ = 3 {
            bossPassiveAttackCooldown[1] = 100 + random(30);
            bossPassiveAttack[1] = 2;
        }
        bossPassiveAttackDelay[1] = 0;
    }
    if champ = 2 {
        bossPassiveAttack[1] = 1;
        bossPassiveAttackCooldown[1] = 60 + random(15);
        bossPassiveAttackDelay[1] = 0;
        if currentphase = 2 {
            bossPassiveAttack[2] = 1;
            bossPassiveAttackCooldown[2] = 60 + random(15);
            bossPassiveAttackDelay[2] = 0;
        }
    }
    if champ = 1 {
        bossPassiveAttack[1] = currentphase;
        bossPassiveAttack[2] = 1;
        bossPassiveAttackCooldown[1] = 60 + random(15);
        if currentphase = 2 {
            bossPassiveAttackCooldown[1] = 75 + random(30);
        }
        bossPassiveAttackCooldown[2] = 20 + random(15);
        bossPassiveAttackDelay[1] = 0;
        bossPassiveAttackDelay[2] = 0;
    }
    if champ = 8 {
        bossPassiveAttack[1] = currentphase;
        bossPassiveAttackCooldown[1] = 60 + random(15);
        if currentphase = 2 {
            bossPassiveAttackCooldown[1] = 75 + random(30);
        }
        bossPassiveAttackDelay[1] = 0;
    }
}


///Passive Attack Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Drill_Shot;
    bullet_sprite = spr_Drill_Laser;
    bullet_speed = bossbulletspeed;
    bullet_power = bosspower;
    bullet_direction = 90 + (-5 + random(10)) / bossaccuracy;
    bullet_lifespan = 300;
    bullet_size = 1.1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 50;

if bossPassiveAttack[1] = 1 {
	scr_Boss_Stretch("Horizontal", 0.05);
	
	bullet_part = 1;
	bullet_part_sprite = spr_Bullet_Part;
	bullet_part_area = 25;
	bullet_part_life = 40;
	bullet_part_color1 = make_color_rgb(255,0,255);
	bullet_part_color2 = c_white;
	
	bullet_direction = image_angle - 90 + (-5 + random(10)) / bossaccuracy;
	bullet_direction += -20 + drillCycle * 20;
    bullet_speed = bossbulletspeed * 1.5;
	//bullet_power = bosspower * 2;
	
	boss_xoffset = lengthdir_x(60,image_angle + 180);
    boss_yoffset = lengthdir_y(60,image_angle + 180) + lengthdir_y(39,image_angle - 90);
    scr_Offset_Normal_Shoot();

    boss_xoffset = lengthdir_x(60,image_angle);
    boss_yoffset = lengthdir_y(60,image_angle) + lengthdir_y(39,image_angle - 90);
    scr_Offset_Normal_Shoot();
	
	drillCycle++;
	
	if drillCycle > 2 {
		drillCycle = 0;
	}
}
    
if bossPassiveAttack[1] = 2 {
	scr_Boss_Stretch("Horizontal", 0.05);
	
    bullet_type = obj_Miner_Bullet;
    bullet_sprite = spr_Boss_Bomb;
    bullet_size = 1;
    bullet_speed = bossbulletspeed * 0.25;
    bullet_count = 6;
	if champ = 1 {
		bullet_speed = bossbulletspeed * 0.66;
	}
    if champ = 3 {
        bullet_type = obj_Split_Mine_Bullet;
        bullet_sprite = spr_Boss_Green_Bomb;
        bullet_speed = bossbulletspeed;
		bullet_count = 4
    }
    scr_Soul_Shoot();       
}

if bossPassiveAttack[2] = 1 {
	
    bullet_type = obj_Miner_Bullet;
    bullet_sprite = spr_Boss_Bomb;
    bullet_size = 1;
    bullet_speed = bossbulletspeed * 0.25;
    bullet_count = 1;
	if champ = 1 {
		bullet_speed = bossbulletspeed * 0.66;
	}
    scr_Soul_Shoot();       
}

bossPassiveAttack[1] = 0;
bossPassiveAttack[2] = 0;

///Active Attack Prep

if bossActiveAttackDelay[1] <= 0 and bossActiveAttackCooldown[1] <= 0 and bossActiveAttackDuration[1] <= 0 {
        if champ = 0 {
            bossActiveAttack[1] = currentphase;
        }
        if champ = 1 {
            bossActiveAttack[1] = 1;
        }
        if champ = 2 {
            bossActiveAttack[1] = 3;
        }
        if champ = 3 {
            bossActiveAttack[1] = 5;
        }
        if champ = 8 {
            bossActiveAttack[1] = 4;
        }
        if bossActiveAttack[1] = 1 {
			image_index = 0;
	        bossActiveAttackDelay[1] = 10;
	        bossPatternCount = 3;
	        bossPatternCooldown = 70;
	        bossPatternCooldownMax = 70;
	        bossActiveAttackCooldown[1] = 150 + random(60);
			bossPatternCountMax = bossPatternCount;
			bossActiveAttackDuration[1] = 15 + bossPatternCooldownMax * bossPatternCount;
        }
        if bossActiveAttack[1] = 2 {
			image_index = 0;
            bossActiveAttackDelay[1] = 10;
	        bossPatternCount = 6 + irandom(1);
	        bossPatternCooldown = 25;
	        bossPatternCooldownMax = 25;
	        bossActiveAttackCooldown[1] = 120 + random(30);
			bossPatternCountMax = bossPatternCount;
			bossActiveAttackDuration[1] = 15 + bossPatternCooldownMax * bossPatternCount;
        }
        if bossActiveAttack[1] = 3 {
			image_index = 0;
            bossActiveAttackDelay[1] = 15;
            bossActiveAttackDuration[1] = 10;
            bossActiveAttackCooldown[1] = 65 + random(30);
            if currentphase = 2 {
                bossActiveAttackCooldown[1] -= 30;
            }
        }
        if bossActiveAttack[1] = 4 {
			image_index = 0;
            bossActiveAttackDelay[1] = 15;
            bossActiveAttackDuration[1] = 10;
            bossActiveAttackCooldown[1] = 270 + random(90);
        }
        if bossActiveAttack[1] = 5 {
			image_index = 0;
            bossActiveAttackDelay[1] = 15;
            bossActiveAttackDuration[1] = 10;
            bossActiveAttackCooldown[1] = 140 + random(45);
            if currentphase = 2 {
                bossActiveAttackCooldown[1] = 90 + random(30);
            }
        }
}


/// Active Attack Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Exploding_Shot;
    bullet_sprite = spr_Exploding_Shot;
    bullet_speed = bossbulletspeed * (0.75 + random(0.25));
    bullet_power = bosspower * 2;
    bullet_direction = (-10 + random(20)) / bossaccuracy;
    bullet_lifespan = 300;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;

if bossActiveAttackDelay[1] <= 0 {
        
	/*
    if bossActiveAttack[1] = 1 {
        bullet_image_speed = 0.5;
        bullet_lifespan = 240 + random(240);
        bullet_speed = bossbulletspeed * 0.65;
        scr_Soul_Shoot();
    }
	*/
    
    if bossActiveAttack[1] = 3 {  
		scr_Boss_Stretch("Horizontal", 0.3);
		
		bullet_part = 2;
		bullet_part_sprite = spr_Bullet_Missile_Part;
		bullet_part_area = 25;
		bullet_part_life = 60;
		bullet_part_color1 = make_color_rgb(0,154,255);
		bullet_part_color2 = c_white;
		
        bullet_type = obj_Homing_Bullet;
        bullet_sprite = spr_Boss_Missile;
        bullet_speed = bossbulletspeed * (0.75 + random(0.3));
        bullet_power = bosspower * 1;
        bullet_lifespan = 600;
        scr_Soul_Shoot(); 
		bossActiveAttack[1] = -3;
    }
    
    if bossActiveAttack[1] = 4 {
		scr_Boss_Stretch("Horizontal", 0.3);
		
		bullet_part = 1;
		bullet_part_sprite = spr_Bullet_Part;
		bullet_part_area = 25;
		bullet_part_life = 40;
		bullet_part_color1 = make_color_rgb(255,0,155);
		bullet_part_color2 = c_white;
		bullet_size = 1.1;
		
        bullet_type = obj_Maelstrom_Bullet;
        bullet_sprite = spr_Maelstrom_Shot;
		bullet_size = 1.2;
        bullet_speed = bossbulletspeed * (0.8 + random(0.15));
        bullet_lifespan = 480 + random(240);
        scr_Soul_Shoot();
		bossActiveAttack[1] = -4;
    }
    
    if bossActiveAttack[1] = 5 {
		scr_Boss_Stretch("Horizontal" ,0.3);
		
		bullet_part = 1;
		bullet_part_sprite = spr_Bullet_Part;
		bullet_part_area = 25;
		bullet_part_life = 40;
		bullet_part_color1 = make_color_rgb(100,255,200);
		bullet_part_color2 = c_white;
		bullet_size = 1.1;
		
        bullet_type = obj_Big_Green_Ball;
        bullet_sprite = spr_Big_Glowy_Green_Shot;
        bullet_size = 1.2;
        bullet_speed = bossbulletspeed * (1.25 + random(0.25));
        bullet_lifespan = 240;
        if currentphase = 1 {
            scr_Soul_Shoot();
        } else {
            bullet_direction = direction - 135 + (-20 + random(40)) / bossaccuracy;
            scr_Direction_Shoot();
        }
		bossActiveAttack[1] = -5;
    }
    
}

/* */
/// Active Attack Pattern Code

    scr_Default_Attack_Settings();
    bullet_type = obj_Exploding_Shot;
    bullet_sprite = spr_Exploding_Shot;
    bullet_speed = bossbulletspeed * (0.95 + random(0.25));
    bullet_power = bosspower * 2;
    bullet_direction = (-10 + random(20)) / bossaccuracy;
    bullet_lifespan = 300;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;
    
if bossActiveAttackDelay[1] <= 0 and bossPatternCooldown <= 0 and bossPatternCount > 0 {
    
	if bossActiveAttack[1] = 1 {
		scr_Boss_Stretch("Horizontal" ,0.2);
		
		bullet_part = 1;
		bullet_part_sprite = spr_Bullet_Part;
		bullet_part_area = 25;
		bullet_part_life = 40;
		bullet_part_color1 = make_color_rgb(255,255,0);
		bullet_part_color2 = c_white;
		bullet_size = 1.1;
		
        bullet_image_speed = 0.5;
        bullet_lifespan = 270 + random(120);
        bullet_speed = bossbulletspeed * 0.95 + random(0.25);
        scr_Soul_Shoot();
    }
	
	if bossActiveAttack[1] = 2 {  
		scr_Boss_Stretch("Horizontal" ,0.2);
		
        bullet_type = obj_Direction_Bullet;
        bullet_sprite = spr_Enemy_Laser;
        bullet_speed = bossbulletspeed * (2.5 + random(0.25));
        bullet_power = bosspower * 1;
		
        boss_xoffset = lengthdir_x(0,image_angle + 180);
	    boss_yoffset = lengthdir_y(0,image_angle + 180) + lengthdir_y(20,image_angle + 90);
	    scr_Offset_Soul_Shoot();

	    boss_xoffset = lengthdir_x(20,image_angle);
	    boss_yoffset = lengthdir_y(20,image_angle) - lengthdir_y(10,image_angle + 90);
	    scr_Offset_Soul_Shoot(); 
		
		boss_xoffset = lengthdir_x(-20,image_angle);
	    boss_yoffset = lengthdir_y(-20,image_angle) - lengthdir_y(10,image_angle + 90);
	    scr_Offset_Soul_Shoot(); 
    }
    
    bossPatternCount -= 1;
    bossPatternCooldown += bossPatternCooldownMax;
}

/// Active Attack Post
   
if bossActiveAttackDuration[1] <= 0 { 
    path_speed = bossmovespeed;
    bossActiveAttack[1] = 0;

}

#region /// Boss Sprite Code

scr_Boss_Size_Lerp(0.15);

/*
if champ = 0 {
if (y > (room_height / 2)) { 
    sprite_index = spr_Watcher_Wall_Behind;
    image_angle = direction;
} else {
    sprite_index = spr_Watcher_Wall;
    image_angle = direction + 180;
}
}
*/


if bossActiveAttack[1] != 0/* and (bossActiveAttackDelay[1] > 0)*/ {
	//if bossPatternCooldown <= 20 and bossPatternCooldown > 0 {
	if bossActiveAttack[1] = 1 || bossActiveAttack[1] = 2 {
		if bossPatternCooldown <= 20 and bossPatternCooldown > 0 {
			image_speed = 1;
		} else {
			image_index = 0;	
		}
	} else {
		image_speed = 1;
		if image_index > 4 {
			image_index = 4;	
		}
	}
	//} else {
	//	image_index = 0;	
	//}
} else {
	image_index = 0;
}

#endregion

scr_Boss_Soul_Hitbox(sprite_index);
