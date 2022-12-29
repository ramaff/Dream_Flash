/// @description  Boss Step Event

depth = -8;

scr_Boss_Step();

scr_Wall_Bounce();

///Passive Attack Prep

if bossPassiveAttackDelay[1] <= 0 and bossPassiveAttackCooldown[1] <= 0 {
    if champ = 1 and currentphase = 2 {
        bossPassiveAttack[1] = 1;
        bossPassiveAttackCooldown[1] = 210 + irandom(60);
        bossPassiveAttackDelay[1] = 0;
    } /*
    if champ = 2 {
        bossPassiveAttack[1] = 4;
        bossPassiveAttackCooldown[1] = 20 + irandom(3);
        bossPassiveAttackDelay[1] = 0;
    }
	*/
}


///Passive Attack Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Rain_Drop_Bullet;
    bullet_sprite = spr_Water_Drop_Bullet;
    bullet_speed = bossbulletspeed * (0.5 + random(0.5));
    bullet_power = bosspower;
    bullet_direction = (-180 + random(360)) / bossaccuracy;
    bullet_lifespan = 400;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;

if bossPassiveAttack[1] = 1 {
    bullet_type = obj_Shower_Bullet;
	bullet_sprite = spr_Satellite_Bullet;
	bullet_speed = bossbulletspeed * 2.5;
	bullet_direction = point_direction(x,y,obj_Soul_Parent.x,obj_Soul_Parent.y-1500)
    scr_Just_Shoot(); 
}

bossPassiveAttack[1] = 0;
bossPassiveAttack[2] = 0;

///Active Attack Prep

if bossActiveAttack[1] = 5 || bossActiveAttack[1] = 4 {
	var bossdirection = point_direction(x,y,instance_nearest(x,y,obj_Soul_Parent).x,instance_nearest(x,y,obj_Soul_Parent).y);
	speed = 0.5 * bossmovespeed;
	if bossActiveAttack[1] = 4 {
		speed = 0.1 * bossmovespeed;
	}
	direction = bossdirection;	
} else {
	speed = 0;	
}

if bossActiveAttackDelay[1] <= 0 and bossActiveAttackCooldown[1] <= 0 and bossActiveAttackDuration[1] <= 0 {

	image_angle = 0;

    bossActiveAttack[1] = choose(1,2,3);
	if champ = 1 {
		bossActiveAttack[1] = choose(2,7,6);
		//bossActiveAttack[1] = 7;
	}
	if champ = 2 {
		bossActiveAttack[1] = choose(8,2,3);
		//bossActiveAttack[1] = 2;
	}
    if currentphase = 2 {
        bossActiveAttack[1] = choose(4,5);
    }
	if bossActiveAttack[1] = 1 {
        bossActiveAttackDelay[1] = 5;
        bossActiveAttackDuration[1] = 25;
        bossActiveAttackCooldown[1] = 100 + random(15);
    }
    if bossActiveAttack[1] = 2 {
        scr_Boss_Dash_Setup();
        bossPatternCount = 105;
        bossPatternCountMax = bossPatternCount;
        bossPatternCooldown = 1;
        bossPatternCooldownMax = 1;
        bossActiveAttackDuration[1] = 15 + bossattackspeed * bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 30 + random(15);
		
		var bossdirection = scr_Soul_Point();
        bossDashDirection = bossdirection;
		bossMaxDashSpeed = 2.5 * bossmovespeed;
		bossDashSpeed = 0;
    }
	if bossActiveAttack[1] = 3 {
        bossActiveAttackDelay[1] = 5;
        bossActiveAttackDuration[1] = 60;
        bossActiveAttackCooldown[1] = 100 + random(15);
    }
    if bossActiveAttack[1] = 4 {
        bossActiveAttackDelay[1] = 30;
        bossPatternCount = 300;
        bossPatternCountMax = bossPatternCount;
        bossPatternCooldown = 1;
        bossPatternCooldownMax = 1;
		bossPatternDirection = direction;
        bossActiveAttackDuration[1] = 15 + bossPatternCooldownMax * bossPatternCount;
        
        bossActiveAttackCooldown[1] = 100 + random(15);
    }
    if bossActiveAttack[1] = 5 {
        bossActiveAttackDelay[1] = 60;
        bossPatternCount = 5;
        bossPatternCountMax = bossPatternCount;
        bossPatternCooldown = 45;
        bossPatternCooldownMax = 45;
		bossPatternDirection = direction;
        bossActiveAttackDuration[1] = 15 + bossPatternCooldownMax * bossPatternCount;
        
        bossActiveAttackCooldown[1] = 100 + random(15);
    }
	if bossActiveAttack[1] = 6 {
        bossActiveAttackDelay[1] = 30;
        bossPatternCount = 10;
        bossPatternCountMax = bossPatternCount;
        bossPatternCooldown = 20;
        bossPatternCooldownMax = 20;
		bossPatternDirection = direction;
        bossActiveAttackDuration[1] = 15 + bossPatternCooldownMax * bossPatternCount;
        
        bossActiveAttackCooldown[1] = 100 + random(15);
    }
	if bossActiveAttack[1] = 7 {
        bossActiveAttackDelay[1] = 30;
        bossPatternCount = 4;
        bossPatternCountMax = bossPatternCount;
        bossPatternCooldown = 40;
        bossPatternCooldownMax = 40;
		bossPatternDirection = direction;
        bossActiveAttackDuration[1] = 15 + bossPatternCooldownMax * bossPatternCount;
        
        bossActiveAttackCooldown[1] = 100 + random(15);
    }
	if bossActiveAttack[1] = 8 {
        bossActiveAttackDelay[1] = 30;
        bossPatternCount = 12;
        bossPatternCountMax = bossPatternCount;
        bossPatternCooldown = 20;
        bossPatternCooldownMax = 20;
		bossPatternDirection = direction;
        bossActiveAttackDuration[1] = 15 + bossPatternCooldownMax * bossPatternCount;
        
        bossActiveAttackCooldown[1] = 100 + random(15);
    }
    bossPatternCountMax = bossPatternCount;
}


