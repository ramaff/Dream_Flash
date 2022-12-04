/// @description  Boss Step Event

bossmovespeed = 0;
speed = 0;

image_angle = 45;

scr_Boss_Step();

///Passive Attack Prep

if bossPassiveAttackDelay[1] <= 0 and bossPassiveAttackCooldown[1] <= 0 {

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
	
}
    
if bossPassiveAttack[1] = 2 {
	   
}

if bossPassiveAttack[2] = 1 {
	
       
}

bossPassiveAttack[1] = 0;
bossPassiveAttack[2] = 0;

///Active Attack Prep

if bossActiveAttackDelay[1] <= 0 and bossActiveAttackCooldown[1] <= 0 and bossActiveAttackDuration[1] <= 0 {
        if champ = 0 {
            bossActiveAttack[1] = choose(1,1,2,2,3);
			if currentphase = 2 {
				bossActiveAttack[1] = choose(4,4,2,2,3);	
			}
        }
		
		bossActiveAttackDelay[1] = 40;
		
        if bossActiveAttack[1] = 1 {
			image_index = 0;

	        bossPatternCount = 60;
	        bossPatternCooldown = 4;
	        bossPatternCooldownMax = 4;
	        bossActiveAttackCooldown[1] = 120 + random(30);
			bossPatternDirection = 75 + random(15);
			bossPatternCountMax = bossPatternCount;
			bossActiveAttackDuration[1] = 15 + bossPatternCooldownMax * bossPatternCount;
        }
        if bossActiveAttack[1] = 2 {
			image_index = 0;
	        bossPatternCount = 12;
	        bossPatternCooldown = 15;
	        bossPatternCooldownMax = 15;
	        bossActiveAttackCooldown[1] = 120 + random(30);
			bossPatternCountMax = bossPatternCount;
			bossActiveAttackDuration[1] = 15 + bossPatternCooldownMax * bossPatternCount;
        }
        if bossActiveAttack[1] = 3 {
			image_index = 0;
	        bossPatternCount = 3;
	        bossPatternCooldown = 20;
	        bossPatternCooldownMax = 20;
	        bossActiveAttackCooldown[1] = 120 + random(30);
			bossPatternCountMax = bossPatternCount;
			bossActiveAttackDuration[1] = 15 + bossPatternCooldownMax * bossPatternCount;
        }
        if bossActiveAttack[1] = 4 {
			image_index = 0;

	        bossPatternCount = 25;
	        bossPatternCooldown = 6;
	        bossPatternCooldownMax = 6;
	        bossActiveAttackCooldown[1] = 120 + random(30);
			bossPatternCountMax = bossPatternCount;
			bossActiveAttackDuration[1] = 15 + bossPatternCooldownMax * bossPatternCount;
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
	bullet_image_speed = 0.5;

if bossActiveAttackDelay[1] <= 0 {
        

    
}

/* */
/// Active Attack Pattern Code

    scr_Default_Attack_Settings();
    bullet_type = obj_Direction_Bullet;
    bullet_sprite = spr_Tear_Drop_Bullet;
    bullet_speed = bossbulletspeed * (0.95 + random(0.25));
    bullet_power = bosspower * 2;
    bullet_direction = (-10 + random(20)) / bossaccuracy;
    bullet_lifespan = 300;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;
	bullet_image_speed = 0.5;
    
if bossActiveAttackDelay[1] <= 0 and bossPatternCooldown <= 0 and bossPatternCount > 0 {
    
	if bossActiveAttack[1] = 1 {
		if bossPatternCount mod 3 = 0 {
			scr_Boss_Stretch("Horizontal", 0.1);
		}
		
        bullet_speed = bossbulletspeed * (1.7 + random(0.5));
        bullet_power = bosspower * 1;
		bullet_direction = image_angle - 90 - bossPatternDirection + (-5 + random(10)) / bossaccuracy;
		if bossPatternCount > 30 {
			bossPatternDirection -= 6;
		} else {
			bossPatternDirection += 6;	
		}
		
		var side = 1;
		
		//repeat(2) {
	        boss_xoffset = lengthdir_x(eyeSpread * side,image_angle);
		    boss_yoffset = lengthdir_y(eyeSpread * side,image_angle)// + lengthdir_y(20,image_angle + 90);
		    scr_Offset_Normal_Shoot();
			side = -1;
		    boss_xoffset = lengthdir_x(eyeSpread * side,image_angle);
		    boss_yoffset = lengthdir_y(eyeSpread * side,image_angle) //- lengthdir_y(50,image_angle + 90);
		    scr_Offset_Normal_Shoot(); 
			
			//side = -1;
		//}
    }
	
	if bossActiveAttack[1] = 2 {  
		scr_Boss_Stretch("Horizontal" , 0.1);
		
		bullet_direction = image_angle - 90 - 30 + random(60);
		
        bullet_type = obj_Splash_Bounce_Bullet;
        bullet_sprite = spr_Big_Glowy_Blue_Shot;
        bullet_speed = bossbulletspeed * (0.7 + random(1.6));
        bullet_power = bosspower * 1;
		bullet_lifespan = 240;
		
	    scr_Just_Shoot(); 
    }
	
	if bossActiveAttack[1] = 3 {
		
		scr_Boss_Stretch("Horizontal" , 0.1);
		
		minion_count = 1;
	    minion_type = obj_Thought_Spawn;
	    minion_health = bossmaxhealth / 30;
	    scr_Minion_Spawn();
    }
	
	if bossActiveAttack[1] = 4 {  
		if bossPatternCount mod 3 = 0 {
			scr_Boss_Stretch("Horizontal", 0.1);
		}
		
		bullet_direction = image_angle - 90 - 7.5 + random(15);
		
        bullet_speed = bossbulletspeed * (1.2 + random(0.5));
        bullet_power = bosspower * 1;
		bullet_lifespan = 240;
		bullet_count = 3;
		bullet_spread = 45;
		scr_Just_Shoot(); 
		
		if bossPatternCount = bossPatternCountMax || bossPatternCount = 1 {
			bullet_count = 8;
			bullet_spread = 22.5;
			
			repeat(4) {
				bullet_speed = bossbulletspeed * (1.4 + random(0.5));
				bullet_direction = image_angle - 90 - 30 + random(60);
				scr_Just_Shoot(); 
			}
		}
		
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
	if bossActiveAttack[1] = 1 {
		sprite_index = spr_Wall_Of_Thoughts_Cry;
		if bossActiveAttackDuration[1] > 10 and image_index > 7 {
			image_index = 7;
		}
	} else if bossActiveAttack[1] = 2 || bossActiveAttack[1] = 3 || bossActiveAttack[1] = 4 {
		sprite_index = spr_Wall_Of_Thoughts_Spit;
		if bossActiveAttackDuration[1] > 10 and image_index > 9 {
			image_index = 9;
		}
	}
} else {
	image_index = 0;
}

#endregion

scr_Boss_Soul_Hitbox(sprite_index);
