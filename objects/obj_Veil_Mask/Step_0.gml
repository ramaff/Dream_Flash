/// @description  Boss Step Event

if currentphase = 1 {
	orbitangle += bossmovespeed / 3;
	speed = bossmovespeed * 0.66;
} else {
	orbitangle += bossmovespeed / 5;
	speed = bossmovespeed * 0.4;
}

x = startX + lengthdir_x(orbitheight, orbitangle);
y = startY + lengthdir_y(orbitheight, orbitangle);

/*
direction = point_direction(x,y,tarX,tarY);
var diss = point_distance(x,y,tarX,tarY);
if diss < speed {
	speed = diss;	
}
*/


if orbitheight < orbitheighttarget {
	orbitheight += 0.1;
} else {
	orbitheight -= 0.1;
}
orbitheight = lerp(orbitheight,orbitheighttarget,0.01);

var minheight = 100;
var maxheight = 250;
if currentphase = 2 {
	minheight = 300;
	maxheight = 450;
	if orbitheighttarget < 300 {
		orbitheighttarget = 300;	
	}
}

if orbitheight >= orbitheighttarget and orbitheighttarget = maxheight {
	orbitheighttarget = minheight;
}

if orbitheight <= orbitheighttarget and orbitheighttarget = minheight {
	orbitheighttarget = maxheight;
}



if bosshealth < bossmaxhealth and currentphase = 1 {
	var diff = bossmaxhealth - bosshealth;
	bosshealth = bossmaxhealth;
	if instance_exists(bossID) {
		bossID.bosshealth -= diff;
	}
}

/*
direction += 0.66;

x += lengthdir_x(0.5, scr_Soul_Point());	
y += lengthdir_y(0.5, scr_Soul_Point());
*/
scr_Boss_Step();


if (!instance_exists(obj_The_Veil)) {
	if (!instance_exists(obj_The_Veil_True_Boss)) {
		instance_destroy();
	}
}

if bosshealth != savedHealth {
	var sub = savedHealth - bosshealth;
	with (obj_The_Veil) {
		if bossID = other.bossID {
			bosshealth -= sub;
		}
	}
	bosshealth += sub;
	savedHealth = bosshealth;
}

with (obj_The_Veil) {
	if currentphase = 2 {
		other.veilMorph = 0;
		other.currentphase = 2;
		other.bossActiveAttack[1] = 0;
	}
}

with (obj_The_Veil_True_Boss) {
	if currentphase = 2 {
		other.veilMorph = 0;
		other.currentphase = 2;
		other.bossActiveAttack[1] = 0;
	}
}

if currentphase = 2 {
	bossdefense = 1;	
}

//scr_Room_Loop_Everywhere();

///Passive Attack Prep

///////////////////////////////////////////////////////////////////
//////////////////////////////////////Active Attack Prep
///////////////////////////

if veilMorph = 2 {
	bossActiveAttackCooldown[1] = 0;
	bossActiveAttack[1] = 0;
	veilMorph = 1;
}

if instance_exists(obj_The_Veil_True_Boss) {
	veilMorph = 0;
	bossdefense = 1000;
	if bossActiveAttack[1] = 2 || bossActiveAttack[1] = 3 {
		bossActiveAttack[1] = 0;	
	}
}


