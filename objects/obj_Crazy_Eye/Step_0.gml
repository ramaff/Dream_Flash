/// @description  Boss Step Event

scr_Boss_Step();

if currentphase = 1 {
	scr_Boss_Height_Bob(40, 1, 0);
} 
if currentphase = 2 {
	if boss_height > 0 {
		var fallSpeed = 100 / max(boss_height, 1);
		boss_height -= fallSpeed;
		y += fallSpeed
	}
	if boss_height < 0 {
		y += boss_height;
		boss_height -= boss_height;
	}
	scr_Boss_Wobble("Horizontal", 0.3, 1, 0);
}

depth = -1;


if champ = 1 {
    direction += -1 + random(2);
    scr_Wall_Bounce();
}

///Passive Attack Prep

if bossPassiveAttackDelay[1] <= 0 and bossPassiveAttackCooldown[1] <= 0 {
	speed += 0.33;
    direction += -1 + random(2);
    if speed >= bossmovespeed * 1.3 {
		speed = bossmovespeed * 1.3;
	}
    if currentphase = 2 {
		if speed >= bossmovespeed * 0.175 {
			speed = bossmovespeed * 0.175;
		}
		direction = scr_Soul_Point();
    }
	
	if bossActiveAttack[1] != 0 {
		speed = bossmovespeed * 0.025;	
	}
    
    bossPassiveAttack[1] = 1;
    bossPassiveAttackCooldown[1] = 5;
	if currentphase = 2 {
		bossPassiveAttackCooldown[1] += 15;
	}
    bossPassiveAttackDelay[1] = 2;
    
}

if champ = 8 and currentphase = 1 and bossActiveAttack[1] = 0 {
	if bossPassiveAttackDelay[2] <= 0 and bossPassiveAttackCooldown[2] <= 0 {
		bossPassiveAttack[2] = 1;
		bossPassiveAttackCooldown[2] = 12;
	}
}


///Passive Attack Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Poison_Pool;
    bullet_sprite = spr_Jelly_Pool;
    bullet_speed = bossbulletspeed * 0;
    bullet_power = bosspower * 0.15;
    bullet_direction = (-180 + random(360)) / bossaccuracy;
    bullet_lifespan = 75 + irandom(15);
    bullet_size = 0.65 + random(0.15);
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;
	bullet_depth = 20;

if bossPassiveAttack[1] = 1 {
	bullet_blend = c_red;
	boss_yoffset = boss_height;
	if currentphase = 2 {
		boss_yoffset += 20;	
	}
    scr_Just_Shoot();    
}

    scr_Default_Attack_Settings();
    bullet_type = obj_Friction_Bullet;
    bullet_sprite = spr_Glowy_Dark_Blue_Shot;
    bullet_speed = bossbulletspeed * 0.75;
    bullet_power = bosspower;
    bullet_direction = (-10 + random(20)) / bossaccuracy;
    bullet_lifespan = 150;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;

if bossPassiveAttack[2] = 1 {
    bullet_direction = bossEyeDirection;
    scr_Just_Shoot();    
	bossEyeDirection += 50;
    
}
if bossPassiveAttack[2] = 2 {
	bullet_sprite = spr_Glowy_Purple_Shot;
    bullet_direction = bossHandDirection;
    bullet_speed = bossbulletspeed * 0.95;
    bullet_count = 2;
	bullet_spread = 180;
    scr_Just_Shoot();  
	bullet_speed = bossbulletspeed * 0.7;
	scr_Just_Shoot();  
	bullet_speed = bossbulletspeed * 0.45;
	scr_Just_Shoot();
	
    bossHandDirection += 20 + irandom(3);
    
}

bossPassiveAttack[1] = 0;
bossPassiveAttack[2] = 0;

///Active Attack Prep

