/// @description  Boss Step Event

image_angle = direction + 180;

if direction <= 90 || direction > 270 {
	image_angle = direction;
}

scr_Boss_Step();

path_speed = bossmovespeed * 0.5;

#region /// Active Attack Prep

if bossActiveAttackDelay[1] <= 0 and bossActiveAttackCooldown[1] <= 0 and bossActiveAttackDuration[1] <= 0 {
    if champ = 0 {
        bossActiveAttack[1] = choose(1,1,2);
    }
	if champ = 1 {
        bossActiveAttack[1] = choose(3,4);
		if currentphase = 2 {
			bossActiveAttack[1] = choose(3,5);	
		}
    }
	if champ = 2 {
		bossActiveAttack[1] = choose(6,7);
	}
	if champ = 8 {
		bossActiveAttack[1] = choose(8,9);	
	}
	if bossActiveAttack[1] = 1 { // Targetted Plasma Ball Shot
		/*
		bossActiveAttackDelay[1] = 10;
		bossPatternCount = 7;
        bossPatternCooldown = 60;
        bossPatternCooldownMax = 60;
            bossActiveAttackCooldown[1] = 90 + random(30);
        if currentphase = 2 {
            bossActiveAttackCooldown[1] = 90 + random(30);
			bossPatternCount += 1;
        }
		bossPatternCountMax = bossPatternCount;
		bossActiveAttackDuration[1] = 15 + bossPatternCooldownMax * bossPatternCount;
		*/
		scr_Boss_Attack_Time_Setup(7, 15, 60, 90, 30);
	}
	if bossActiveAttack[1] = 2 { // Rapid Cannon Attack
		/*
		bossActiveAttackDelay[1] = 10;
		bossPatternCount = 15;
        bossPatternCooldown = 20;
        bossPatternCooldownMax = 20;
            bossActiveAttackCooldown[1] = 90 + random(30);
        if currentphase = 2 {
            bossActiveAttackCooldown[1] = 90 + random(30);
			bossPatternCount -= 5;
			bossPatternCooldown = 30;
			bossPatternCooldownMax = 30;
        }
		bossPatternCountMax = bossPatternCount;
		bossActiveAttackDuration[1] = 15 + bossPatternCooldownMax * bossPatternCount;
		*/
		if currentphase = 1 {
			scr_Boss_Attack_Time_Setup(15, 15, 20, 90, 30);
		} else {
			scr_Boss_Attack_Time_Setup(10, 15, 30, 90, 30);	
		}
	}
	if bossActiveAttack[1] = 3 {
		/*
		bossActiveAttackDelay[1] = 10;
		bossPatternCount = 9;
        bossPatternCooldown = 45;
        bossPatternCooldownMax = 45;
            bossActiveAttackCooldown[1] = 90 + random(30);
        if currentphase = 2 {
            bossActiveAttackCooldown[1] = 90 + random(30);
			bossPatternCount += 1;
        }
		bossPatternCountMax = bossPatternCount;
		bossActiveAttackDuration[1] = 15 + bossPatternCooldownMax * bossPatternCount;
		*/
		scr_Boss_Attack_Time_Setup(9, 15, 45, 90, 30);
	}
	if bossActiveAttack[1] = 4 {
		/*
		bossActiveAttackDelay[1] = 10;
		bossPatternCount = 20;
        bossPatternCooldown = 15;
        bossPatternCooldownMax = 15;
            bossActiveAttackCooldown[1] = 90 + random(30);
        if currentphase = 2 {
            bossActiveAttackCooldown[1] = 90 + random(30);
			bossPatternCount += 1;
        }
		bossPatternCountMax = bossPatternCount;
		bossActiveAttackDuration[1] = 15 + bossPatternCooldownMax * bossPatternCount;
		*/
		scr_Boss_Attack_Time_Setup(20, 15, 15, 90, 30);
	}
	if bossActiveAttack[1] = 5 {
		
		scr_Boss_Attack_Time_Setup(10, 15, 30, 90, 30);
	}
    if bossActiveAttack[1] = 6 {
		/*
        bossActiveAttackDelay[1] = 30;
        bossPatternCount = 120;
        bossPatternCountMax = bossPatternCount;
        bossPatternCooldown = 1;
        bossPatternCooldownMax = 1;
        bossActiveAttackDuration[1] = 15 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 90 + random(30); */
		
		scr_Boss_Attack_Time_Setup(120, 30, 1, 90, 30);
    }
	if bossActiveAttack[1] = 7 {
		/*
        bossActiveAttackDelay[1] = 30;
        bossPatternCount = 240;
        bossPatternCountMax = bossPatternCount;
        bossPatternCooldown = 1;
        bossPatternCooldownMax = 1;
        bossActiveAttackDuration[1] = 15 + bossPatternCooldownMax * bossPatternCount;
		
        bossActiveAttackCooldown[1] = 90 + random(30);
		*/
		
		scr_Boss_Attack_Time_Setup(14, 15, 20, 90, 30);
    }
    if bossActiveAttack[1] = 8 {
		/*
        bossActiveAttackDelay[1] = 10;
		bossPatternCount = 9;
        bossPatternCooldown = 45;
        bossPatternCooldownMax = 45;
            bossActiveAttackCooldown[1] = 90 + random(30);
        if currentphase = 2 {
            bossActiveAttackCooldown[1] = 90 + random(30);
			bossPatternCount += 1;
        }
		bossPatternCountMax = bossPatternCount;
		bossActiveAttackDuration[1] = 15 + bossPatternCooldownMax * bossPatternCount;
		*/
		scr_Boss_Attack_Time_Setup(12, 15, 35, 90, 30);
    }
	if bossActiveAttack[1] = 9 {
		/*
        bossActiveAttackDelay[1] = 10;
		bossPatternCount = 9;
        bossPatternCooldown = 35;
        bossPatternCooldownMax = 35;
            bossActiveAttackCooldown[1] = 90 + random(30);
        if currentphase = 2 {
            bossActiveAttackCooldown[1] = 90 + random(30);
			bossPatternCount += 1;
        }
		bossPatternCountMax = bossPatternCount;
		bossActiveAttackDuration[1] = 15 + bossPatternCooldownMax * bossPatternCount;
		*/
		scr_Boss_Attack_Time_Setup(9, 15, 40, 90, 30);
    }
	bossPatternCountMax = bossPatternCount;
	
}
/*
if champ = 2    {
    if bossActiveAttackDuration[1] > 0 {
    path_speed = bossmovespeed * 0.2;
    } else {
    path_speed = bossmovespeed * 1;
    }
} else {
	if currentphase = 1 {
		path_speed = bossmovespeed * 1;
	} 
	if currentphase = 2 {
		path_speed = bossmovespeed * 1.15;	
	}
}
if champ = 8 {
	if currentphase = 1 {
		path_speed = bossmovespeed * 1.15;
	} 
	if currentphase = 2 {
		path_speed = bossmovespeed * 0.7;	
	}
} */

