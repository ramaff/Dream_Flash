/// @description  Boss Step Event

scr_Boss_Step();

//scr_Boss_Morph_In();

#region /// Active Attack Prep

if bossActiveAttackDelay[1] <= 0 and bossActiveAttackCooldown[1] <= 0 and bossActiveAttackDuration[1] <= 0 {
    bossActiveAttack[1] = choose(1,1,1,2,2);
	
	state = states.normal;
	
	if champ = 1 {
		bossActiveAttack[1] = choose(3,3,3,2,2);
	}
	if champ = 2 {
		bossActiveAttack[1] = choose(5,5,5,2,2);
	}
	
    if currentphase = 2 {
        bossActiveAttack[1] = 4;
    }
    if bossActiveAttack[1] = 1 {
		if champ = 0 {
			scr_Boss_Attack_Time_Setup(4, 30, 20, 90, 15, -10);
		} else {
			scr_Boss_Attack_Time_Setup(1, 30, 20, 90, 15);
		}
    }
    if bossActiveAttack[1] = 2 {
        scr_Boss_Attack_Time_Setup(1, 30, 10, 180, 15);
    }
	if bossActiveAttack[1] = 3 {                       
		scr_Boss_Attack_Time_Setup(1, 10, 20, 90, 15);
    }
	if bossActiveAttack[1] = 5 {
        scr_Boss_Attack_Time_Setup(3, 30, 30, 90, 15);
    }
    if bossActiveAttack[1] = 4 {
		/*
		jumpDirection = "Up";
		jumpHeight = 0;
		
		//bossActiveAttackDelay[1] = 10;
		
        scr_Boss_Dash_Setup();
        bossPatternCount = 50;
        bossPatternCountMax = bossPatternCount;
        bossPatternCooldown = 15;
        bossPatternCooldownMax = 1;
		
		var bossdirection = scr_Soul_Point();
        bossDashDirection = bossdirection;
		
		scr_Hop_Distance_Calc(5.5 * bossmovespeed);
		
		bossDashSpeed = 0;
		state = states.jumping;
		
		bossActiveAttackDuration[1] = 25 + bossattackspeed * bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 30 + random(15); */
		
		scr_Boss_Attack_Time_Setup(30, 15, 1, 30, 15, 15);
		scr_Boss_Jump_Setup(scr_Soul_Point(), 0, 8 * bossmovespeed);
    }
}
#endregion

#region /// Active Attack Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Jelly_Ball_Bullet;
    bullet_sprite = spr_Lob_Shot;
    bullet_speed = bossbulletspeed * 1.5;
    bullet_power = bosspower * 1.5;
    bullet_direction = (-5 + random(10)) / bossaccuracy;
    bullet_lifespan = 80;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    bullet_image_speed = 0.5;
    boss_radius = 0;
    
    if champ = 1 {
        bullet_type = obj_Poison_Ball_Bullet;
        bullet_sprite = spr_Green_Jam_Shot;
    }
    
    if champ = 8 {
        bullet_type = obj_Bullet_Jelly_Bullet;
		bullet_sprite = spr_Bullet_Jam_Shot;
    }
	

if bossActiveAttackDelay[1] <= 0 {

}

#endregion

#region /// Active Attack Pattern Code


if bossActiveAttackDelay[1] <= 0 and bossPatternCooldown <= 0 and bossPatternCount > 0 {
        
	if bossActiveAttack[1] = 1 {
		
		scr_Boss_Stretch("Horizontal",0.3);
		
		if champ = 8 {
			bullet_speed = bossbulletspeed * 1.66;
			bullet_type = obj_Tar_Ball_Bullet;
			
			bullet_count = 3;
			bullet_spread = 45;
			bullet_speed = bossbulletspeed;
		}
		
		if champ = 1 {
			bullet_count = 6;
	        bullet_spread = 360;
	        bullet_speed = bossbulletspeed;
			bullet_size = 0.75;
		
			bullet_speedfac_min = 1;
	        bullet_speedfac_add = 1.2;
	        bullet_timefac_min = 1;
	        bullet_timefac_add = 0;
		
			scr_Soul_Shoot_Vomit();
		}
		
		if champ != 1 {
			bullet_direction = (-20 + random(40)) / bossaccuracy * (1 + bossPatternCountMax - bossPatternCount);
		
			scr_Soul_Shoot();
		}
		
        scr_Soul_Point();
		speed = 0.3 * bossmovespeed
    }
    if bossActiveAttack[1] = 2 {
		scr_Boss_Stretch("Horizontal",0.3);
		
        bullet_type = obj_Jello_Spawning_Bullet;
		if champ = 1 {
			bullet_type = obj_PJello_Spawning_Bullet;
		}
		if champ = 2 {
			bullet_type = obj_BBJello_Spawning_Bullet;
		}
		if champ = 8 {
			bullet_type = obj_BJello_Spawning_Bullet;
		}
        
        bullet_count = 3;
        bullet_spread = 180;
        bullet_lifespan = 80;
        bullet_speed = bossbulletspeed;
		bullet_size = 0.75;
		
		bullet_speedfac_min = 1;
        bullet_speedfac_add = 1.2;
        bullet_timefac_min = 1;
        bullet_timefac_add = 0;
		
		scr_Soul_Shoot_Vomit();
        scr_Soul_Point();
		speed = 0.3 * bossmovespeed;
    }
    if bossActiveAttack[1] = 3 {
		
		scr_Boss_Stretch("Horizontal",0.3);
        
        bullet_count = 5;
        bullet_spread = 30;
        bullet_lifespan = 80;
        bullet_speed = bossbulletspeed;
		
		if champ = 1 {
			bullet_count = 7;
			bullet_spread = 240;
		}
		
		bullet_speedfac_min = 0.8;
        bullet_speedfac_add = 1.35;
        bullet_timefac_min = 1;
        bullet_timefac_add = 0;
		
		scr_Soul_Shoot_Vomit();
        scr_Soul_Point();
		speed = 0.3 * bossmovespeed;
    }
	if bossActiveAttack[1] = 5 {
		
		scr_Boss_Stretch("Horizontal",0.3);
		
		bullet_type = obj_Smart_Home_Bullet;
		bullet_sprite = spr_Cyan_Bubble_Bullet;
        
        bullet_count = 7;
        bullet_spread = 60;
        bullet_lifespan = 300;
        bullet_speed = bossbulletspeed;
		
		bullet_speedfac_min = 0.8;
        bullet_speedfac_add = 1.35;
        bullet_timefac_min = 1;
        bullet_timefac_add = 0;
		
		scr_Soul_Shoot_Vomit();
        scr_Soul_Point();
		speed = 0.3 * bossmovespeed;
    }
	
	if bossActiveAttack[1] = 4 {
		
		if bossPatternCount = 1 {
			scr_Screen_Shake(5,5);	
		}
		
        scr_Boss_Dash_Movement(4,2);
		
		speed = bossDashSpeed;
        direction = bossDashDirection;
		
		scr_Jump_Movement(3);
		
    }
	
	bossPatternCount -= 1;
    bossPatternCooldown += bossPatternCooldownMax;
	
}

