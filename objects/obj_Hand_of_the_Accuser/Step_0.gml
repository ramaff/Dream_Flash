/// @description  Boss Step Event

scr_Boss_Step();

if champ = 0 || champ = 1 || champ = 2 || champ = 8 {
    random_y = 1;
    y_displacement = 0;
    if currentphase = 2 {
        y_displacement = -60;
    }
    scr_Room_Loop_Target();
}

image_index = currentphase - 1;

if state = states.normal {
	speed = bossmovespeed;
	if currentphase = 2 {
	    speed = bossmovespeed * 0.7;
	}

}
///Passive Attack Prep

if bossPassiveAttackDelay[1] <= 0 and bossPassiveAttackCooldown[1] <= 0 {
    bossPassiveAttackCooldown[1] = 27;
    bossPassiveAttackDelay[1] = 0;
    if champ = 0 {
        bossPassiveAttack[1] = 1;
    }
    if champ = 1 {
        bossPassiveAttack[1] = 2;
    }
    if champ = 2 {
        bossPassiveAttack[1] = 3;
    }
    if champ = 8 {
        bossPassiveAttack[1] = 4;
    }
    if currentphase = 2 {
		bossPassiveAttackCooldown[1] -= 10 + irandom(5);
    }
}


///Passive Attack Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Fasing_Laser;
    bullet_sprite = spr_Enemy_Laser;
    bullet_speed = bossbulletspeed * 1.25;
    bullet_power = bosspower;
    bullet_direction = (-10 + random(20)) / bossaccuracy;
    bullet_lifespan = 300;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;

	var bulldir = 0;
	if currentphase = 1 {
		var bulldir = scr_Soul_Point();
	
		if bulldir < 180 {
			if bulldir > 15 {
				bulldir = 15;	
			}
		} else {
			if bulldir < 345 {
				bulldir = 345;	
			}
		}
		bullet_direction = bulldir + (-10 + random(20)) / bossaccuracy;
		if champ = 8 {
			bullet_speed = bossbulletspeed * 1;
		}
	}
    if currentphase = 2 {
        bullet_direction += 60;
        bullet_speed = bossbulletspeed * 0.7;
        bullet_type = obj_Gravity_Fasing_Laser;
    }
    
	
	if bossPassiveAttack[1] != 0 {
		if currentphase = 1 {
			scr_Boss_Stretch("Horizontal",0.15);
			x += 8;
		} else {
			scr_Boss_Stretch("Horizontal",0.075);
			x += 4;
		}
	}
	
if bossPassiveAttack[1] = 1 {
	
    scr_Just_Shoot();    
}
if bossPassiveAttack[1] = 2 {
	
    bullet_count = 2;
    bullet_spread = 45;
        
    scr_Direction_Shoot();      
}
if bossPassiveAttack[1] = 3 {
	
    bullet_count = 3;
    bullet_spread = 25;
    
    scr_Direction_Shoot();   
}
if bossPassiveAttack[1] = 4 {
	
    bullet_count = 2;
    bullet_spread = 180;
    if currentphase = 2 { bullet_direction -= 60; }
        
    scr_Direction_Shoot();      
}

/*
if currentphase = 2 and bossPassiveAttack[1] != 0 {
	bullet_direction = 270 + (-10 + random(20)) / bossaccuracy;
	bullet_count = 1;
	bullet_speed = bossbulletspeed * 0.1;
	scr_Just_Shoot();  
}
*/

if currentphase = 2 {
	sprite_index = spr_Hand_of_the_Accuser_P2;	
}
if champ = 1 {
	sprite_index = spr_Sleepy_Hand;
	if currentphase = 2 {
		sprite_index = spr_Sleepy_Hand_P2;	
	}
}

scr_Boss_Size_Lerp(0.2);

bossPassiveAttack[1] = 0;
bossPassiveAttack[2] = 0;

fim++;

scr_Boss_Soul_Hitbox(sprite_index);