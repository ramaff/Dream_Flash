/// @description  Boss Step Event


scr_Boss_Step();

///Active Attack Prep

if bossActiveAttackDelay[1] <= 0 and bossActiveAttackCooldown[1] <= 0 and bossActiveAttackDuration[1] <= 0 {
    mCount = instance_number(obj_Minion_Parent)
    bCount = instance_number(obj_Main_Boss_Parent)    
    bossScare = 0;
	
	if currentphase = 2 {
		bossSide = bossSide2;	
	}
	
	if bossSide = 1 {
		bossActiveAttack[1] = choose(1,2);
	}
	if bossSide = 2 {
		bossActiveAttack[1] = choose(3,4);
	}
	if bossSide = 3 {
		bossActiveAttack[1] = choose(5,6);
	}
	if bossSide = 4 {
		bossActiveAttack[1] = choose(7,8);
	}
	if bossSide = 5 {
		bossActiveAttack[1] = choose(9,10);
	}
	if bossSide = 6 {
		bossActiveAttack[1] = choose(11,12);
	}
	
    if bossActiveAttack[1] = 1 {
        bossActiveAttackDelay[1] = 30;
        bossPatternCount = 150;
        bossPatternCooldown = 1;
        bossPatternCooldownMax = 1;
		bulletdirection = scr_Soul_Point() - 90 + ((-10 + random(20)) / bossaccuracy);
        bossPatternDirection = bulletdirection;
        bossActiveAttackDuration[1] = 10 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 120 + random(15);
    }
    if bossActiveAttack[1] = 2 {
        bossActiveAttackDelay[1] = 10;
        bossPatternCount = 5;
        bossPatternCooldown = 20;
        bossPatternCooldownMax = 20;
        bossActiveAttackDuration[1] = 10 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 120 + random(15);
    }
    if bossActiveAttack[1] = 3 {
        bossActiveAttackDelay[1] = 10;
        bossPatternCount = 10;
        bossPatternCooldown = 15;
        bossPatternCooldownMax = 15;
		bossPatternDirection = random(360);
        bossActiveAttackDuration[1] = 10 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 120 + random(15);
    }
	if bossActiveAttack[1] = 4 {
        bossActiveAttackDelay[1] = 10;
        bossPatternCount = 4;
        bossPatternCooldown = 20;
        bossPatternCooldownMax = 20;
        bossActiveAttackDuration[1] = 10 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 120 + random(15);
    }
	if bossActiveAttack[1] = 5 {
        bossActiveAttackDelay[1] = 10;
        bossPatternCount = 50;
        bossPatternCooldown = 6;
        bossPatternCooldownMax = 6;
		bossPatternDirection = random(360);
        bossActiveAttackDuration[1] = 10 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 120 + random(15);
    }
	if bossActiveAttack[1] = 6 {
        bossActiveAttackDelay[1] = 10;
        bossPatternCount = 20;
        bossPatternCooldown = 12;
        bossPatternCooldownMax = 12;
        bossActiveAttackDuration[1] = 10 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 120 + random(15);
    }
	if bossActiveAttack[1] = 7 {
        bossActiveAttackDelay[1] = 10;
        bossPatternCount = 40;
        bossPatternCooldown = 7;
        bossPatternCooldownMax = 7;
		bossPatternDirection = random(360);
		bossPatternDirection2 = bossPatternDirection + 180;
        bossActiveAttackDuration[1] = 10 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 120 + random(15);
    }
	if bossActiveAttack[1] = 8 {
        bossActiveAttackDelay[1] = 10;
        bossPatternCount = 5;
        bossPatternCooldown = 40;
        bossPatternCooldownMax = 40;
		
		bossPatternDirection = 50 + irandom(100);
        bossActiveAttackDuration[1] = 10 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 120 + random(15);
    }
	if bossActiveAttack[1] = 9 {
        bossActiveAttackDelay[1] = 10;
        bossPatternCount = 12;
        bossPatternCooldown = 18;
        bossPatternCooldownMax = 18;
        bossActiveAttackDuration[1] = 10 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 120 + random(15);
    }
	if bossActiveAttack[1] = 10 {
        bossActiveAttackDelay[1] = 30;
        bossPatternCount = 300;
        bossPatternCooldown = 1;
        bossPatternCooldownMax = 1;
		bulletdirection = scr_Soul_Point() - 90 + ((-10 + random(20)) / bossaccuracy);
        bossPatternDirection = bulletdirection;
        bossActiveAttackDuration[1] = 10 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 120 + random(15);
		
		bossPatternX = 0;
		bossPatternY = -1200;
    }
	if bossActiveAttack[1] = 11 {
        bossActiveAttackDelay[1] = 10;
        bossPatternCount = 60;
        bossPatternCooldown = 10;
        bossPatternCooldownMax = 10;
		bossPatternDirection = random(360);
        bossActiveAttackDuration[1] = 10 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 120 + random(15);
    }
    if bossActiveAttack[1] = 12 {
		bossActiveAttackDelay[1] = 15;
		jumpDirection = "Up";
		jumpHeight = 0;
		
        scr_Boss_Dash_Setup();
        bossPatternCount = 90;
        bossPatternCountMax = bossPatternCount;
        bossPatternCooldown = 10;
        bossPatternCooldownMax = 1;
		
		var bossdirection = scr_Soul_Point();
        bossDashDirection = bossdirection;
		
		scr_Leap_Distance_Calc(1 * bossmovespeed,30);
		
		bossDashSpeed = 0;
		state = states.leaping;
		
		bossActiveAttackDuration[1] = 15 + bossattackspeed * bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 75 + random(15);
        
    }
    bossPatternCountMax = bossPatternCount;
}


