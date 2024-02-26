/// @description  Boss Step Event
tickdown--;
scr_Boss_Step();

if bossNum = 1 || bossNum = 3 {
    handOrientation = "Left";
    //phaseX = -300 + room_width / 2;
    phaseX = room_width / 2;
}

if bossNum = 2 || bossNum = 4 {
    handOrientation = "Right"
    //phaseX = 300 + room_width / 2;
    phaseX = room_width / 2;
}

if accom = 0 {
if bossNum = 1 || bossNum = 3 {
    handOrientation = "Left";
    //phaseX = -300 + room_width / 2;
    phaseX = room_width / 2;
	x -= 50;
	
	direction -= 180;
}

if bossNum = 2 || bossNum = 4 {
    handOrientation = "Right"
    //phaseX = 300 + room_width / 2;
    phaseX = room_width / 2;
	
	x += 50;
}

	accom = 1;
}

if handOrientation = "Left" {
    if clapping = 0 {
        phaseX = -(global.roomSizeX / 2 + 64) + room_width / 2;
    }
    if clapping = 1 {
        phaseX = -6 + room_width / 2;
    }
}
if handOrientation = "Right" {
    if clapping = 0 {
        phaseX = (global.roomSizeX / 2 + 64) + room_width / 2;
    }
    if clapping = 1 {
        phaseX = 6 + room_width / 2;
    }
}

///Passive Attack Prep

if bossPassiveAttackDelay[1] <= 0 and bossPassiveAttackCooldown[1] <= 0 {
    
    if currentphase = 1 {
        if clapping = 0 {
			if bossPassiveAttack[1] != -1 {
            bossPassiveAttack[1] = 1;
			}
            bossPassiveAttackCooldown[1] = 1;
            bossPassiveAttackDelay[1] = 120;
            var bossdirection = point_direction(x,y,phaseX,instance_nearest(x,y,obj_Soul_Parent).perY);
            speed = 2 * bossmovespeed;
            if boost = 1 {
                speed = 3 * bossmovespeed;
            }
            direction = bossdirection;
        }
        if clapping = 1 {
            speed = 4.5 * bossmovespeed;
            if boost = 1 {
                speed = 6 * bossmovespeed;
            }
            bossPassiveAttack[1] = 1;
            bossPassiveAttackCooldown[1] = 1;
            bossPassiveAttackDelay[1] = 6 + bossattackspeed * (distance_to_point(phaseX,y) / speed);
			if champ = 0 {
				bossPassiveAttackDelay[1] += 3;	
			}
            if boost = 1 {
                bossPassiveAttackDelay[1] = 2 * (3 + distance_to_point(phaseX,y) / speed);
            }
            var bossdirection = point_direction(x,y,phaseX,y);
            direction = bossdirection;
        }
    }
	
    
    if currentphase = 2 {
        bossPassiveAttack[1] = 2;
        bossPassiveAttackCooldown[1] = 1;
        bossPassiveAttackDelay[1] = 1;
    
    }
}

if bossPassiveAttackDelay[2] <= 0 and bossPassiveAttackCooldown[2] <= 0 {
    if champ = 2 {
        bossPassiveAttack[2] = 1;
        bossPassiveAttackCooldown[2] = 25 + random(16);
        bossPassiveAttackDelay[2] = 0;
    }
}


///Passive Attack Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Fasing_Laser;
    bullet_sprite = spr_Glowy_Red_Laser;
    bullet_speed = bossbulletspeed;
    bullet_power = bosspower;
    bullet_direction = (-10 + random(20)) / bossaccuracy;
    bullet_lifespan = 300;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;

if bossPassiveAttack[1] = 1 {
    if clapping = 0 {
		
		clapping = 1;
		if distance_to_object(obj_Cursed_Clapper) < 10 {
			if tickdown <= -15 {
			scr_Screen_Shake(10,7);
		
	        bullet_count = 6;
	        bullet_direction = random(360)
	        bullet_spread = 60;
	        bullet_speed = bossbulletspeed * 0.85;
	        scr_Just_Shoot();
			
			}
		}
    } else {
        clapping = 0;
    }
	bossPassiveAttack[1] = 0;
}

    scr_Default_Attack_Settings();
    bullet_type = obj_Dormant_Bullet;
    bullet_sprite = spr_Dormant_Shot;
    bullet_speed = bossbulletspeed * (0.2 + random(0.2));
    bullet_power = bosspower * 1;
    bullet_direction = (-180 + random(360)) / bossaccuracy;
    bullet_lifespan = 600 + random(360);
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;
    
