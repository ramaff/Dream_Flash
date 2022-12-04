/// @description  Boss Step Event

scr_Boss_Step();

random_y = 0;

if bossActiveAttack[1] != 2 {
	scr_Room_Loop_Everywhere();
}

///Active Attack Prep

if bossActiveAttackDelay[1] <= 0 and bossActiveAttackCooldown[1] <= 0 and bossActiveAttackDuration[1] <= 0 {
    bossActiveAttack[1] = choose(5,2);
	//bossActiveAttack[1] = 3;
    if currentphase = 2 {
        bossActiveAttack[1] = choose(4);
    }
    speed = bossmovespeed * 1;
    if bossActiveAttack[1] = 1 {
        bossActiveAttackDelay[1] = 0;
        bossPatternCount = 7 + irandom(1);
        bossPatternCooldown = 50;
        bossPatternCooldownMax = 50;
        bossActiveAttackDuration[1] = 30 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 60 + random(5);
        direction = 0;
    }
    if bossActiveAttack[1] = 2 {
        bossActiveAttackDelay[1] = 0;
        bossPatternCount = 600;
        bossPatternCooldown = 1;
        bossPatternCooldownMax = 1;
        bossActiveAttackDuration[1] = 30 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 10 + random(5);
        direction = scr_Soul_Point();
    }
    if bossActiveAttack[1] = 3 {
        bossActiveAttackDelay[1] = 0;
        bossPatternCount = 780;
        bossPatternCooldown = 1;
        bossPatternCooldownMax = 1;
        bossActiveAttackDuration[1] = 30 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 10 + random(5);
    }
    if bossActiveAttack[1] = 4 {
		image_index = 0;
        bossActiveAttackDelay[1] = 0;
        bossPatternCount = 600;
        bossPatternCooldown = 1;
        bossPatternCooldownMax = 1;
        bossActiveAttackDuration[1] = 20 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 20;
    }
	if bossActiveAttack[1] = 5 {
		image_index = 0;
        bossActiveAttackDelay[1] = 0;
        bossPatternCount = 60;
        bossPatternCooldown = 10;
        bossPatternCooldownMax = 2;
		bossPatternDirection = 270;
        bossActiveAttackDuration[1] = 10 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 60 + random(5);
        direction = 0;
		speed = 0;
    }
    bossPatternCountMax = bossPatternCount;
}

if bossActiveAttack[1] = 2 and currentphase = 2 {
	if bossPatternCount > 30 {
		bossPatternCount = 30;	
		bossActiveAttackDuration[1] = 45;
	}
}


/// Active Attack Pattern Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Basic_Bullet;
    bullet_sprite = spr_Puck_Shot;
    bullet_speed = bossbulletspeed;
    bullet_power = bosspower * 1.65;
    bullet_direction = (-15 + random(30)) / bossaccuracy;
    bullet_lifespan = 300;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;
    bullet_image_speed = 0.33;

