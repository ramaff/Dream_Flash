/// @description  Boss Step Event

scr_Boss_Step();

if bossActiveAttack[1] = 1 {
	scr_Room_Loop_Everywhere();
}

if state = states.phasing {
	exit;	
}

if state = states.normal {
	scr_Outside_Check();	
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

var bossdirection = scr_Soul_Point();
speed = 0.15 * bossmovespeed;
direction = bossdirection;

if bossActiveAttackDelay[1] <= 0 and bossActiveAttackCooldown[1] <= 0 and bossActiveAttackDuration[1] <= 0 {
    
	var minThres = scr_Over_Minion_Count();
	
    bossActiveAttack[1] = choose(1,2);
    bossActiveAttackDelay[1] = 15;
    
    if currentphase = 2 {
		bossActiveAttack[1] = choose(2,3); 
    }
	
	if minThres = 1 {
		bossActiveAttack[1] = choose(1);
    
    if currentphase = 2 {
		bossActiveAttack[1] = choose(3); 
    }
	}
	
    bossActiveAttackDelay[1] = 15;
	
    if bossActiveAttack[1] = 1 {
		bossHopCount = 2;
		
		if tier = 1 {
			bossHopCount = 4;	
		}
		if tier = 2 {
			bossHopCount = 6;	
		}
		if tier = 3 {
			bossHopCount = 8;	
		}
		
		jumpDirection = "Up";
		jumpHeight = 0;
		
		//bossActiveAttackDelay[champ] = 10;
		
        scr_Boss_Dash_Setup();
        bossPatternCount = 60;
        bossPatternCountMax = bossPatternCount;
        bossPatternCooldown = 15;
        bossPatternCooldownMax = 1;
		
		var bossdirection = scr_Soul_Point();
        bossDashDirection = bossdirection;
		
		scr_Hop_Distance_Calc(5 * bossmovespeed);
		
		bossPatternDirection = random(360);
		
		bossDashSpeed = 0;
		state = states.jumping;
		
		bossActiveAttackDuration[1] = 0 + bossattackspeed * (bossPatternCooldownMax * bossPatternCount + (30 * bossHopCount));
        bossActiveAttackCooldown[1] = 30 + random(15);
    }
    if bossActiveAttack[1] = 2 {
		image_index = 0;
        bossActiveAttackCooldown[1] = (120 + random(30));
		bossPatternCount = 3;
		if tier = 1 || tier = 3 {
        bossPatternCount = 5;
		}
        bossPatternCooldown = 2;
		bossPatternCooldownMax = 2;
		
        bulletdirection = scr_Soul_Point();
        bossPatternDirection = bulletdirection;
        bossActiveAttackDuration[1] = 10 + bossPatternCooldownMax * bossPatternCount;
    }
    if bossActiveAttack[1] = 3 {
		
        jumpDirection = "Up";
		jumpHeight = 0;
		
		bossActiveAttackDelay[1] = 0;
		
        scr_Boss_Dash_Setup();
        bossPatternCount = 100;
        bossPatternCountMax = bossPatternCount;
        bossPatternCooldown = 10;
        bossPatternCooldownMax = 1;
		
		var bossdirection = scr_Soul_Point();
        bossDashDirection = bossdirection;
		
		scr_Leap_Distance_Calc(2 * bossmovespeed,30);
		
		bossDashSpeed = 0;
		state = states.leaping;
		
		bossActiveAttackDuration[1] = 10 + bossattackspeed * bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 90 + random(30);
    }
	if bossActiveAttack[1] = 4 {
        bossPatternCount = 300;
        bossPatternCooldown = 1;
        bossPatternCooldownMax = 1;
        bossActiveAttackDuration[1] = 10 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 60 + random(15);
    }
	
	bossPatternCountMax = bossPatternCount;
    
}


/// Active Attack Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Hatred_Seeking_Bullet;
    bullet_sprite = spr_Boss_Ninja_Star;
    bullet_speed = bossbulletspeed;
    bullet_power = bosspower * 1;
    bullet_direction = (-5 + random(10)) / bossaccuracy;
    bullet_lifespan = 400;
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
		
		scr_Jump_Movement(3);
		
		if bossHopCount > 1 and bossPatternCount <= 1 {
				
			//if bossHopCount = 2 {
				scr_Screen_Shake(3,5);	
			//}
			bossHopCount--;
			bossPatternCountMax = 30;
			bossPatternCount = bossPatternCountMax;
			jumpDirection = "Up";
			jumpHeight = 0;
			
			scr_Boss_Dash_Setup();
			var bossdirection = scr_Soul_Point();
			bossDashDirection = bossdirection;
		
			scr_Hop_Distance_Calc(2 * bossmovespeed);
		
			bossDashSpeed = 0;
			state = states.jumping;
			
			
			scr_Boss_Stretch("Horizontal", 0.5);
			
			
			bullet_count = 12;
			bullet_direction = random(360);
			bullet_spread = 360 / bullet_count;
			
			bullet_type = obj_Accel_Accel_Bullet;
			bullet_sprite = spr_Glowy_Blue_Spike_Bullet;
			
			bullet_part = 2;
			bullet_part_sprite = spr_Glowy_Blue_Spike_Part;
			bullet_part_area = 5;
			bullet_part_life = 20;
			bullet_part_color1 = make_color_rgb(0,106,255);
			bullet_part_color2 = c_white;
			
			scr_Just_Shoot();
		}
		if bossPatternCount < 1 and bossHopCount <= 1 {
			speed = 0;
		}
		
		if bossPatternCount = 1 {
			scr_Boss_Stretch("Horizontal", 0.5);
			scr_Screen_Shake(3,5);	
			
			bullet_count = 12;
			bullet_direction = random(360);
			bullet_spread = 360 / bullet_count;
			
			bullet_type = obj_Accel_Accel_Bullet;
			bullet_sprite = spr_Glowy_Blue_Spike_Bullet;
			
			bullet_part = 2;
			bullet_part_sprite = spr_Glowy_Blue_Spike_Part;
			bullet_part_area = 5;
			bullet_part_life = 20;
			bullet_part_color1 = make_color_rgb(0,106,255);
			bullet_part_color2 = c_white;
			
			scr_Just_Shoot();
		}
		
		scr_Jump_Movement(3);
		
    }
	
    if bossActiveAttack[1] = 2 {
		
		if bossPatternCount mod 2 = 0 {
			scr_Boss_Stretch("Horizontal", 0.05);
		}
		
		minion_count = 1;
        minion_type = obj_Small_Bed_Bug;
		if tier >= 2 {
			minion_type = obj_Shoot_Bed_Bug;	
		}
        minion_health = bossmaxhealth / 30;
		if tier = 1 || tier = 3 {
			minion_health = bossmaxhealth / 40;
		}
        minion_defense = 5;
        scr_Minion_Spawn();
		
    }
    if bossActiveAttack[1] = 3 {
        scr_Boss_Dash_Movement(30,30);
		
		//scr_Screen_Shake(15,7);	
		
		speed = bossDashSpeed;
        direction = bossDashDirection;
		
		if bossPatternCount = 1 {
			scr_Boss_Stretch("Horizontal", 0.5);
			scr_Screen_Shake(15,7);	
			
			bullet_count = 6;
			if tier = 1 {
				bullet_count = 8;	
			}
			if tier >= 2 {
				bullet_count = 10;	
			}
			bullet_direction = random(360);
			bullet_spread = 360 / bullet_count;
			bullet_speed = bossbulletspeed * 7.5;
			bullet_lifespan = 65;
			
			bullet_type = obj_Wandering_Spike_Trail;
			bullet_sprite = spr_Glowy_Blue_Spike_Bullet;
			
			scr_Just_Shoot();
			
			if tier >= 3 {
				bullet_count = 12;
				bullet_direction = random(360);
				bullet_spread = 360 / bullet_count;
				bullet_speed = bossbulletspeed * 1.25;
				bullet_lifespan = 300;
			
				bullet_type = obj_Accel_Accel_Bullet;
				bullet_sprite = spr_Glowy_Blue_Spike_Bullet;
			
				bullet_part = 2;
				bullet_part_sprite = spr_Glowy_Blue_Spike_Part;
				bullet_part_area = 5;
				bullet_part_life = 20;
				bullet_part_color1 = make_color_rgb(0,106,255);
				bullet_part_color2 = c_white;
			
				scr_Just_Shoot();
				
				bullet_speed = bossbulletspeed * 1;
				bullet_direction += bullet_spread / 4;
				
				scr_Just_Shoot();
				
				bullet_speed = bossbulletspeed * 0.75;
				bullet_direction += bullet_spread / 4;
				
				scr_Just_Shoot();
				
				bullet_speed = bossbulletspeed * 0.5;
				bullet_direction += bullet_spread / 4;
				
				scr_Just_Shoot();
			}
		}
		
		if bossPatternCount < 1 {
			state = states.normal;
		}
		
		scr_Jump_Movement(30);
  
    }
	if bossActiveAttack[1] = 4 {
		if bossPatternCount mod 10 = 0 {
			scr_Boss_Stretch("Horizontal", 0.075);
		}
		
		if bossPatternCount = bossPatternCountMax {
			scr_Boss_Stretch("Vertical", 0.4);
			
	        bullet_direction = 0;
	        bullet_count = 1;
	        bullet_spread = 0;
	        bullet_speed = bossbulletspeed * (2.5 + random(0.15));
			bullet_type = obj_Beast_Bomb_Grow;
			bullet_sprite = spr_Crush_Ball;
			bullet_size = 0;
			bullet_power = bosspower * 2;
			
			if tier != 1 {
				boss_xoffset = 0;
			    boss_yoffset = -200;
			    scr_Offset_Normal_Shoot();
			}
			if tier = 1 {
				boss_xoffset = -150;
			    boss_yoffset = -200;
			    scr_Offset_Normal_Shoot();
				
				boss_xoffset = 150;
			    boss_yoffset = -200;
			    scr_Offset_Normal_Shoot();
			}
		}
		var fac = 60
		if tier >= 3 {
			fac = 45;	
		}
		if tier >= 4 {
			fac = 30;
		}
		if tier >= 2 {
		if bossPatternCount mod fac = 0 and bossPatternCount < 300 and bossPatternCount > 60 {
			scr_Boss_Stretch("Vertical", 0.1);
			
	        bullet_direction = 0;
	        bullet_count = 1;
	        bullet_spread = 0;
	        bullet_speed = bossbulletspeed * (2.5 + random(0.15));
			bullet_type = obj_Beast_Bomb_Grow;
			bullet_sprite = spr_Crush_Ball;
			bullet_size = 0;
			
			bullet_power = bosspower * 2;
			
			boss_xoffset = -200 + random(400);
			boss_yoffset = -300 + random(200);
			scr_Offset_Normal_Shoot();
		}
		}
		
    }
	
	bossPatternCount -= 1;
    bossPatternCooldown += bossPatternCooldownMax;
}

#endregion

/// Active Attack Post
   
if bossActiveAttackDuration[1] <= 0 { 
    bossActiveAttack[1] = 0;
    bossActiveAttack[2] = 0;
	state = states.normal
}

#region /// Boss Sprite

scr_Boss_Size_Lerp(0.15);

if bossActiveAttack[1] = 3 {
	sprite_index = spr_Bed_Bug_Hop
	if image_index > 3 {
		image_index = 3;	
	}
	image_speed = 1;
} else if bossActiveAttack[1] = 1 || bossActiveAttack[1] = 2 {
	sprite_index = spr_Bed_Bug_Hop
	if image_index > 3 and bossActiveAttackDuration[1] > 25 {
		image_index = 3;
	}
	image_speed = 1;
} else if bossActiveAttack[1] = 4 {
	sprite_index = spr_Bed_Bug_Hop
	if image_index > 3 {
		image_index = 3;	
	}
	image_speed = 1;
}else {
	sprite_index = spr_Bed_Bug
}

   
#endregion

scr_Boss_Soul_Hitbox(sprite_index);