if bossActiveAttackDelay[1] <= 0 and bossActiveAttackCooldown[1] <= 0 and bossActiveAttackDuration[1] <= 0 {
    mCount = instance_number(obj_Minion_Parent);
    bCount = instance_number(obj_Main_Boss_Parent);
	
    bossActiveAttack[1] = choose(1);
	if veilMorph = 1 {
		bossActiveAttack[1] = choose(2);	
		if champ = 1 {
			bossActiveAttack[1] = choose(3);	
		}
	}
    if currentphase = 2 {
        //bossActiveAttack[1] = choose(2);
    }
	scr_Boss_Stretch("Horizontal", 0.2);
	
    if bossActiveAttack[1] = 1 {
        bossActiveAttackDelay[1] = 15;
        bossPatternCount = 1;
        bossPatternCooldown = 15;
        bossPatternCooldownMax = 60;
        bossActiveAttackDuration[1] = 10 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 240 + (irandom(3) * 60);
    }
    if bossActiveAttack[1] = 2 {
		
        bossActiveAttackDelay[1] = 15;
        bossPatternCount = 12;
        bossPatternCooldown = 24;
        bossPatternCooldownMax = 24;
        bossActiveAttackDuration[1] = 10 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 90 + (irandom(1) * 20);
    }
	if bossActiveAttack[1] = 3 {
        bossActiveAttackDelay[1] = 15;
        bossPatternCount = 2;
        bossPatternCooldown = 30;
        bossPatternCooldownMax = 120;
        bossActiveAttackDuration[1] = 10 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 90 + (irandom(1) * 20);
    }
	if bossActiveAttack[1] = 4 {
        scr_Boss_Dash_Setup();
        bossPatternCount = 150;
        bossPatternCountMax = bossPatternCount;
        bossPatternCooldown = 1;
        bossPatternCooldownMax = 1;
        bossActiveAttackDuration[1] = 10 + bossattackspeed * bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 40 + (irandom(1) * 20);
		
		var bossdirection = scr_Soul_Point()
        bossDashDirection = bossdirection;
		bossMaxDashSpeed = 1.5 * bossmovespeed;
		bossDashSpeed = 0;
    }
	if bossActiveAttack[1] = 5 {
        bossActiveAttackDelay[1] = 10;
        bossPatternCount = 9;
        bossPatternCooldown = 7;
        bossPatternCooldownMax = 7;
        bossActiveAttackDuration[1] = 7 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 120 + (irandom(1) * 20);
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
            
    
}

/* */
/// Active Attack Pattern Code
    
    scr_Beam_Shoot_Properties();
    scr_Default_Attack_Settings();
    bullet_type = obj_Phase_Bullet;
    bullet_sprite = spr_Glowy_Enemy_Shot;
    bullet_speed = bossbulletspeed * 1;
    bullet_power = bosspower * 1; 
    bullet_direction = (-5 + random(10)) / bossaccuracy;
    bullet_lifespan = 240 + random(180);
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;
	
	if champ = 1 {
		bullet_sprite = spr_Glowy_Purple_Shot;	
	}

if bossActiveAttackDelay[1] <= 0 and bossPatternCooldown <= 0 and bossPatternCount > 0 {
        
	if bossActiveAttack[1] = 1 {
		scr_Boss_Stretch("Vertical", 0.4);
		bullet_speed = bossbulletspeed * (1.6 + random(0.2));
		bullet_type = obj_Basic_Bullet;
		bullet_count = 8;
		bullet_spread = 360 / bullet_count;
		bullet_direction = (-50 + random(10)) / bossaccuracy;
		
        scr_Just_Shoot();
    }
    if bossActiveAttack[1] = 2 {
		scr_Boss_Stretch("Vertical", 0.15);
		bullet_speed = bossbulletspeed * (2.2 + random(0.2));
		bullet_count = 3;
		bullet_spread = 30;
		bullet_direction = (-1 + random(2)) / bossaccuracy;
		
        scr_Soul_Shoot();
    }
	if bossActiveAttack[1] = 3 {
		scr_Boss_Stretch("Vertical", 0.4);
		
		bullet_type = obj_Dimensional_Accel_Shot;
		bullet_sprite = spr_Glowy_Purple_Shot;
		bullet_size = 1.25;
		
		bullet_speed = bossbulletspeed * (2.2 + random(0.2));
		bullet_count = 3;
		bullet_spread = 30;
		bullet_direction = (-1 + random(2)) / bossaccuracy;
		
        scr_Soul_Shoot();
		
    }
	
	if bossActiveAttack[1] = 5 {
		scr_Boss_Stretch("Vertical", 0.1);
		
        bullet_direction = (-20 + random(40)) / bossaccuracy;
		bullet_sprite = spr_Pestilence_Shot;
		bullet_type = obj_Exploding_Green;
		bullet_count = 1;
		bullet_lifespan = 80;
		bullet_image_speed = 0.5;
		bullet_speed = bossbulletspeed * (1 + random(2));
		
        scr_Soul_Shoot();
    }
	
	if bossActiveAttack[1] = 4 {
		if bossPatternCount mod 10 = 0 {
			scr_Boss_Stretch("Horizontal", 0.05);
		}
		if bossPatternCount mod 20 = 0 {
			bullet_lifespan = 180;
			bullet_count = 3;
			bullet_speed = bossbulletspeed * (1.6 + random(0.15));
			bullet_spread = 360 / bullet_count;
			bullet_sprite = spr_Glowy_Enemy_Shot;
			bullet_type = obj_Spin_Quick_Phase_Bullet;
			scr_Soul_Shoot();
		}
		
        scr_Boss_Dash_Movement(40,20);
		
		speed = bossDashSpeed;
        direction = bossDashDirection;
		
		souldir = scr_Soul_Point();
		var adif = angle_difference(bossDashDirection, souldir);
		if adif < 0 {
			bossDashDirection += 0.66;
		}
		if adif > 0 {
			bossDashDirection -= 0.66;
		}
    }
    
    bossPatternCount -= 1;
    bossPatternCooldown += bossPatternCooldownMax;
}

/* */
/// Active Attack Post
   
if bossActiveAttackDuration[1] <= 0 { 
    //speed = 0.33 * bossmovespeed;
    //friction = 0;
    bossActiveAttack[1] = 0;
    bossActiveAttack[2] = 0;
    bossActiveAttack[3] = 0;
    bossActiveAttack[0] = 0;
	
	if veilMorph = 1 {
		veilMorph = 0;
	}
}

#region /// Boss Sprite Code

scr_Boss_Size_Lerp(0.15);

var mSpr = spr_Mask;

if champ = 1 {
	mSpr = spr_Chaotic_Mask;
}
if champ = 8 {
	mSpr = spr_Vengeful_Mask;
}

//if champ = 0 {
	if bossActiveAttack[1] != 0 { 
			sprite_index = spr_Mask;
	} else { // Default
		sprite_index = spr_Mask;		
	}
//}

if veilMorph = 1 {
	//sprite_index = spr_The_Veil;
	image_speed = 1;
	if bossActiveAttack[1] != 0 { 
		sprite_index = spr_The_Veil_Attack;
		if image_index >= 3 and bossActiveAttackDuration[1] > 10 {
			image_index = 3;	
		}
	} else { // Default
		sprite_index = spr_The_Veil;		
	}
} else {
	sprite_index = spr_Mask;
}

#endregion

scr_Boss_Soul_Hitbox(spr_Mask);
//sprite_index = spr_Peering_Spectre_old;
/* */
/*  */