#endregion

#region /// Active Attack Post + Sprites

scr_Boss_Size_Lerp(0.15);

if bossActiveAttack[1] = 0 {
	sprite_index = spr_Jello_Amorphous;	
}

if state = states.jumping {
	if jumpHeight > 10 || bossPatternCooldown > 0 {
		scr_Boss_Attack_Sprite(spr_Jello_Hop, 15, 7, 7);
	} else if jumpHeight <= 10 {
		if jumpDirection = "Down" {
			state = states.normal;
		}
		if bossActiveAttackDuration[1] <= 0 {
			
		}
	}
}

if bossActiveAttack[1] = 1 || bossActiveAttack[1] = 3 || bossActiveAttack[1] = 5 || bossActiveAttack[1] = 6 {
	scr_Boss_Attack_Sprite(spr_Jello_Attack, 25, 3, 8);
} else if bossActiveAttack[1] = 2 {
	scr_Boss_Attack_Sprite(spr_Jello_Attack, 10, 6, 6);
}
   
if bossActiveAttackDuration[1] <= 0 { 
	state = states.normal;
	jumpDirection = "None"
	jumpHeight = 0;
	
	sprite_index = spr_Jello_Amorphous;	
	
	if bossActiveAttack[1] = 4 {
	
	    if champ = 0 {
			scr_Boss_Stretch("Horizontal",0.45);
		
	        scr_Soul_Shoot();
	    }
	    if champ = 1 {
			scr_Boss_Stretch("Horizontal",0.45);
		
	        bullet_type = obj_Poison_Ball_Bullet;
	        bullet_sprite = spr_Green_Jam_Shot;
	        bullet_lifespan = 85;
	        bullet_count = 3;
	        bullet_direction = random(360);
	        bullet_spread = 120;
	        scr_Just_Shoot();
	    }
	    if champ = 2 {
			scr_Boss_Stretch("Horizontal",0.45);
		
	        bullet_sprite = spr_Cyan_Bubble_Bullet;
			bullet_type = obj_Smart_Home_Bullet;
        
	        bullet_count = 7;
	        bullet_spread = 60;
	        bullet_lifespan = 300;
	        bullet_speed = bossbulletspeed;
		
			bullet_speedfac_min = 0.8;
	        bullet_speedfac_add = 1.35;
	        bullet_timefac_min = 1;
	        bullet_timefac_add = 0;
		
			scr_Soul_Shoot_Vomit();
	    }
	    if champ = 8 {
			scr_Boss_Stretch("Horizontal",0.45);
		
			/*
	        bullet_type = obj_Bullet_Jelly_Bullet;
	        bullet_sprite = spr_Bullet_Jam_Shot;
			*/
		
			bullet_type = obj_Tar_Ball_Bullet;
	        bullet_sprite = spr_Bullet_Jam_Shot;
		
	        bullet_lifespan = 85;
	        bullet_count = 4;
	        bullet_spread = 90;
	        scr_Just_Shoot();
	    }
	
	}
    //image_speed = 0;
    image_index = 0;
    friction = 0;
    bossActiveAttack[1] = 0;
    bossActiveAttack[2] = 0;
    bossActiveAttack[3] = 0;
	bossActiveAttack[8] = 0;
    bossActiveAttack[0] = 0;
}

#endregion

scr_Boss_Soul_Hitbox(sprite_index);