if bossActiveAttackDelay[1] <= 0 and bossActiveAttackCooldown[1] <= 0 and bossActiveAttackDuration[1] <= 0 {
    if champ = 0 {
        bossActiveAttack[1] = 0;
        if currentphase = 2 and boss_phase_transition > 1 {
            bossActiveAttack[1] = 1;
        }
    }
    if champ = 1 {
        bossActiveAttack[1] = 2;
		if currentphase = 2 and boss_phase_transition > 1 {
			bossActiveAttack[1] = 3;
		}
    }
	if champ = 8 {
        bossActiveAttack[1] = 4;
		if currentphase = 2 and boss_phase_transition > 1 {
			bossActiveAttack[1] = 5;
			if bossActiveAttackCooldown[1] > 180 {
				bossActiveAttackCooldown[1] = 180;	
			}
		}
    }
    if bossActiveAttack[1] = 1 {
		scr_Boss_Attack_Time_Setup(1, 40, 1, 120, 30, 10);
		/*
        bossActiveAttackDelay[1] = 20;
        bossActiveAttackDuration[1] = 10;
        bossActiveAttackCooldown[1] = 120 + random(30);*/
    }
	if bossActiveAttack[1] = 2 {
		scr_Boss_Attack_Time_Setup(1, 30, 1, 135, 90);
		/*
        bossActiveAttackDelay[1] = 5;
        bossActiveAttackDuration[1] = 10;
        bossActiveAttackCooldown[1] = 75 + random(15);
		*/
    }
    if bossActiveAttack[1] = 3 {
		scr_Boss_Attack_Time_Setup(12, 40, 8, 120, 10);
		bossPatternDirection = random(360);
		/*
        bossActiveAttackDelay[1] = 15;
        bossPatternCount = 12;
        bossPatternCooldown = 8;
		bossPatternDirection = random(360);
        bossPatternCooldownMax = 8;
        bossActiveAttackDuration[1] = 30 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 120 + random(60); */
    }
	if bossActiveAttack[1] = 4 {
		scr_Boss_Attack_Time_Setup(180, 30, 1, 360, 150);
    }
	if bossActiveAttack[1] = 5 {
		scr_Boss_Attack_Time_Setup(180, 40, 1, 120, 30);
		bossPatternDirection = scr_Soul_Point();
    }
	
    bossPatternCountMax = bossPatternCount;
}


/// Active Attack Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Basic_Bullet;
    bullet_sprite = spr_Glowy_Enemy_Shot;
    bullet_speed = bossbulletspeed * 1.5;
    bullet_power = bosspower;
    bullet_direction = (-10 + random(20)) / bossaccuracy;
    bullet_lifespan = 300 + irandom(90);
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;

if bossActiveAttackDelay[1] <= 0 {        
    
    if bossActiveAttack[1] = 1 {
		scr_Boss_Stretch("Vertical", 0.4);
		
		bullet_sprite = spr_Glowy_Orange_Shot;
		bullet_direction = random(360);
        bullet_speed = bossbulletspeed * (1.25 + random(0.1));
        bullet_count = 16;
        bullet_spread = 360 / bullet_count;
		boss_xoffset = 0;
		boss_yoffset = -60;
		
        scr_Just_Shoot();
		
		bullet_direction += 180 / bullet_count;
		repeat(3) {
			bullet_count = 4;
	        bullet_spread = 360 / bullet_count;
			bullet_speed -= bossbulletspeed * 0.25;
	        scr_Just_Shoot();
		}
		
        bossActiveAttack[1] = -1;
    }
	if bossActiveAttack[1] = 2 {
		scr_Boss_Stretch("Vertical", 0.4);
		
		bullet_sprite = spr_Glowy_Purple_Shot;
		bullet_direction = random(360);
        bullet_speed = bossbulletspeed * (1.55);
        bullet_count = 4;
        bullet_spread = 360 / bullet_count;
		
		direction = scr_Soul_Point();
		
        scr_Just_Shoot();
		
		bullet_speed = bossbulletspeed * 1.3;
		scr_Just_Shoot();
		bullet_speed = bossbulletspeed * 1.05;
		scr_Just_Shoot();
		bullet_speed = bossbulletspeed * 0.8;
		scr_Just_Shoot();

        bossActiveAttack[1] = -2;
    }
	
}

