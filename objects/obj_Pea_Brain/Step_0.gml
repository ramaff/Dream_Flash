scr_Boss_Status_Step();

scr_Boss_Attack_Step();

orbitangle += bossmovespeed / 3;
speed = bossmovespeed * 2;

tarX = minionbossparent.x + lengthdir_x(orbitheight, orbitangle);
tarY = minionbossparent.y + lengthdir_y(orbitheight, orbitangle);

direction = point_direction(x,y,tarX,tarY);
var diss = point_distance(x,y,tarX,tarY);
if diss < speed {
	speed = diss;	
}

if orbitheight < orbitheighttarget {
	orbitheight += 4;	
} else {
	orbitheight -= 4;	
}

if orbitheight = orbitheighttarget {
	if orbitheighttarget = 2000 {
		orbitheighttarget = 100	
	} else {
		orbitheighttarget = 2000;	
	}
}

if bossActiveAttackDelay[1] <= 0 and bossActiveAttackCooldown[1] <= 0 and bossActiveAttackDuration[1] <= 0 {
    bossActiveAttack[1] = choose(1);
	
	state = states.normal;
	
	if bossActiveAttack[1] = 1 {
		scr_Boss_Stretch("Horizontal",0.4);
		
        bossActiveAttackDelay[1] = 30;
        bossPatternCount = 15;
		bossPatternCountMax = 15;
        bossPatternCooldown = 30;
        bossPatternCooldownMax = 1;
        bossActiveAttackDuration[1] = 35 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 100 + random(30);
    }
	
}

/// Active Attack Pattern Code


if bossActiveAttackDelay[1] <= 0 and bossPatternCooldown <= 0 and bossPatternCount > 0 {
        
	scr_Default_Attack_Settings();
    bullet_type = obj_Target_Home_Bullet;
    bullet_sprite = spr_Glowy_Pink_Shot;
    bullet_speed = bossbulletspeed * (1.3);
    bullet_power = bosspower;
    bullet_direction = (-5 + random(10)) / bossaccuracy;
    bullet_lifespan = 300;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    bullet_image_speed = 1;
    boss_radius = 0;

	
	if bossActiveAttack[1] = 1 {
		if bossPatternCount mod 5 = 0 {
			scr_Boss_Stretch("Vertical",0.2);
		}
		
		bullet_speed += bossbulletspeed * (0.025 * bossPatternCount);
	    bullet_count = 1;
		bullet_direction = point_direction(x,y,minionbossparent.x, minionbossparent.y);
		bullet_lifespan = (point_distance(x,y,minionbossparent.x, minionbossparent.y) / bullet_speed) + 30;
		bullet_target = minionbossparent;
		//bullet_spread = 180 / bullet_count;
		boss_xoffset = -10 + random(20);
		boss_yoffset = -10 + random(20);
		
		
	    scr_Offset_Normal_Shoot();
    }
	
	bossPatternCount -= 1;
    bossPatternCooldown += bossPatternCooldownMax;
		
}

/// Active Attack Post

if bossActiveAttackDuration[1] <= 0 { 
    //speed = 0.33 * bossmovespeed;
    //friction = 0;
    bossActiveAttack[1] = 0;
    bossActiveAttack[2] = 0;
    bossActiveAttack[3] = 0;
    bossActiveAttack[0] = 0;
}

scr_Boss_Size_Lerp_Dir(0.15);

/*
if bossActiveAttack[1] = 1 {
	sprite_index = spr_Horror_Minion_Shoot;
	if image_index >= 3 and bossActiveAttackDuration[1] >= 10 {
		image_index = 3;
	}
} else {
	sprite_index = spr_Horror_Minion;
}
*/

scr_Boss_Soul_Hitbox(sprite_index);
