/// @description  Boss Step Event

scr_Boss_Step();

if currentphase = 3 {
	scr_Room_Loop_Everywhere();	
}


if instance_exists(obj_Soul_Parent) and currentphase = 1 {

    var dist = point_distance(x,y,obj_Soul_Parent.x,obj_Soul_Parent.y);
    
	/*
    if dist < 256 {
        dist += dist / 2;
    } else {
        dist += 128
    }
    */
    var ang = point_direction(x,y,obj_Soul_Parent.x,obj_Soul_Parent.y);
    var xx = lengthdir_x(dist * 0.66,ang);
    var yy = lengthdir_y(dist * 0.66,ang);
    
    with instance_create(x + xx,y + yy,obj_Thought) {
        image_index = 0;
		depth = other.depth + 50;
    }
    
    xx = lengthdir_x(dist * 0.33,ang);
    yy = lengthdir_y(dist * 0.33,ang);
    
    with instance_create(x + xx,y + yy,obj_Thought) {
        image_index = 1;
		depth = other.depth + 50;
    }
	
	if dist > 450 {
		x = obj_Soul_Parent.x + lengthdir_x(450,ang+180);	
		y = obj_Soul_Parent.y + lengthdir_y(450,ang+180);	
	}
} 

//image_speed = bossattackspeed;

///Active Attack Prep

if bossActiveAttackDelay[1] <= 0 and bossActiveAttackCooldown[1] <= 0 and bossActiveAttackDuration[1] <= 0 {
    
	var minThreshold = scr_Minion_Count();
	
    speed = bossmovespeed * 0.5;
    bossdirection = scr_Soul_Point();
    direction = bossdirection;
    
	
	if currentphase = 1 {
		bossActiveAttack[1] = choose(1,2,3);
	} else if currentphase = 2 {
		bossActiveAttack[1] = choose(4,5,6);
	} else {
		bossActiveAttack[1] = choose(7,8,9);
		if minThreshold = 1 {
			bossActiveAttack[1] = choose(7);
		}
	}
    bossActiveAttackDelay[1] = 10;
    
    if bossActiveAttack[1] = 1 {
        bossActiveAttackDelay[1] = 15;
        bossActiveAttackCooldown[1] = (90 + random(30));
        bossPatternCount = 6;
        bossPatternCooldown = 45;
		bossPatternCooldownMax = 45;
        bulletdirection = random(360);
        bossPatternDirection = bulletdirection;
        bossActiveAttackDuration[1] = 10 + bossPatternCooldown * bossPatternCount;
    }
	if bossActiveAttack[1] = 2 {
        bossActiveAttackDelay[1] = 10;
        bossPatternCount = 300;
        bossPatternCooldown = 1;
        bossPatternCooldownMax = 1;
        bossPatternDirection = scr_Soul_Point() - 90 + ((-5 + random(10)) / bossaccuracy);
		
        bossActiveAttackDuration[1] = 10 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 90 + random(15);
    }
    if bossActiveAttack[1] = 3 {
        bossActiveAttackDelay[1] = 15;
        bossActiveAttackCooldown[1] = (90 + random(30));
        bossPatternCount = 40;
        bossPatternCooldown = 5;
		bossPatternCooldownMax = 5;
        bulletdirection = random(360);
        bossPatternDirection = bulletdirection;
        bossActiveAttackDuration[1] = 10 + bossPatternCooldown * bossPatternCount;
    }
	if bossActiveAttack[1] = 4 {
        bossActiveAttackDelay[1] = 15;
        bossActiveAttackCooldown[1] = (180 + random(30));
        bossPatternCount = 12;
        bossPatternCooldown = 12;
		bossPatternCooldownMax = 12;
        bulletdirection = random(360);
        bossPatternDirection = bulletdirection;
        bossActiveAttackDuration[1] = 10 + bossPatternCooldown * bossPatternCount;
    }
	if bossActiveAttack[1] = 5 {	
		
		speed = 0.01;
        bossPatternCount = 300;
        bossPatternCountMax = bossPatternCount;
        bossPatternCooldown = 1;
        bossPatternCooldownMax = 1;
        bossActiveAttackDuration[1] = 30 + bossattackspeed * bossPatternCooldownMax * (bossPatternCount + 30);
        bossActiveAttackCooldown[1] = 120 + random(15);
		
		//var bossdirection = point_direction(x,y,instance_nearest(x,y,obj_Soul).x,instance_nearest(x,y,obj_Soul).y);
        
		//bossPatternDirection = bossdirection;
    }
	if bossActiveAttack[1] = 6 {
        bossActiveAttackDelay[1] = 30;
        bossActiveAttackCooldown[1] = (120 + random(30));
        bossPatternCount = 180;
        bossPatternCooldown = 30;
		bossPatternCooldownMax = 2;
        bulletdirection = random(360);
        bossPatternDirection = bulletdirection;
        bossActiveAttackDuration[1] = 40 + bossPatternCooldownMax * bossPatternCount;
    }
    if bossActiveAttack[1] = 7 {
        scr_Boss_Dash_Setup();
		bossActiveAttackDelay[1] = 30;
		
        bossPatternCount = 450;
        bossPatternCountMax = bossPatternCount;
        bossPatternCooldown = 30;
        bossPatternCooldownMax = 1;
        bossActiveAttackDuration[1] = 10 + bossattackspeed * bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 60 + random(30);
		
		var bossdirection = scr_Soul_Point();
        bossMaxDashSpeed = 5.5 * bossmovespeed;
		bossDashSpeed = 0;
    }
	if bossActiveAttack[1] = 8 {
        bossActiveAttackDelay[1] = 15;
        bossActiveAttackCooldown[1] = (180 + random(30));
        bossPatternCount = 24;
        bossPatternCooldown = 6;
		bossPatternCooldownMax = 6;
        bulletdirection = random(360);
        bossPatternDirection = bulletdirection;
        bossActiveAttackDuration[1] = 10 + bossPatternCooldown * bossPatternCount;
    }
	if bossActiveAttack[1] = 9 {
        bossActiveAttackDelay[1] = 15;
        bossActiveAttackCooldown[1] = (180 + random(30));
        bossPatternCount = 2;
        bossPatternCooldown = 30;
		bossPatternCooldownMax = 30;
        bulletdirection = random(360);
        bossPatternDirection = bulletdirection;
        bossActiveAttackDuration[1] = 10 + bossPatternCooldown * bossPatternCount;
    }
	
	bossPatternCountMax = bossPatternCount;
    
}