/// Active Attack Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Speed_UpDown_Bullet;
    bullet_sprite = spr_Ache_Direction_Bullet;
    bullet_speed = bossbulletspeed * (2.1 + random(0.3));
    bullet_power = bosspower;
    bullet_direction = (-20 + random(40)) / bossaccuracy;
    bullet_lifespan = 400;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    bullet_image_speed = 0.2;
    boss_radius = 0;
    
if bossActiveAttackDelay[1] <= 0 {
        
}

/// Active Attack Pattern Code
    
	scr_Beam_Shoot_Properties();
    scr_Default_Attack_Settings();
    bullet_type = obj_Basic_Bullet;
    bullet_sprite = spr_Glowy_Enemy_Shot;
    bullet_speed = bossbulletspeed * (1.2 + random(0.3));
    bullet_power = bosspower;
    bullet_direction = (-10 + random(20)) / bossaccuracy;
    bullet_lifespan = 600;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    bullet_image_speed = 0.2;
    boss_radius = 0;

if bossActiveAttackDelay[1] <= 0 and bossPatternCooldown <= 0 and bossPatternCount > 0 {
        
    if bossActiveAttack[1] = 1 {
		
		if bossPatternCount mod 10 = 0 {
			scr_Boss_Stretch("Horizontal", 0.05);
		}
		scr_Default_Attack_Settings();
        bullet_power = bosspower;
        bullet_direction = bossPatternDirection;
        bullet_size = 1;
		beamSize = 0.6
        bullet_count = 1;
        bullet_spread = 0;
        boss_radius = 0;
        
        bullet_sprite = spr_Lightning_Beam;
        beam_sprite = spr_Lightning_Beam;
        bossbeamattackactive = 1;
		
		scr_Easy_Boss_Beam_Shoot(bossPatternCountMax, 36);
		
		souldir = scr_Soul_Point();
        var adif = angle_difference(bossPatternDirection, souldir);
        if adif < 0 {
            bossPatternDirection += 0.25 + ((bossPatternCountMax - bossPatternCount) / 30);
        }
        if adif > 0 {
            bossPatternDirection += 0.25 + ((bossPatternCountMax - bossPatternCount) / 30);
        }
		
		/*
		var beamstart = bossPatternCountMax - bossPatternCount
    
        if bossPatternCount < 140 {
            scr_Boss_Beam_Attack_New("Active",18,scr_Boss_Beam_Frame(beamstart));
            
            souldir = scr_Soul_Point();
            var adif = angle_difference(bossPatternDirection, souldir);
            if adif < 0 {
                bossPatternDirection += 0.25 + ((bossPatternCountMax - bossPatternCount) / 30);
            }
            if adif > 0 {
                bossPatternDirection += 0.25 + ((bossPatternCountMax - bossPatternCount) / 30);
            }
         
        } else {
            scr_Boss_Beam_Attack_New("Dormant",18,scr_Boss_Beam_Frame(beamstart));
        }
		*/
        
    }

    if bossActiveAttack[1] = 2 {
		
		scr_Boss_Stretch("Horizontal", 0.1);
			
	    bullet_direction = random(360);
	    bullet_count = 1;
	    bullet_spread = 0;
	    bullet_speed = bossbulletspeed * (1.35 + random(0.75));
		bullet_type = obj_Holy_Dice_Bullet;
		bullet_sprite = spr_Big_Glowy_Yellow_Shot;
		bullet_size = 1;
		bullet_lifespan = 300;
			
		scr_Just_Shoot();
    }
	
	if bossActiveAttack[1] = 3 {
		scr_Boss_Stretch("Horizontal", 0.2);
		
        bullet_direction = bossPatternDirection;
	    bullet_count = 4;
	    bullet_spread = 360 / bullet_count;
	    bullet_speed = bossbulletspeed * (1.35 + random(0.05));
		bullet_type = obj_Infatuation_Drop_Bullet;
		bullet_sprite = spr_Glowy_Ruby_Shot;
		bullet_size = 1;
		bullet_lifespan = 300;
			
		scr_Just_Shoot();
		
		bossPatternDirection += 10;
    
    }
	
	if bossActiveAttack[1] = 4 {
		scr_Boss_Stretch("Horizontal", 0.2);
		
        bullet_type = obj_Miner_Shoot_Bullet;
		bullet_sprite = spr_Boss_Pink_Bomb;
		bullet_size = 1;
		bullet_speed = bossbulletspeed * 0.5;
		bullet_count = 2;
		scr_Soul_Shoot();       
        //direction = scr_Soul_Point();
		//speed = 0.3 * bossmovespeed;
    
    }
	
	if bossActiveAttack[1] = 5 {
		scr_Boss_Stretch("Horizontal", 0.1);
		
        bullet_direction = bossPatternDirection;
	    bullet_count = 1;
	    bullet_spread = 360 / bullet_count;
	    bullet_speed = bossbulletspeed * (1.55 + random(0.05));
		bullet_type = obj_Wave_Bullet;
		bullet_sprite = spr_Tear_Drop_Bullet;
		bullet_size = 1;
		bullet_lifespan = 300;
			
		scr_Just_Shoot();
		
		bullet_direction = -bossPatternDirection;
		
		scr_Just_Shoot();
		
		bossPatternDirection += 15;
    
    }
	
	if bossActiveAttack[1] = 6 {
		scr_Boss_Stretch("Horizontal", 0.2);
		
		bullet_type = obj_Incoming_Tear_Bullet;
		bullet_sprite = spr_Water_Drop_Bullet;
		bullet_speed = bossbulletspeed * 2.5;
		bullet_direction = point_direction(x,y,obj_Soul_Parent.perX,obj_Soul_Parent.perY-1500)
        scr_Just_Shoot();
    }
	
	if bossActiveAttack[1] = 7 {
		scr_Boss_Stretch("Horizontal", 0.1);
		
        bullet_direction = bossPatternDirection;
	    bullet_count = 2;
	    bullet_spread = 360 / bullet_count;
	    bullet_speed = bossbulletspeed * (1.95 + random(0.05));
		bullet_type = obj_Direction_Bullet;
		bullet_sprite = spr_Enemy_Bullet_Spike;
		bullet_size = 1;
		bullet_lifespan = 300;
			
		scr_Just_Shoot();
		
		bullet_direction = bossPatternDirection2;
		
		scr_Just_Shoot();
		
		bossPatternDirection += 10;
		bossPatternDirection2 -= 1.5;
    
    }
	
	if bossActiveAttack[1] = 8 {
		scr_Boss_Stretch("Horizontal", 0.2);
		
		bullet_type = obj_Stationary_Damager;
		bullet_sprite = spr_Boss_Spike;
		bullet_speed = 0;
		bullet_size = 2;
		bullet_lifespan = 45;
		bullet_image_speed = 1;
		
		var spikelen = bossPatternDirection + (150 * (bossPatternCountMax - bossPatternCount));
		
		var scount = 8 + 8 * (bossPatternCountMax - bossPatternCount);
		var rdir = random(360 / scount);
		for(var s = 0; s < scount; s++) {
		    boss_xoffset = lengthdir_x(spikelen, rdir + s * (360 / scount));
			boss_yoffset = lengthdir_y(spikelen, rdir + s * (360 / scount));
			scr_Offset_Normal_Shoot();
		}
    }
	
	if bossActiveAttack[1] = 9 {
		scr_Boss_Stretch("Horizontal", 0.2);
		
		bullet_count = 4;
		bullet_spread = 360 / bullet_count;
		bullet_speed = bossbulletspeed * (2.45 + random(0.05));
		bullet_type = obj_Direction_Bullet;
		bullet_sprite = spr_Glowy_Red_Laser;
		bullet_lifespan = 300;
		bullet_direction = 42.5 + random(5);
		
		scr_Just_Shoot();
		
		
	    bullet_count = 1;
	    bullet_spread = 0;
	    bullet_speed = bossbulletspeed * (2.45 + random(0.45));
		bullet_size = 1;
		bullet_direction = scr_Soul_Point() - 10 + random(20);
		
		boss_xoffset = 40;
		boss_yoffset = 40;
		
		scr_Offset_Normal_Shoot();
		
		boss_xoffset = -40;
		boss_yoffset = 40;
		
		scr_Offset_Normal_Shoot();
		
		boss_xoffset = 40;
		boss_yoffset = -40;
		
		scr_Offset_Normal_Shoot();
		
		boss_xoffset = -40;
		boss_yoffset = -40;
		
		scr_Offset_Normal_Shoot();
    
    }
	
	if bossActiveAttack[1] = 10 {
		if bossPatternCount mod 5 = 0 {
			scr_Boss_Stretch("Horizontal", 0.03);	
		}
		
		bossPatternX = lerp(bossPatternX,obj_Soul_Parent.perX - x,0.02);
		bossPatternY = lerp(bossPatternY,(obj_Soul_Parent.perY - 1200) - y,0.02);
		
		if bossPatternCount mod 5 = 0 {
			
			if (bossPatternX > obj_Soul_Parent.perX - x) {
				bossPatternX--;	
			} else {
				bossPatternX++;	
			}
			
			if (bossPatternY > (obj_Soul_Parent.perY - 1200) - y) {
				bossPatternY--;	
			} else {
				bossPatternY++;	
			}
			
			bullet_type = obj_Poison_Pool;
			bullet_sprite = spr_Jelly_Pool;
			bullet_speed = bossbulletspeed * 0;
			bullet_power = bosspower * 0.25;
			bullet_direction = (-180 + random(360)) / bossaccuracy;
			bullet_lifespan = 240 + irandom(30);
			bullet_size = 0.65 + random(0.15);
			bullet_count = 1;
			bullet_spread = 0;
            bullet_blend = c_red;   
			bullet_count = 1;
			boss_xoffset = bossPatternX;
			boss_yoffset = bossPatternY + 1200;
			
			bullet_depth = 200;
			
            scr_Offset_Normal_Shoot();
        }
		
		if bossPatternCount mod 75 = 0 {
			
			bullet_type = obj_Basic_Bullet;
			bullet_sprite = spr_Glowy_Enemy_Shot;
			bullet_speed = bossbulletspeed * (1.75 + random(0.15));
			bullet_power = bosspower * 1;
			bullet_direction = (-180 + random(360)) / bossaccuracy;
			bullet_lifespan = 300;
			bullet_size = 1;
			bullet_count = 8;
			bullet_spread = 360 / bullet_count;
			bullet_blend = c_white;  
			
			boss_xoffset = bossPatternX;
			boss_yoffset = bossPatternY + 1200;
            scr_Offset_Normal_Shoot();
			
		}
		
		scr_Default_Attack_Settings();
        bullet_type = obj_Laser_Beam_Charge;
        bullet_sprite = spr_Laser_Beam_Charge;
        bullet_speed = 0;
        bullet_power = bosspower * 0;
        bullet_direction = 270 + (-0.2 + random(0.4)) / bossaccuracy;
        bullet_lifespan = 7;
        bullet_size = 1;
        bullet_count = 1;
        bullet_spread = 0;
        boss_radius = 0;
		setbeamlength = 1176;
        
        bullet_sprite = spr_Red_Beam;
        beam_sprite = spr_Red_Beam;
        beamSize = 0.5;
        bossbeamattackactive = 1;
		boss_xoffset = bossPatternX;
		boss_yoffset = bossPatternY;
    
		//scr_Easy_Boss_Beam_Shoot(bossPatternCountMax, 36);
		
		
        if bossPatternCount < 280 {
            scr_Boss_Beam_Attack("Active",24);  
        } else {
            scr_Boss_Beam_Attack("Dormant",24);  
        }
    }
	
	if bossActiveAttack[1] = 11 {
		scr_Boss_Stretch("Horizontal", 0.1);
		
        bullet_direction = bossPatternDirection;
	    bullet_count = 4;
	    bullet_spread = 360 / bullet_count;
	    bullet_speed = bossbulletspeed * (1.75 + random(0.05));
		bullet_type = obj_Basic_Bullet;
		bullet_sprite = spr_Glowy_Purple_Shot;
		bullet_size = 1;
		bullet_lifespan = 300;
			
		scr_Just_Shoot();
		
		if ((bossPatternCount mod 12 = 0) and (bossPatternCount > 15)) {
			bullet_type = obj_Smart_Home_Bullet;
			bullet_sprite = spr_Glowy_Night_Shot;
			bullet_direction = random(360);
			bullet_size = 1.25;
			scr_Just_Shoot();
		}
		
		bossPatternDirection += 10;
    
    }
	
	if bossActiveAttack[1] = 12 {
		
		if bossPatternCountMax - bossPatternCount = 0 {
			scr_Boss_Stretch("Horizontal", 0.4);
		}
		
		scr_Boss_Dash_Movement(30,30);
		
		speed = bossDashSpeed;
        direction = bossDashDirection;
		
		//if bossPatternCountMax - bossPatternCount > 5 {
			scr_Jump_Movement(30);
		//}
		
		if bossPatternCount <= 1 {
			
			scr_Boss_Stretch("Horizontal", 1);
			scr_Screen_Shake(10,5);	
			
			state = states.normal;
			
	        bullet_type = obj_Rebound_Bullet;
	        bullet_sprite = spr_Glowy_Night_Shot;
			bullet_count = 15;
			bullet_speed = bossbulletspeed * 4;
			bullet_lifespan = 300;
	        bullet_spread = 360 / bullet_count;
	        scr_Just_Shoot();
			bullet_speed = bossbulletspeed * 3.5;
			bullet_direction += 180 / bullet_count;
	        scr_Just_Shoot();
		}
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

#region /// Boss Sprite


scr_Boss_Size_Lerp(0.15);

image_speed = 1;

if bossActiveAttack[1] != 0 { 
	switch(bossSide) {
	
		case(1):
			sprite_index = spr_Tough_Luck_Side_1_Blink;
			
			if image_index >= 4 {
				image_index = 4;
			}
			
			break;
		case(2):
			sprite_index = spr_Tough_Luck_Side_2_Blink;
			
			if image_index >= 4 {
				image_index = 4;
			}
			
			break;
		case(3):
			sprite_index = spr_Tough_Luck_Side_3_Blink;
			
			if image_index >= 4 {
				image_index = 4;
			}
			
			break;
		case(4):
			sprite_index = spr_Tough_Luck_Side_4;
			
			if image_index >= 4 {
				image_index = 4;
			}
			
			break;
		case(5):
			sprite_index = spr_Tough_Luck_Side_5_Blink;
			
			if image_index >= 4 {
				image_index = 4;
			}
			
			break;
		case(6):
			sprite_index = spr_Tough_Luck_Side_6_Blink;
			
			if image_index >= 4 {
				image_index = 4;
			}
			
			break;
	
	}
} else {
	switch(bossSide) {
	
	case(1):
		sprite_index = spr_Tough_Luck_Side_1;
		break;
	case(2):
		sprite_index = spr_Tough_Luck_Side_2;
		break;
	case(3):
		sprite_index = spr_Tough_Luck_Side_3;
		break;
	case(4):
		sprite_index = spr_Tough_Luck_Side_4;
		break;
	case(5):
		sprite_index = spr_Tough_Luck_Side_5;
		break;
	case(6):
		sprite_index = spr_Tough_Luck_Side_6;
		break;
	
}
}

/*
if bossActiveAttack[1] = 1 {
	sprite_index = spr_Crush_Spin;
	if image_index > 1 {
		image_speed = 0.5	
	}
	if image_index >= 10 and bossActiveAttackDuration[1] > 160 {
		image_index = 2;	
	}
} else if bossActiveAttack[1] = 2 || bossActiveAttack[1] = 5 {
	sprite_index = spr_Crush_Bomb;
	if image_index >= 3 and bossActiveAttackDuration[1] > 10 {
		image_index = 3;	
	}
} else if bossActiveAttack[1] = 3 {
	sprite_index = spr_Crush_Squeal;
	if image_index >= 3 and bossActiveAttackDuration[1] > 10 {
		image_index = 3;	
	}
} else if bossActiveAttack[1] = 4 {
	sprite_index = spr_Crush_Smush;
	if image_index >= 4 and bossActiveAttackDuration[1] > 15 {
		image_index = 4;	
	}
} else {
	sprite_index = spr_Crush;
}
*/

#endregion

scr_Boss_Soul_Hitbox(sprite_index);