if bossActiveAttack[1] = 1 || bossActiveAttack[1] = 3 || bossActiveAttack[1] = 6 || bossActiveAttack[1] = 7  {
	path_speed = bossmovespeed * 1;
} else {
	path_speed = bossmovespeed * 3;	
}
if bossActiveAttack[1] = 0|| bossActiveAttack[1] = 9 {
	path_speed = bossmovespeed * 0.5;	
}

if (bossActiveAttack[1] = 0 and champ = 2) || bossActiveAttack[1] = 6 {
	path_speed = bossmovespeed * 1.5;	
}

#endregion

#region /// Active Attack Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Basic_Red_Bullet;
    bullet_sprite = spr_Big_Glowy_Shot;
    bullet_speed = bossbulletspeed * 1.6;
    bullet_power = bosspower * 1.5;
    bullet_direction = (-10 + random(20)) / bossaccuracy;
    bullet_lifespan = 300;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;

if bossActiveAttackDelay[1] <= 0 {

}

#endregion

#region /// Active Attack Pattern Code

    scr_Beam_Shoot_Properties();
	
	scr_Default_Attack_Settings();
    bullet_type = obj_Basic_Red_Bullet;
    bullet_sprite = spr_Big_Glowy_Shot;
    bullet_speed = bossbulletspeed * 1.6;
    bullet_power = bosspower * 1.5;
    bullet_direction = (-10 + random(20)) / bossaccuracy;
    bullet_lifespan = 300;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;
	
	bullet_part = 1;
	bullet_part_sprite = spr_Soul_Big_Bit;
	bullet_part_area = 45;
	bullet_part_life = 30;
	bullet_part_color1 = make_color_rgb(255,0,238);
	bullet_part_color2 = c_white;
	bullet_part_frequency = 4;
    