/// Active Attack Pattern Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Basic_Bullet;
    bullet_sprite = spr_Glowy_Enemy_Shot;
    bullet_speed = bossbulletspeed * 1.5;
    bullet_power = bosspower;
    bullet_direction = (-10 + random(20)) / bossaccuracy;
    bullet_lifespan = 300;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;

if bossActiveAttackDelay[1] <= 0 and bossPatternCooldown <= 0 and bossPatternCount > 0 {
   
    if bossActiveAttack[1] = 3 {
		scr_Boss_Stretch("Horizontal", 0.1);
		
		boss_xoffset = 0;
		boss_yoffset = -60;
		
		bullet_sprite = spr_Glowy_Purple_Shot;
	    bullet_direction = bossPatternDirection;
	    bullet_speed = bossbulletspeed * 1.05;
	    bullet_count = 2;
		bullet_spread = 180;
	    scr_Just_Shoot();  
		bullet_speed = bossbulletspeed * 0.8;
		scr_Just_Shoot();  
		bullet_speed = bossbulletspeed * 0.55;
		scr_Just_Shoot();
	
	    bossPatternDirection += 23 + irandom(8);
    
	}
	
	if bossActiveAttack[1] = 4 {
		if bossPatternCount mod 10 = 0 {
			scr_Boss_Stretch("Vertical",0.1);	
		}
		
        scr_Default_Attack_Settings();
		scr_Beam_Shoot_Properties();
        bullet_type = obj_Laser_Beam_Charge;
        bullet_sprite = spr_Laser_Beam_Charge;
        bullet_speed = 0;
        bullet_power = bosspower;
        bullet_direction = 270 + (-0.1 + random(0.2)) / bossaccuracy;
        bullet_lifespan = 7;
        bullet_size = 1;
        bullet_count = 1;
        bullet_spread = 0;
        boss_radius = 0;
        bullet_sprite = spr_Arcane_Beam;
        beam_sprite = spr_Arcane_Beam;
        beamSize = 0.6 + scr_Wave(0, 0.05, 0.2, 0);
        bossbeamattackactive = 1;
		
		bullet_depth = -5;
		
		var beamstart = bossPatternCountMax - bossPatternCount;
		
		boss_xoffset = 5;
    
		scr_Easy_Boss_Beam_Shoot(bossPatternCountMax, 25);
        /*var beamFr = min(5,floor((bossPatternCountMax - bossPatternCount) / 5));
        if bossPatternCount < (bossPatternCountMax - 30) {
            scr_Boss_Beam_Attack_New("Active",25,beamFr);  
        } else {
            scr_Boss_Beam_Attack_New("Dormant",25,beamFr);    
        } */
		
		var beamMoveSpeed = (bossPatternCountMax - bossPatternCount) / 40;
		y -= beamMoveSpeed;
		x = scr_Converge(x, obj_Soul_Parent.perX, beamMoveSpeed);
		
    } 
	
	if bossActiveAttack[1] = 5 {
		
		if bossPatternCount mod 10 = 0 {
			scr_Boss_Stretch("Vertical",0.1);	
		}
		if bossPatternCount mod 15 = 0 and bossPatternCount > 12 {
			bullet_sprite = spr_Glowy_Dark_Blue_Shot;
			bullet_type = obj_Very_Wide_Wiggle_Bullet;
			bullet_direction = bossPatternDirection;
	        bullet_speed = bossbulletspeed * (2.25);
	        bullet_count = 1;
			boss_xoffset = 5;
			boss_yoffset = -60;
		
	        scr_Just_Shoot();
		
			bullet_type = obj_Very_Wide_Wiggle_Bullet_Alt;
			scr_Just_Shoot();
			
			bullet_direction = bossPatternDirection + 180;
			bullet_type = obj_Very_Wide_Wiggle_Bullet;
			scr_Just_Shoot();
			bullet_type = obj_Very_Wide_Wiggle_Bullet_Alt;
			scr_Just_Shoot();
		}
		
		/*
		if bossPatternCount < 12 and bossPatternCount mod 3 = 1 {
			bullet_sprite = spr_Glowy_Dark_Blue_Shot;
			bullet_type = obj_Modest_Wave_Bullet;
		    bullet_direction = bossPatternDirection;
		    bullet_speed = bossbulletspeed * 1.5;
		    bullet_count = 6;
			bullet_spread = 360 / bullet_count;
			boss_xoffset = 5;
			boss_yoffset = -60;
			
		    scr_Just_Shoot();  
		}
		*/
		
        scr_Default_Attack_Settings();
		scr_Beam_Shoot_Properties();
        bullet_type = obj_Laser_Beam_Charge;
        bullet_sprite = spr_Laser_Beam_Charge;
        bullet_speed = 0;
        bullet_power = bosspower;
        bullet_direction = bossPatternDirection + 90 + (-0.1 + random(0.2)) / bossaccuracy;
        bullet_lifespan = 7;
        bullet_size = 1;
        bullet_count = 2;
        bullet_spread = 180;
        boss_radius = 0;
        bullet_sprite = spr_Arcane_Beam;
        beam_sprite = spr_Arcane_Beam;
        beamSize = 0.6 + scr_Wave(0, 0.05, 0.2, 0);
        bossbeamattackactive = 1;
		
		bullet_depth = -5;
		
		var beamstart = bossPatternCountMax - bossPatternCount;
		
		boss_xoffset = 5;
		boss_yoffset = -60;
		
		scr_Easy_Boss_Beam_Shoot(bossPatternCountMax, 25);
		/*
		var beamFr = min(5,floor((bossPatternCountMax - bossPatternCount) / 5));
        if bossPatternCount < (bossPatternCountMax - 30) {
            scr_Boss_Beam_Attack_New("Active",25,beamFr);  
        } else {
            scr_Boss_Beam_Attack_New("Dormant",25,beamFr);    
        } */
		
		var beamMoveSpeed = (bossPatternCountMax - bossPatternCount) / 1500;
		bossPatternDirection = scr_Converge(bossPatternDirection, scr_Soul_Point(), beamMoveSpeed);
		
    }
	
    bossPatternCount -= 1;
    bossPatternCooldown += bossPatternCooldownMax;
}