if bossPassiveAttack[2] = 1 {
    bullet_direction = scr_Soul_Point();
    bullet_direction += (-180 + random(360)) / bossaccuracy;
    scr_Just_Shoot(); 
}

bossPassiveAttack[1] = 0;
bossPassiveAttack[2] = 0;

///Active Attack Prep

if bossActiveAttackDelay[1] <= 0 and bossActiveAttackCooldown[1] <= 0 and bossActiveAttackDuration[1] <= 0 {
    
    if currentphase = 2 {
        bossActiveAttack[1] = 2;
        if champ = 1 {
            bossActiveAttack[1] = 4;
        }
    }
    if bossActiveAttack[1] = 2 {
        bossAngle = scr_Soul_Point()
        rspeed = 1.66;
        
        bossActiveAttackDelay[1] = 1;
        bossPatternCount = 240 + irandom(90);
        bossPatternCooldown = 1;
        bossPatternCooldownMax = 1;
        bossActiveAttackDuration[1] = 15 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 1;
    }
    if bossActiveAttack[1] = 4 {
        
        bossActiveAttackDelay[1] = 45;
        bossActiveAttackDuration[1] = 120 + random(15);
        bossActiveAttackCooldown[1] = 5;
    }
    bossPatternCountMax = bossPatternCount;
}


/// Active Attack Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Spectre_Big_Blast;
    bullet_sprite = spr_Spectre_Blast;
    bullet_speed = bossbulletspeed * 1.5;
    bullet_power = bosspower * 1;
    bullet_direction = (-5 + random(10)) / bossaccuracy;
    bullet_lifespan = 240 + random(180);
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;
    
if bossActiveAttackDelay[1] <= 0 {
    
    if bossActiveAttack[1] = 4 {
        var bossdirection = scr_Soul_Point()
        speed = (1.2 + random(0.15)) * bossmovespeed;
        friction = 0.001 * bossmovespeed;
        direction = bossdirection;
    
        bossActiveAttack[1] = 0;
    }

    if bossActiveAttack[1] = 3 and speed < (0.5 * bossmovespeed) {
        var bossdirection = scr_Soul_Point()
        speed = (2.2 + random(0.3)) * bossmovespeed;
        friction = 0.001 * bossmovespeed;
        direction = bossdirection;
    }
    
}

/// Active Attack Pattern Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Speed_Up_Direction_Bullet;
    bullet_sprite = spr_Spectre_Blast;
    bullet_speed = bossbulletspeed * (0.6 + random(0.5));;
    bullet_power = bosspower * 1; 
    bullet_direction = (-5 + random(10)) / bossaccuracy;
    bullet_lifespan = 120 + random(180);
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;

if bossActiveAttackDelay[1] <= 0 and bossPatternCooldown <= 0 and bossPatternCount > 0 {
        
    if bossActiveAttack[1] = 2 {
        speed = min(speed + 0.5,bossmovespeed * 0.99);

        var pointDir = scr_Soul_Point()
        bossAngle += sin(degtorad(pointDir - bossAngle)) * rspeed;
        direction = bossAngle;
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

scr_Boss_Two_Face_Direction();

if currentphase = 1 and tickdown <= 0 {
if clapping = 1 {
	image_xscale = -image_xscale;
    sprite_index = spr_Cursed_Clapper;
} else {
    sprite_index = spr_Cursed_Clap;
	if image_index > 1 {
		image_index = 1;	
	}
}
}

if currentphase = 2 || tickdown > 0 {
	if currentphase = 1 and handOrientation = "left" {
		direction = -180;
	}
    sprite_index = spr_Cursed_Clapper;
    //image_index++;
}

if instance_number(obj_Cursed_Clapper) = 2 {
	if currentphase = finalphase {
	    instance_destroy();
	    with(obj_Cursed_Clapper) {
	        //bosshealth = 0;
			//bosshealth = bossmaxhealth2
			currentphase = 2;
	        bossActiveAttack[1] = 2;
	        bossActiveAttackCooldown[1] = 1;
	        bossActiveAttackDelay[1] = 1;
    
	        bossAngle = scr_Soul_Point
	        rspeed = 1.66;
	    }
	}
}

scr_Boss_Soul_Hitbox(sprite_index);