/// Active Attack Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Mischief_Bullet;
    bullet_sprite = spr_Mischief_Shot;
    bullet_speed = bossbulletspeed;
    bullet_power = bosspower * 1.5;
    bullet_direction = (-5 + random(10)) / bossaccuracy;
    bullet_lifespan = 400;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;
    
    if champ = 2 {
        bullet_type = obj_Homing_Mischief;
    }

if bossActiveAttackDelay[1] <= 0 {        
    
    if bossActiveAttack[1] = 2 {
    }
}

/// Active Attack Pattern Code
    
    scr_Default_Attack_Settings();
	scr_Beam_Shoot_Properties();
    bullet_type = obj_Dark_Splash;
    bullet_sprite = spr_Dark_Ball;
    bullet_speed = bossbulletspeed;
    bullet_power = bosspower * 1.5;
    bullet_direction = (-20 + random(40)) / bossaccuracy;
    bullet_lifespan = 400;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;

if bossActiveAttackDelay[1] <= 0 and bossPatternCooldown <= 0 and bossPatternCount > 0 {
        
    
    if bossActiveAttack[1] = 1 {
		scr_Boss_Stretch("Vertical", 0.25);
		
        bullet_speed = bossbulletspeed * (1.4 + random(0.2));
		bullet_count = 1;
		bullet_spread = 360 / bullet_count;
		bullet_sprite = spr_Big_Glowy_Red_Shot;
		
		
		var bdir = random(360);
		repeat(10) {
			
			bullet_direction = bdir;
			if bossPatternCount mod 2 = 0 {
				bullet_type = obj_Spin_Expand_Bullet;
			} else {
				bullet_type = obj_Spin_Expand_Bullet_Alt;
			}
		
			bullet_crowd_direction = bullet_direction;
			bullet_crowd_speed = bossbulletspeed;
	        //bullet_direction = bossPatternDirection;
	        scr_Just_Shoot();
			
			bdir += 360 / 10
		}
    
    }

	
	if bossActiveAttack[1] = 2 {
        scr_Default_Attack_Settings();
        bullet_power = bosspower * 1;
        bullet_direction = bossPatternDirection;
        bullet_size = 1;
        bullet_count = 1;
        bullet_spread = 0;
        boss_radius = 0;
        
        bullet_sprite = spr_Red_Beam;
        beam_sprite = spr_Red_Beam;
        beamSize = 1;
        bossbeamattackactive = 1;
		
		if champ = 1 {
		bullet_sprite = spr_Green_Beam;
        beam_sprite = spr_Green_Beam;
		}
		
		var beamstart = bossPatternCountMax - bossPatternCount;
    
        if (bossPatternCount < (bossPatternCountMax - 20)) {
			
	        scr_Boss_Beam_Attack_New("Active",35,scr_Boss_Beam_Frame(beamstart));
            
			var aacc = (bossPatternCountMax - bossPatternCount) / 120;
	        bossPatternDirection += 0.25 + aacc;
         
        } else {
            scr_Boss_Beam_Attack_New("Dormant",35,scr_Boss_Beam_Frame(beamstart)); 
        }
        
        if ((bossPatternCount mod 20 = 0) and (bossPatternCount > 0) and (bossPatternCount < bossPatternCountMax - 10)) {
            bullet_power = bosspower * 1;
			
			scr_Boss_Stretch("Vertical", 0.04);	
			
			var length = 0
            while(!collision_point(x + lengthdir_x(length,bullet_direction),y + lengthdir_y(length,bullet_direction),obj_The_Border,true,true)) {
                length += 5;
            }
        
			var lfac = 0.1 + random(0.1);
			repeat(4) {
	            boss_xoffset = bossxx[boss_beam_num] + lengthdir_x(lfac * 1000, bossPatternDirection);
	            boss_yoffset = bossyy[boss_beam_num] + lengthdir_y(lfac * 1000, bossPatternDirection);
            
	            bullet_type = obj_Basic_Bullet;
	            bullet_sprite = spr_Glowy_Enemy_Shot;
	            bullet_speed = bossbulletspeed * (0.1 + random(0.1));
	            bullet_lifespan = 300;
	            bullet_size = 1;
	            bullet_count = 1;
	            bullet_spread = 0;
			
				bullet_direction = bossPatternDirection;
            
	            scr_Offset_Soul_Shoot();
				
				lfac += 0.2;
			}
        }   
    }
	
	if bossActiveAttack[1] = 3 {
        var bsp = 3;
		bullet_count = 3;
		bullet_spread = 360 / bullet_count;
		bullet_direction = bossPatternDirection;
		bullet_size = 1.1;
		bullet_power = bosspower * 1;
		
		bullet_sprite = spr_Glowy_Cyan_Shot;
		boss_xoffset = obj_Soul_Parent.x - x;
		boss_yoffset = obj_Soul_Parent.y - y;
		
		bullet_type = obj_Dormant_Rebound_Bullet;
		
		bullet_speed = bsp * bossbulletspeed;
		scr_Offset_Normal_Shoot();
		
		scr_Refresh_Soul(-2);
		
		bossPatternDirection += 14;
		
    }
	
	if bossActiveAttack[1] = 4 {
		if bossPatternCount mod 2 = 1 {
			scr_Boss_Stretch("Vertical", 0.05);
		}
		
		bullet_part = 2;
		bullet_part_sprite = spr_Bullet_Missile_Part;
		bullet_part_area = 25;
		bullet_part_life = 40;
		bullet_part_color1 = make_color_rgb(255,0,0);
		bullet_part_color2 = c_white;
		
        bullet_speed = bossbulletspeed * (1.4 + random(0.4));
		bullet_count = 1;
		bullet_spread = 360 / bullet_count;
		bullet_sprite = spr_Nightmare_Missile;
		bullet_lifespan = 180 + ((bossPatternCountMax - bossPatternCount) * 5);
		
		
		bullet_type = obj_Nightmare_Missile;
		
		bullet_direction = -30 + random(60);
		
		boss_xoffset = 150;
		boss_yoffset = -40;
		
		scr_Offset_Normal_Shoot();
		
		bullet_direction = 180 - 30 + random(60);
		
		boss_xoffset = -150;
		boss_yoffset = -40;
		
		scr_Offset_Normal_Shoot();
    
    }
	
	if bossActiveAttack[1] = 5 {
		bullet_power = bosspower * 2;
		if bossPatternCount mod 10 = 0 {
			scr_Boss_Stretch("Horizontal", 0.075);
		}
		
		if bossPatternCount = bossPatternCountMax {
			scr_Boss_Stretch("Horizontal", 0.4);
			
	        bullet_direction = 0;
	        bullet_count = 1;
	        bullet_spread = 0;
	        bullet_speed = bossbulletspeed * (2);
			bullet_type = obj_Nightmare_Grow;
			bullet_sprite = spr_Nightmare_Ball;
			bullet_size = 0;
			boss_xoffset = 0;
		    boss_yoffset = -300;
		    scr_Offset_Normal_Shoot();
		}
    }
	
	if bossActiveAttack[1] = 6 {
		
		bullet_type = obj_Basic_Bullet;
		bullet_sprite = spr_Glowy_Ruby_Shot;
		bullet_size = 1;
		bullet_count = 2;
		bullet_speed = bossbulletspeed * (1.6 + random(0.1));
		bullet_power = bosspower * 1;
		bullet_lifespan = 240;
		bullet_spread = 180;
		
		bullet_direction = bossPatternDirection;
		
		scr_Just_Shoot();
		
		if bossPatternCount mod 12 = 0 {
			scr_Boss_Stretch("Horizontal", 0.05);
			bullet_size = 1.1;
			
			repeat(3) {
				
				bullet_speed += bossbulletspeed * 0.125;
				bullet_direction -= 2;
			
				scr_Just_Shoot();
				
				bullet_speed += bossbulletspeed * 0.125;
				bullet_direction += 4;
			
				scr_Just_Shoot();
				
				bullet_direction -= 3;
				
				bullet_speed += bossbulletspeed * 0.125;
				
				scr_Just_Shoot();
			}
		}
		
		bossPatternDirection += 10 + irandom(1);
    }
    
    if bossActiveAttack[1] = 7 {
        scr_Boss_Dash_Movement(45,25);
		
		speed = bossDashSpeed;
        direction = bossDashDirection;
		
		if bossPatternCount mod 6 = 0 {
			scr_Boss_After_Image(24);
		}
		
		if bossPatternCount mod 15 = 0 {
			
			scr_Boss_Stretch("Horizontal", 0.1);	
			
			//scr_Boss_After_Image(60);
			
			bullet_type = obj_Delayed_Home_Bullet;
			bullet_sprite = spr_Big_Glowy_Red_Shot;
	        bullet_size = 1;
	        bullet_count = 1;
	        bullet_speed = bossbulletspeed * (0.3 + random(0.15));
			bullet_lifespan = 210 + random(30);
			bullet_spread = 360 / bullet_count;
			bullet_power = bosspower * 1;
			
	        scr_Just_Shoot();
		}
    }
	
	if bossActiveAttack[1] = 8 {
		
		scr_Boss_Stretch("Vertical",0.15);
		
			minion_count = 1;
	        minion_type = obj_Nightmare_Soul;
	        minion_health = bossmaxhealth / 100;
			
			minion_dir = random(360);
			minion_speed = bossbulletspeed * (1.6 + random(0.6));
	        scr_Minion_Spawn();
	
    }
	
	if bossActiveAttack[1] = 9 {
		
		scr_Boss_Stretch("Vertical",0.15);
		
		minion_count = 1;
	    minion_type = obj_Nightmare_Soul_Spin;
	    minion_health = bossmaxhealth / 100;
			
		var nsouldir = 0;
		repeat(8) {
			minion_dir = nsouldir;
	        scr_Minion_Spawn();
			
			nsouldir += 45;
		}
	
    }
	
	bossPatternCount -= 1;
    bossPatternCooldown += bossPatternCooldownMax;
	
    
}