if bossActiveAttackDelay[1] <= 0 and bossPatternCooldown <= 0 and bossPatternCount > 0 {
    
	 if bossActiveAttack[1] = 1 {
		 
		scr_Boss_Stretch("Horizontal",0.4);
		 
	    scr_Soul_Shoot();
		scr_Sound_Effect(snd_Deep_Laser);
		
		bullet_part = 0;
		
		bullet_speed = bossbulletspeed;
		bullet_power = bosspower;
	
		bullet_type = obj_Basic_Bullet;
		bullet_sprite = spr_Glowy_Hot_Pink_Shot;
		bullet_count = 2;
		bullet_spread = 40;	
		
		if currentphase = 2 {
		    bullet_count = 4;
			bullet_spread = 30;	
		}
	
		//scr_Sound_Effect(snd_Boss_Laser);
		scr_Boss_Stretch("Horizontal",0.1);
		
		scr_Soul_Shoot();
		 
		/*
	    boss_radius = 0;
	    bullet_direction = image_angle + 180 + 90 + (-10 + random(20)) / bossaccuracy;
	    boss_xoffset = lengthdir_x(50,image_angle);
	    boss_yoffset = lengthdir_y(50,image_angle) + lengthdir_y(39,image_angle + 270);
	    scr_Offset_Normal_Shoot();

	    boss_xoffset = lengthdir_x(50,image_angle + 180);
	    boss_yoffset = lengthdir_y(50,image_angle + 180) + lengthdir_y(39,image_angle + 270);
	    scr_Offset_Normal_Shoot(); */
    }
	
	if bossActiveAttack[1] = 2 {
		
		bullet_part = 0;
		bullet_speed = bossbulletspeed * 1.5;
		bullet_power = bosspower;
	
		bullet_type = obj_Basic_Laser_Bullet;
		bullet_sprite = spr_Glowy_Red_Laser;
	
		scr_Sound_Effect(snd_Boss_Laser);
		scr_Boss_Stretch("Horizontal",0.2);
		
		if currentphase = 2 {
			bullet_type = obj_Basic_Red_Bullet;
		    bullet_sprite = spr_Glowy_Enemy_Shot;
		    bullet_count = 3;
		    bullet_spread = 20;	
		}
	
	    boss_radius = 0;
	    bullet_direction = image_angle + 180 + 90 + (-10 + random(20)) / bossaccuracy;
	    boss_xoffset = lengthdir_x(50,image_angle);
	    boss_yoffset = lengthdir_y(50,image_angle) + lengthdir_y(39,image_angle + 270);
	    scr_Offset_Normal_Shoot();

	    boss_xoffset = lengthdir_x(50,image_angle + 180);
	    boss_yoffset = lengthdir_y(50,image_angle + 180) + lengthdir_y(39,image_angle + 270);
	    scr_Offset_Normal_Shoot();
	}
    
    if bossActiveAttack[1] = 3 {  
		
		if bossPatternCount mod 2 = 0 {
			
			scr_Boss_Stretch("Horizontal",0.4);
		
			bullet_speed = bossbulletspeed * 1.35;
	        bullet_power = bosspower * 2;
	        bullet_type = obj_Cross_Split_Bullet;
	        bullet_sprite = spr_Big_Cross_Split_Shot;
			bullet_lifespan = 105 + random(30);
		
			bullet_part_color1 = make_color_rgb(125,255,0);
			bullet_part_color2 = bullet_part_color1;
		
	        scr_Soul_Shoot();
		}
		
		bullet_part = 0;
		
		bullet_speed = bossbulletspeed;
		bullet_power = bosspower;
	
		bullet_type = obj_Sticky_Slide_Bullet;
	    bullet_sprite = spr_Sticky_Shot;
	    bullet_lifespan = 450;
	
		scr_Sound_Effect(snd_Boss_Laser);
		scr_Boss_Stretch("Horizontal",0.1);
	
	    boss_radius = 0;
	    bullet_direction = image_angle + 180 + 90 + (-15 + random(30)) / bossaccuracy;
	    boss_xoffset = lengthdir_x(50,image_angle);
	    boss_yoffset = lengthdir_y(50,image_angle) + lengthdir_y(39,image_angle + 270);
	    scr_Offset_Normal_Shoot();

	    boss_xoffset = lengthdir_x(50,image_angle + 180);
	    boss_yoffset = lengthdir_y(50,image_angle + 180) + lengthdir_y(39,image_angle + 270);
	    scr_Offset_Normal_Shoot();
    }
	
	if bossActiveAttack[1] = 4 {
		
		bullet_part = 0;
		bullet_speed = bossbulletspeed * 1.25;
		bullet_power = bosspower;
	
		bullet_type = obj_Sticky_Slide_Bullet;
	    bullet_sprite = spr_Sticky_Shot;
	    bullet_lifespan = 450;
	
		scr_Sound_Effect(snd_Boss_Laser);
		scr_Boss_Stretch("Horizontal",0.1);
	
	    boss_radius = 0;
	    bullet_direction = image_angle + 180 + 90 + (-15 + random(30)) / bossaccuracy;
	    boss_xoffset = lengthdir_x(50,image_angle);
	    boss_yoffset = lengthdir_y(50,image_angle) + lengthdir_y(39,image_angle + 270);
	    scr_Offset_Normal_Shoot();

	    boss_xoffset = lengthdir_x(50,image_angle + 180);
	    boss_yoffset = lengthdir_y(50,image_angle + 180) + lengthdir_y(39,image_angle + 270);
	    scr_Offset_Normal_Shoot();
	}
	
	if bossActiveAttack[1] = 5 {
		
		bullet_part = 0;
		bullet_speed = bossbulletspeed * 3;
		bullet_power = bosspower;
		
		scr_Sound_Effect(snd_Boss_Laser);
		scr_Boss_Stretch("Horizontal",0.1);
		
		bullet_type = obj_Rebound_Bullet;
		bullet_sprite = spr_Kylie_Shot;
		bullet_lifespan = 270;
		bullet_count = 3;
		bullet_spread = 40;
		
		if bossPatternCount > 1 {
			bullet_count = 1;
		}	
	
	    boss_radius = 0;
	    bullet_direction = image_angle + 180 + 90 + (-15 + random(30)) / bossaccuracy;
	    boss_xoffset = lengthdir_x(50,image_angle);
	    boss_yoffset = lengthdir_y(50,image_angle) + lengthdir_y(39,image_angle + 270);
	    scr_Offset_Normal_Shoot();

	    boss_xoffset = lengthdir_x(50,image_angle + 180);
	    boss_yoffset = lengthdir_y(50,image_angle + 180) + lengthdir_y(39,image_angle + 270);
	    scr_Offset_Normal_Shoot();
	}
	
    if bossActiveAttack[1] = 6 {
		if bossPatternCount mod 10 = 0 {
			scr_Boss_Stretch("Horizontal",0.1);	
		}
		
        scr_Default_Attack_Settings();
        bullet_type = obj_Laser_Beam_Charge;
        bullet_sprite = spr_Laser_Beam_Charge;
        bullet_speed = path_speed * 1;
        bullet_power = bosspower;
        bullet_direction = image_angle - 90 + (-0.1 + random(0.2)) / bossaccuracy;
        bullet_lifespan = 7;
        bullet_size = 1;
        bullet_count = 1;
        bullet_spread = 0;
        boss_radius = 0;
        bullet_sprite = spr_Red_Beam;
        beam_sprite = spr_Red_Beam;
        beamSize = 0.6;
        bossbeamattackactive = 1;
		
		var beamstart = 135 - bossPatternCount;
		
		scr_Easy_Boss_Beam_Shoot(bossPatternCountMax, 18);
    
        /*if bossPatternCount < 105 {
            scr_Boss_Beam_Attack_New("Active",18,scr_Boss_Beam_Frame(beamstart));  
        } else {
            scr_Boss_Beam_Attack_New("Dormant",18,scr_Boss_Beam_Frame(beamstart));    
        } */
    }  
	
	if bossActiveAttack[1] = 7 {
		if bossPatternCount mod 10 = 0 {
			scr_Boss_Stretch("Horizontal",0.1);	
		}
		
		/*
        scr_Default_Attack_Settings();
        bullet_type = obj_Laser_Beam_Charge;
        bullet_sprite = spr_Laser_Beam_Charge;
        bullet_speed = path_speed * 1;
        bullet_power = bosspower;
        bullet_direction = image_angle - 90 + (-0.1 + random(0.2)) / bossaccuracy;
        bullet_lifespan = 7;
        bullet_size = 1;
        bullet_count = 1;
        bullet_spread = 0;
        boss_radius = 0;
        bullet_sprite = spr_Solid_Red_Beam;
        beam_sprite = spr_Solid_Red_Beam;
        beamSize = 0.6;
        bossbeamattackactive = 1;
    
        var beamstart = 225 - bossPatternCount;
    
        if bossPatternCount < 225 {
            scr_Boss_Beam_Attack_New("Active",18,scr_Boss_Beam_Frame(beamstart));
        } else {
            scr_Boss_Beam_Attack_New("Dormant",18,scr_Boss_Beam_Frame(beamstart));    
        }
		*/
		
		bullet_part = 0;
		
		bullet_speed = bossbulletspeed * 2.25;
		bullet_power = bosspower;
	
		bullet_type = obj_Basic_Laser_Bullet;
		bullet_sprite = spr_Glowy_Red_Laser;
		bullet_lifespan = 300;
		
		if currentphase = 2 {
			bullet_type = obj_Basic_Red_Bullet;
			bullet_sprite = spr_Glowy_Enemy_Shot;
			bullet_count = 2;
			bullet_spread = 10;	
		}
	
		scr_Sound_Effect(snd_Boss_Laser);
		scr_Boss_Stretch("Horizontal",0.05);
	
		if currentphase = 1 {
			boss_radius = 0;
			bullet_direction = (-10 + random(20)) / bossaccuracy;
			boss_xoffset = lengthdir_x(50,image_angle);
			boss_yoffset = lengthdir_y(50,image_angle) + lengthdir_y(39,image_angle + 270);
			scr_Offset_Soul_Shoot();

			boss_xoffset = lengthdir_x(50,image_angle + 180);
			boss_yoffset = lengthdir_y(50,image_angle + 180) + lengthdir_y(39,image_angle + 270);
			scr_Offset_Soul_Shoot();
		} else {
			boss_radius = 0;
			bullet_direction = image_angle + 180 + 90 + (-10 + random(20)) / bossaccuracy;
			boss_xoffset = lengthdir_x(50,image_angle);
			boss_yoffset = lengthdir_y(50,image_angle) + lengthdir_y(39,image_angle + 270);
			scr_Offset_Normal_Shoot();

			boss_xoffset = lengthdir_x(50,image_angle + 180);
			boss_yoffset = lengthdir_y(50,image_angle + 180) + lengthdir_y(39,image_angle + 270);
			scr_Offset_Normal_Shoot();
		}
		
    }  
	
	if bossActiveAttack[1] = 8 {
		scr_Boss_Stretch("Horizontal",0.15);
		
		bullet_count = 1;
		bullet_spread = 45;
		if bossPatternCount mod 2 = 1 {
		    bullet_count = 2;
			//bullet_speed = bossbulletspeed * 1.35;
		} 
	
		scr_Sound_Effect(snd_Boss_Laser);
	
		boss_radius = 0;
		bullet_direction = image_angle + 180 + 90 + (-10 + random(20)) / bossaccuracy;
		boss_xoffset = lengthdir_x(50,image_angle);
		boss_yoffset = lengthdir_y(50,image_angle) + lengthdir_y(39,image_angle + 270);
		scr_Offset_Normal_Shoot();

		boss_xoffset = lengthdir_x(50,image_angle + 180);
		boss_yoffset = lengthdir_y(50,image_angle + 180) + lengthdir_y(39,image_angle + 270);
		scr_Offset_Normal_Shoot();
    }
	
	if bossActiveAttack[1] = 9 {
		scr_Boss_Stretch("Horizontal",0.15);
		
	        bullet_count = 3;
	        bullet_spread = 20;
	    if currentphase = 2 {
	        bullet_count = 5;
	        bullet_spread = 20;
			bullet_speed = bossbulletspeed * 1.35;
	    } 
	    scr_Soul_Shoot();
		
    }
    
    bossPatternCount -= 1;
    bossPatternCooldown += bossPatternCooldownMax;
}

#endregion

#region /// Active Attack Post
   
if bossActiveAttackDuration[1] <= 0 { 
    path_speed = bossmovespeed * 1;
    bossActiveAttack[1] = 0;

}

#endregion

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


if bossActiveAttack[1] = 1 || bossActiveAttack[1] = 3 || bossActiveAttack[1] = 6 || bossActiveAttack[1] = 9 { 
	sprite_index = spr_Wall_Watcher_Eye_Shoot
	if bossActiveAttackDuration[1] > 10 and image_index > 6 {
		image_index = 5;
	}
} else if bossActiveAttack[1] = 2 || bossActiveAttack[1] = 4 || bossActiveAttack[1] = 5 || bossActiveAttack[1] = 7 || bossActiveAttack[1] = 8  { // Default
	sprite_index = spr_Wall_Watcher_Gun_Shoot
	if bossActiveAttackDuration[1] > 10 and image_index > 5 {
		image_index = 5;
	}
} else {
	sprite_index = spr_Wall_Watcher;
}

#endregion

scr_Boss_Soul_Hitbox(sprite_index);