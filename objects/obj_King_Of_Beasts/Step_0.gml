/// @description  Boss Step Event

scr_Boss_Step();

if bossActiveAttack[1] = 1 {
	scr_Room_Loop_Everywhere();
}

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

var bossdirection = scr_Soul_Point();
speed = 0.15 * bossmovespeed;
direction = bossdirection;

if bossActiveAttackDelay[1] <= 0 and bossActiveAttackCooldown[1] <= 0 and bossActiveAttackDuration[1] <= 0 {
    
    bossActiveAttack[1] = choose(1,2);
    bossActiveAttackDelay[1] = 15;
    
    if currentphase = 2 {
		bossActiveAttack[1] = choose(3,4); 
    }
	
    bossActiveAttackDelay[1] = 15;
	
    if bossActiveAttack[1] = 1 {
		scr_Boss_Dash_Setup();
        bossPatternCount = 180;
		
		if tier > 0 {
			bossPatternCount = 300;	
		}
		if tier >= 3 {
			bossPatternCount = 400;	
		}
		
        bossPatternCountMax = bossPatternCount;
        bossPatternCooldown = 1;
        bossPatternCooldownMax = 1;
        bossActiveAttackDuration[1] = 15 + bossattackspeed * bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 30 + random(15);
		
		var bossdirection = scr_Soul_Point();
		bossPatternDirection = 0;
        bossDashDirection = bossdirection;
		bossMaxDashSpeed = 4.5 * bossmovespeed;
		bossDashSpeed = 0;
    }
    if bossActiveAttack[1] = 2 {
		image_index = 0;
        bossActiveAttackCooldown[1] = (120 + random(30));
        bossPatternCount = 15;
        bossPatternCooldown = 1;
		bossPatternCooldownMax = 1;
		
		if tier >= 3 {
			bossPatternCount = 30;	
		}
		
        bulletdirection = scr_Soul_Point();
        bossPatternDirection = bulletdirection;
        bossActiveAttackDuration[1] = 10 + bossPatternCooldownMax * bossPatternCount;
		
		if tier >= 3 {
			bossActiveAttackDuration[1] += 60;	
		}
    }
    if bossActiveAttack[1] = 3 {
		
        scr_Boss_Dash_Setup();
		bossHopCount = 3;
        bossPatternCount = 100;
		if tier >= 1 {
			bossHopCount = 5;
			bossPatternCount = 80;
		}
        bossPatternCountMax = bossPatternCount;
        bossPatternCooldown = 10;
        bossPatternCooldownMax = 1;
		
		var bossdirection = scr_Soul_Point();
        bossDashDirection = bossdirection;
		
		bossDashSpeed = 0;
		bossMaxDashSpeed = bossmovespeed * 4.5;
		if tier = 2 {
			bossMaxDashSpeed = bossmovespeed * 5.5;
		}
		if tier >= 3 {
			bossHopCount = 7;
			bossPatternCount = 70;
			bossMaxDashSpeed = bossmovespeed * 6.5;
		}
        bossActiveAttackDuration[1] = 15 + bossPatternCooldownMax * bossPatternCount * bossHopCount * bossattackspeed;
        bossActiveAttackCooldown[1] = 60 + random(30);
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
		
        scr_Boss_Dash_Movement(45,30);
		
		speed = bossDashSpeed;
        direction = bossDashDirection;
		
		if bossPatternCount = 1 and tier = 0 {
			scr_Boss_Stretch("Horizontal", 0.4);
			
			bullet_type = obj_Direction_Phase_Bullet;
			bullet_sprite = spr_Enemy_Bullet_Spike;
			bullet_count = 16;
			bullet_spread = 360 / bullet_count;
			bullet_direction = random(360);
			bullet_speed = bossbulletspeed * 1.8;
			
			scr_Just_Shoot();
		} else if bossPatternCount = 1 {
			scr_Boss_Stretch("Horizontal", 0.4);
			
			bullet_speed = bossbulletspeed;
		
			bullet_count = 1;
		
			bullet_type = obj_Boss_Maw;
			bullet_sprite = spr_Boss_Maw;
			if tier >= 2 {
				bullet_type = obj_Boss_Maw_Spit;
			}
			bullet_size = 1;
			bullet_lifespan = 70;
			bullet_image_speed = 1;
		
			var spikelen = 50;
		
			var scount = 4;
			var tdir;
			repeat(12) {
				for(var s = 0; s < scount; s++) {
					tdir = bossPatternDirection - 10 + random(20);
					boss_xoffset = lengthdir_x(spikelen, tdir);
					boss_yoffset = lengthdir_y(spikelen, tdir);
				
					bullet_direction = tdir; 
					
					scr_Offset_Normal_Shoot();
				
					bossPatternDirection += 90;
				}
			spikelen += 65;
			}
		}
		
		if tier >= 3 and bossPatternCount mod 60 = 0 {
			scr_Boss_Stretch("Vertical", 0.1);
			
			bullet_speed = bossbulletspeed;
		
			bullet_count = 1;
		
			bullet_type = obj_Boss_Maw_Spit;
			bullet_sprite = spr_Boss_Maw;
			bullet_size = 1;
			bullet_lifespan = 70;
			bullet_image_speed = 1;
		
			var spikelen = 50 + irandom(120);
		
			var scount = 2;
			var tdir;
			repeat(4) {
				for(var s = 0; s < scount; s++) {
					tdir = direction + bossPatternDirection + 90 - 10 + random(20);
					boss_xoffset = lengthdir_x(spikelen, tdir);
					boss_yoffset = lengthdir_y(spikelen, tdir);
				
					bullet_direction = tdir; 
					
					scr_Offset_Normal_Shoot();
				
					bossPatternDirection += 180;
				}
			spikelen += 180;
			}
		}
		
    }
	
    if bossActiveAttack[1] = 2 {
		
		scr_Boss_Stretch("Vertical", 0.05);
		
		if bossPatternCount = 16 {
			bossPatternCooldown += 60;	
			bossPatternDirection = scr_Soul_Point();
		}
		
        bullet_speed = bossbulletspeed;
		
		bullet_count = 1;
		
		bullet_type = obj_Boss_Maw;
		bullet_sprite = spr_Boss_Maw;
		
		if tier >= 2 {
			bullet_type = obj_Boss_Maw_Spit;
		}
		
		bullet_size = 1;
		bullet_lifespan = 70;
		bullet_image_speed = 1;
		
		var spikelen = 15 + (60 * (bossPatternCountMax - bossPatternCount));
		if tier >= 3 {
			var spikelen = 15 + (60 * (15 - (bossPatternCount mod 15)));
		}
		
		var scount = 3;
		if tier = 1 {
			scount = 5;	
		}
		var tdir;
		for(var s = 0; s < scount; s++) {
			tdir = bossPatternDirection - (bossPatternCount / 2) + random(bossPatternCount);
			if tier >= 3 {
				tdir = bossPatternDirection - ((bossPatternCount mod 15) / 2) + random((bossPatternCount mod 15));
			}
			if tier != 1 {
				if s = 1 {
					tdir += 30;	
				}
				if s = 2 {
					tdir -= 30;	
				}
			} else {
				tdir += -60 + (s * 30);	
			}
			boss_xoffset = lengthdir_x(spikelen, tdir);
			boss_yoffset = lengthdir_y(spikelen, tdir);
			
			bullet_direction = tdir;
				
			scr_Offset_Normal_Shoot();
				
		}
		
    }
    if bossActiveAttack[1] = 3 {
		if tier = 0 {
			if bossHopCount = 3 {
				scr_Boss_Dash_Movement(45,30);
			} else {
				scr_Boss_Dash_Movement(15,30);
			}
		} else if tier > 0 and tier < 3{
			if bossHopCount = 5 {
				scr_Boss_Dash_Movement(30,15);
			} else {
				scr_Boss_Dash_Movement(15,15);
			}
		} else {
			if bossHopCount = 7 {
				scr_Boss_Dash_Movement(30,10);
			} else {
				scr_Boss_Dash_Movement(15,10);
			}
		}
		
		speed = bossDashSpeed;
        direction = bossDashDirection;
		
		if bossPatternCount = 1 {
			scr_Boss_Stretch("Horizontal", 0.4);
			
			bullet_type = obj_Direction_Phase_Bullet;
			bullet_sprite = spr_Enemy_Bullet_Spike;
			bullet_count = 16;
			bullet_spread = 360 / bullet_count;
			bullet_direction = random(360);
			bullet_speed = bossbulletspeed * 1.8;
			
			scr_Just_Shoot();
			
			if tier >= 2 {
				bullet_direction += bullet_spread / 2;
				bullet_speed = bossbulletspeed * 2.25;
				
				scr_Just_Shoot();
			}
			
		}
		
		if bossHopCount > 1 and bossPatternCount <= 1 {
			bossHopCount--;
			bossPatternCount = bossPatternCountMax;
			
			scr_Boss_Dash_Setup();
			var bossdirection = scr_Soul_Point();
		    bossDashDirection = bossdirection;
			bossMaxDashSpeed = bossmovespeed * 4;
		
			bossDashSpeed = 0;
		}
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
}

#region /// Boss Sprite

scr_Boss_Size_Lerp(0.15);

if bossActiveAttack[1] = 3 {
	sprite_index = spr_King_Of_Beasts_Growl;
	if image_index > 3 {
		image_index = 3;	
	}
	image_speed = 1;
} else if bossActiveAttack[1] = 1 || bossActiveAttack[1] = 2 {
	sprite_index = spr_King_Of_Beasts_Growl_Bite;
	if image_index > 3 and bossActiveAttackDuration[1] > 25 {
		image_index = 3;
	}
	image_speed = 1;
} else if bossActiveAttack[1] = 4 {
	sprite_index = spr_King_Of_Beasts_Howl;
	if image_index > 3 {
		image_index = 3;	
	}
	image_speed = 1;
}else {
	sprite_index = spr_King_Of_Beasts;
}

   
#endregion

scr_Boss_Soul_Hitbox(sprite_index);