/// Active Attack Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Basic_Bullet;
    bullet_sprite = spr_Glowy_Blue_Shot;
    bullet_speed = bossbulletspeed;
    bullet_power = bosspower;
    bullet_direction = (-20 + random(40)) / bossaccuracy;
    bullet_lifespan = 400;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    bullet_image_speed = 0.2;
    boss_radius = 0;
    
if bossActiveAttackDelay[1] <= 0 {
        
    if bossActiveAttack[1] = 1 {
		scr_Boss_Stretch("Horizontal", 0.45);
		
		bullet_speed = bossbulletspeed * 1.2;
        bullet_count = 12;
        bullet_spread = 360 / bullet_count;
        scr_Just_Shoot();
		bullet_speed = bossbulletspeed * 1.8;
		bullet_count = 12;
        bullet_spread = 360 / bullet_count;
        scr_Just_Shoot();
		bullet_speed = bossbulletspeed * 1.5;
		bullet_count = 6;
        bullet_spread = 360 / bullet_count;
        scr_Just_Shoot();
    
        bossActiveAttack[1] = 0;
    }
    if bossActiveAttack[1] = 3 {
		scr_Boss_Stretch("Horizontal", 0.45);
		
		bullet_type = obj_Satellite_Bullet;
		bullet_sprite = spr_Satellite_Bullet;
		bullet_speed = bossbulletspeed * 2.5;
		bullet_direction = point_direction(x,y,obj_Soul_Parent.perX,obj_Soul_Parent.perY-1500)
        scr_Just_Shoot();
    
        bossActiveAttack[1] = 0;
    }
}

/// Active Attack Pattern Code
    
	scr_Beam_Shoot_Properties();
    scr_Default_Attack_Settings();
    bullet_type = obj_Basic_Bullet;
    bullet_sprite = spr_Glowy_Blue_Shot;
    bullet_speed = bossbulletspeed;
    bullet_power = bosspower;
    bullet_direction = (-20 + random(40)) / bossaccuracy;
    bullet_lifespan = 400;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    bullet_image_speed = 0.2;
    boss_radius = 0;