/// Active Attack Post
   
   
   
if bossActiveAttackDuration[1] <= 0 { 
    bossActiveAttack[1] = 0;
    bossActiveAttack[2] = 0;
}

#region /// Boss Sprite Code

scr_Boss_Size_Lerp(0.15);

//show_debug_message("boss attack: " + string(bossActiveAttack[1]) + "attack duration: " + string(bossActiveAttackDuration[1]) + ", frame: " + string(image_index) + string(sprite_get_name(sprite_index)));

if bossActiveAttack[1] != 0 {
	if bossActiveAttack[1] = 2 || bossActiveAttack[1] = 4 {
		scr_Boss_Attack_Sprite(spr_Crazy_Eye_Blink, 10, 5, 5);
	}
	if bossActiveAttack[1] = 1 || bossActiveAttack[1] = 3 || bossActiveAttack[1] = 2 {
		scr_Boss_Attack_Sprite(spr_Crazy_Eye_Phase_2_Blink, 40, 6, 6);
	}
} else {
	if currentphase = 1 {
		sprite_index = spr_Crazy_Eye;
	}
	if currentphase = 2 {
		var _phase_into = 2
		var _transition_sprite = spr_Crazy_Eye_Phase_2_Fall;
		var _new_sprite = spr_Crazy_Eye_Phase_2;
		var _final_frame = 4;
		
		if boss_phase_transition < _phase_into {
			if sprite_index != _transition_sprite {
				image_index = 0;
				sprite_index = _transition_sprite
			}
			if image_index >= _final_frame {
				boss_phase_transition = _phase_into;	
			} else if bossActiveAttackCooldown[1] <= 2 {
				bossActiveAttackCooldown[1] = 2;
			}
		} else {
			sprite_index = _new_sprite;	
		}
	}
}

#endregion

scr_Boss_Soul_Hitbox(spr_Crazy_Eye_Hitbox);