/// Active Attack Post
   
if bossActiveAttackDuration[1] <= 0 { 
    bossActiveAttack[1] = 0;
    bossActiveAttack[2] = 0;
}

#region /// Boss Sprite


scr_Boss_Size_Lerp(0.15);

if currentphase = 1 {
	if bossActiveAttack[1] != 0 {
	    sprite_index = spr_Nightmare_Shoot;
		if image_index > 3 and bossActiveAttackDuration[1] > 10 {
			image_index = 3;	
		}
	} else {
		sprite_index = spr_Nightmare;
	}
}
if currentphase = 2 {
	if bossActiveAttack[1] = 4 {
	    sprite_index = spr_Nightmare_Phase_2_Cannons;
		if image_index > 3 and bossActiveAttackDuration[1] > 10 {
			image_index = 3;	
		}
	} else if bossActiveAttack[1] = 5 {
	    sprite_index = spr_Nightmare_Phase_2_Spirit;
		if image_index > 3 and bossActiveAttackDuration[1] > 10 {
			image_index = 3;	
		}
	} else if bossActiveAttack[1] = 6 {
	    sprite_index = spr_Nightmare_Phase_2_Sword;
		if image_index > 13 and bossActiveAttackDuration[1] > 10 {
			image_index = 9;	
		}
	} else {
		sprite_index = spr_Nightmare_Phase_2;
	}
}
if currentphase = 3 {
	if bossActiveAttack[1] != 0 {
	    sprite_index = spr_Nightmare_Phase_3_Dash;
		if image_index > 3 and bossActiveAttackDuration[1] > 10 {
			image_index = 3;	
		}
	} else {
		sprite_index = spr_Nightmare_Phase_3;
	}
}

#endregion

scr_Boss_Soul_Hitbox(sprite_index);