if bossActiveAttackDelay[1] <= 0 and bossPatternCooldown <= 0 and bossPatternCount > 0 {
        
    if bossActiveAttack[1] = 2 {
		if (bossPatternCountMax - bossPatternCount > 15) and frac(bossPatternCount / 15) = 0 { 
		
			scr_Boss_Stretch("Horizontal", 0.3);
		
            bullet_type = obj_Shoot_Miner_Bullet;
			
			bullet_part = 1;
			bullet_part_sprite = spr_Bullet_Part;
			bullet_part_area = 25;
			bullet_part_life = 20;
			bullet_part_color1 = make_color_rgb(52,156,255);
			bullet_part_color2 = c_white;
			
			if champ = 2 {
				bullet_type = obj_Split_Miner_Bullet;
				bullet_sprite = spr_Glowy_Purple_Shot;
			}
			
			bullet_speed = bossbulletspeed * (1.5 + random(0.2));
            scr_Just_Shoot();
        }
		
        scr_Boss_Dash_Movement(30,15);
		
		speed = bossDashSpeed;
        direction = bossDashDirection;
		
		image_angle = speed;
		
		if hspeed > 0 {
			image_angle = -image_angle;
		}
    }
    if bossActiveAttack[1] = 4 {
		if bossPatternCount mod 5 = 0 {
			scr_Boss_Stretch("Horizontal", 0.03);	
		}
		
		scr_Soul_Push_Pull_Offset(0,134,2);
		
		if bossPatternCount mod 3 = 0 {
			var color = make_color_rgb(50, 100, 255);
			scr_Particle_Suck_In(obj_Bullet_Trail_Target, spr_Soul_Big_Bit, color, color, 1, 12, 0, 360, 500, 0.4, 60, false, 0, 134)
		}
		
		if frac(bossPatternCount / 60) = 0 {
			scr_Boss_Stretch("Horizontal", 0.3);
			
			bullet_speed = bossbulletspeed * 1.5;
            bullet_type = obj_Wave_Bullet;
			bullet_count = 15;
			bullet_spread = 360 / bullet_count;
			boss_xoffset = 0;
			boss_yoffset = 134;
			if champ = 2 {
				bullet_speed = bossbulletspeed * 2.5;
				bullet_sprite = spr_Glowy_Purple_Laser;
				bullet_type = obj_Direction_Bullet;
			}
            scr_Offset_Normal_Shoot();
        }
		
		scr_Default_Attack_Settings();
        bullet_type = obj_Laser_Beam_Charge;
        bullet_sprite = spr_Laser_Beam_Charge
        bullet_speed = 0;
        bullet_power = bosspower * 0.5;
        bullet_direction = 270 + (-0.2 + random(0.4)) / bossaccuracy;
        bullet_lifespan = 7;
        bullet_size = 1;
        bullet_count = 1;
        bullet_spread = 0;
        boss_radius = 0;
		setbeamlength = bossHeight;
        
        bullet_sprite = spr_Arcane_Beam;
        beam_sprite = spr_Arcane_Beam;
        beamSize = 0.4;
        bossbeamattackactive = 1;
        boss_yoffset = 15;
    
        if bossPatternCount < 340 {
            scr_Boss_Beam_Attack("Active",24);  
        } else {
            scr_Boss_Beam_Attack("Dormant",24);  
        }
    }
	
	if bossActiveAttack[1] = 5 {
		scr_Boss_Stretch("Horizontal", 0.3);
		
		if bossPatternCount > 1 {
	        bullet_type = obj_Static_Bullet;
			bullet_sprite = spr_Arcane_Bullet;
			bullet_speed = bossbulletspeed * (1.5 + random(0.2));
	        scr_Soul_Shoot();
		}
		
		if bossPatternCount = 1 and champ != 2 {
			scr_Boss_Stretch("Horizontal", 0.3);
			
			bullet_speed = bossbulletspeed * 1.7;
			bullet_type = obj_Basic_Bullet;
			bullet_count = 12;
			bullet_spread = 120 / bullet_count;
            scr_Soul_Shoot();
			
			bullet_count = 24;
			bullet_speed = bossbulletspeed * 1.15;
			bullet_spread = 360 / bullet_count;
			
			scr_Just_Shoot();
		}
		if champ = 2 and bossPatternCount = 1 {
			scr_Boss_Stretch("Horizontal", 0.3);
			
			bullet_speed = bossbulletspeed * 1.5;
			bullet_type = obj_Static_Bullet;
			bullet_sprite = spr_Arcane_Bullet;
			bullet_count = 10;
			bullet_spread = 360 / bullet_count;
            scr_Just_Shoot();
			
			bullet_count = 30;
			bullet_speed = bossbulletspeed * 1.25;
			bullet_spread = 360 / bullet_count;
			bullet_type = obj_Basic_Bullet;
			bullet_sprite = spr_Glowy_Blue_Shot;
			
			scr_Just_Shoot();
		}
    }
	
	if bossActiveAttack[1] = 6 {
		bullet_type = obj_Incoming_Bullet;
		bullet_sprite = spr_Satellite_Bullet;
		bullet_speed = bossbulletspeed * 2.5;
		bullet_direction = point_direction(x,y,obj_Soul_Parent.perX,obj_Soul_Parent.perY-1500)
        scr_Just_Shoot();
    }
	if bossActiveAttack[1] = 7 {
		//if bossPatternCount = bossPatternCountMax {
		//	bullet_type = obj_Satellite_Bullet;
		//} else {
			bullet_type = obj_Shower_Bullet;
		//}
		bullet_sprite = spr_Satellite_Bullet;
		bullet_speed = bossbulletspeed * 2.5;
		bullet_direction = point_direction(x,y,1000 + random(2000),obj_Soul_Parent.perY-1500)
        scr_Just_Shoot();
    }
	if bossActiveAttack[1] = 8 {
		bullet_lifespan = 450;
	    bullet_type = obj_Dimensional_Direction_Bullet;
		bullet_sprite = spr_Glowy_Purple_Laser;
		bullet_speed = bossbulletspeed * (2.8 + random(0.5));
	    scr_Soul_Shoot();
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

#region /// Boss Sprite Code


scr_Boss_Size_Lerp(0.15);

if bossActiveAttack[1] = 1 {
} else {

}

#endregion

scr_Boss_Soul_Hitbox(sprite_index);