if bossActiveAttackDelay[1] <= 0 and bossPatternCooldown <= 0 and bossPatternCount > 0 {
        
    if bossActiveAttack[1] = 1 {
        bullet_count = 1;
        bullet_lifespan = 400;
        bullet_direction = (-15 + random(30)) / bossaccuracy;
        bullet_speed = bossbulletspeed * 1.5;
        if champ = 8 {
            bullet_type = obj_Speed_Up_Direction_Bullet;
            bullet_sprite = spr_Big_Fire_Shot;
            bullet_speed = bossbulletspeed * 0.66;
        }
        if champ = 1 {
            bullet_count = 2;
            bullet_spread = 180;
            bullet_lifespan = 300;
            bullet_type = obj_Dimensional_Bullet;
            bullet_sprite = spr_Dimensional_Puck;
            bullet_direction += 90;
        }
        scr_Soul_Shoot();
        //image_angle = point_direction(x, y, instance_nearest(x,y,obj_Soul).x, instance_nearest(x,y,obj_Soul).y)
    }
    if bossActiveAttack[1] = 2 {
		scr_Room_Loop_Outside();
		
		speed = (bossPatternCountMax - bossPatternCount) / 30 * bossmovespeed;
		
		var mspeed = bossmovespeed * 1.5 * (1 + (global.roomSizeX / 2048));
		
		if speed > mspeed {
			speed = mspeed;
		}
		
		if bossPatternCount mod 20 = 0 {
			scr_Boss_Stretch("Horizontal",0.2);
		}
	
		if (bossPatternCountMax - bossPatternCount > 60) {
			if (bossPatternCount mod 12 = 0) and champ = 0 {
				bullet_count = 1;
				bullet_type = obj_Basic_Bullet;
				bullet_sprite = spr_Dimensional_Puck;
				bullet_power = bosspower;
				bullet_size = 0.75;
				bullet_lifespan = 195 + random(45);
				bullet_speed = 0;
				
				scr_Just_Shoot();
			}
			
			if (bossPatternCount mod 24 = 0) and champ = 1 {
				bullet_count = 2;
				bullet_type = obj_Dimensional_Bullet;
				bullet_sprite = spr_Dimensional_Puck;
				bullet_power = bosspower;
				bullet_size = 1;
				bullet_lifespan = 180;
				bullet_speed = bossbulletspeed * 1.5; 
				bullet_spread = 180;
				bullet_direction = direction;
				
				scr_Just_Shoot();
			}
			if (bossPatternCount mod 15 = 0) and champ = 8 {
				bullet_count = 1;
				bullet_type = obj_Speed_Up_Direction_Bullet;
				bullet_sprite = spr_Big_Fire_Shot;
				bullet_power = bosspower;
				bullet_size = 1;
				bullet_lifespan = 180;
				bullet_speed = bossbulletspeed * 1.25; 
				bullet_direction = (-10 + random(20)) * bossaccuracy;
				
				scr_Soul_Shoot();
			}
	        
			
		}
		 
		/*
        bullet_count = 1;
        bullet_type = obj_Dimensional_Bullet;
        bullet_sprite = spr_Dimensional_Puck;
        if champ = 8 {
            bullet_sprite = spr_Big_Fire_Shot;
            bullet_type = obj_Dimensional_Direction_Bullet;
        }
        bullet_lifespan = 600;
        bullet_speed = bossbulletspeed * 1.25;
        bullet_direction = 90 + (180 * irandom(1)) + (-10 + random(20)) / bossaccuracy;
        if champ = 1 {
            bullet_count = 2;
            bullet_spread = 180;
            bullet_direction += 90;
        }
        scr_Just_Shoot();
		*/
        //image_angle = round(bullet_direction / 90) * 90;
    }
    if bossActiveAttack[1] = 3 {
        speed = bossmovespeed * 1.25;
		scr_Soul_Turn_To_Linear();
		
		if champ = 1 {
		if frac(bossPatternCount / 30) = 0 {
	        bullet_count = 1;
	        bullet_type = obj_Basic_Bullet;
	        bullet_sprite = spr_Dimensional_Puck;
	        bullet_power = bosspower;
	        bullet_size = 0.75;
	        bullet_lifespan = 450;
	        bullet_speed = 0;
	        
	        scr_Just_Shoot();
		}
		}
		
        //image_angle = direction;
		
    }
    if bossActiveAttack[1] = 4 {
		
        speed = bossmovespeed * 1;
        scr_Soul_Turn_To_Linear();
        //image_angle = direction;
        if bossPatternCount mod 20 = 0 {
			scr_Boss_Stretch("Vertical",0.2);
	        bullet_count = 1;
	        bullet_type = obj_Dimensional_Bullet;
	        bullet_sprite = spr_Dimensional_Puck;
	        bullet_power = bosspower;
	        bullet_lifespan = 210 + random(30);
	        bullet_speed = bossbulletspeed * (1.6 + random(0.25));
	        if champ = 8 {
	            bullet_sprite = spr_Dimensional_Fire_Shot;
	            bullet_type = obj_Dimensional_Direction_Bullet;
	            bullet_count = 2;
	            bullet_spread = 10;
	        }
	        bullet_direction = direction + bullet_direction - 30 + random(60);
	        if champ = 1 {
	            bullet_count = 2;
	            bullet_spread = 180;
	            bullet_type = obj_Dimensional_Bullet;
	            bullet_sprite = spr_Dimensional_Puck;
	            bullet_direction += 90;
	        }
	        scr_Just_Shoot();
		}
    }
	if bossActiveAttack[1] = 5 {
		if (bossPatternCount mod 5 = 0) {
			scr_Boss_Stretch("Horizontal",0.2);
		}
		
        bullet_count = 1;
        bullet_lifespan = 400;
		
		if (bossPatternCount mod 2 = 0) {
			bullet_direction = bossPatternDirection + (-9 + random(18));
			
			bullet_speed = bossbulletspeed * (1.2 + random(0.1));
			bullet_size = 0.75;
			
			if champ = 8 {
				bullet_type = obj_Speed_Up_Direction_Bullet;
	            bullet_sprite = spr_Fire_Shot;
	            bullet_speed = bossbulletspeed * (0.9 + random(0.1));
				bullet_size = 1;
			}
			scr_Just_Shoot();
		}
		
        bullet_direction = bossPatternDirection + (-9 + random(18));
	    bullet_speed = bossbulletspeed * (1.4 + random(0.1));
		bullet_size = 1;
		
		if (bossPatternCountMax - bossPatternCount <= 20) and (bossPatternCount mod 2) and champ = 1 {
			bullet_type = obj_Dimensional_Bullet;
			bullet_sprite = spr_Dimensional_Puck;
			
		}
		if champ = 8 {
            bullet_type = obj_Speed_Up_Direction_Bullet;
            bullet_sprite = spr_Big_Fire_Shot;
            bullet_speed = bossbulletspeed * (1.1 + random(0.1));
        }
		
		scr_Just_Shoot();
		
		bossPatternDirection += 18;
		
        //image_angle = point_direction(x, y, instance_nearest(x,y,obj_Soul).x, instance_nearest(x,y,obj_Soul).y)
    }
    
    bossPatternCount -= 1;
    bossPatternCooldown += bossPatternCooldownMax;
}

/// Active Attack Post
   
if bossActiveAttackDuration[1] <= 0 { 
    bossActiveAttack[1] = 0;
    bossActiveAttack[2] = 0;
    bossActiveAttack[3] = 0;
    bossActiveAttack[0] = 0;
}

/// Boss Sprite Code


scr_Boss_Size_Lerp(0.15);

if bossActiveAttack[1] = 5 {
	sprite_index = spr_Spin_Puck;
	if image_index > 10 {
		image_index = 2;	
	}
} else {

	if direction = 270 {
		sprite_index = spr_Forward_Puck;	
	} else if direction = 90 {
		sprite_index = spr_Back_Puck;	
	} else {
		scr_Boss_Two_Face_Direction_Mirror();
		sprite_index = spr_Puck_Man;	
	}

}

scr_Boss_Soul_Hitbox(spr_Puck_Hitbox);