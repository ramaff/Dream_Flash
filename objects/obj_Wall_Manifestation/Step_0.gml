/// @description  Boss Step Event

image_angle = direction + 180

if direction <= 90 || direction > 270 {
	image_angle = direction;
}

scr_Boss_Step();

if instance_exists(obj_Sleeper) {

    dist = point_distance(x,y,obj_Sleeper.x,obj_Sleeper.y);
    
    ang = point_direction(x,y,obj_Sleeper.x,obj_Sleeper.y);
    xx = lengthdir_x(dist * 0.66,ang);
    yy = lengthdir_y(dist * 0.66,ang);
    
    with instance_create(x + xx,y + yy,obj_Thought) {
        image_index = 0;
    }
    
    xx = lengthdir_x(dist * 0.33,ang);
    yy = lengthdir_y(dist * 0.33,ang);
    
    with instance_create(x + xx,y + yy,obj_Thought) {
        image_index = 1;
    }
} else if currentphase = 1 {
    currentphase = 2;
    bossattackspeed += 0.5;
    bossmaxhealth = bossmaxhealth2;
    bosshealth = bossmaxhealth2;
    bossdefense = bossdefense2;
}

///Passive Attack Prep

if bossPassiveAttackDelay[1] <= 0 and bossPassiveAttackCooldown[1] <= 0 {
    bossPassiveAttack[1] = choose(1,2);
    bossPassiveAttackCooldown[1] = 65 + random(10);
    bossPassiveAttackDelay[1] = 0;
    if currentphase = 2 {
        bossPassiveAttackCooldown[1] += 25;
    }
}


///Passive Attack Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Basic_Bullet;
    bullet_sprite = spr_Enemy_Shot;
    bullet_speed = bossbulletspeed * 1;
    bullet_power = bosspower;
    bullet_direction = image_angle - 90 + + (-15 + random(30)) / bossaccuracy;
    bullet_lifespan = 600;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;

if bossPassiveAttack[1] = 1 {
    bullet_count = 11;
    bullet_spread = 16;
    scr_Direction_Shoot(); 
}
if bossPassiveAttack[1] = 2 {
    bullet_count = 5;
    bullet_spread = 18 + random(13);
    bullet_sprite = spr_Ache_Direction_Bullet;
    bullet_type = obj_Direction_Bullet;
    bullet_speed = bossbulletspeed * 0.85;
    scr_Just_Shoot(); 
    bullet_speed = bossbulletspeed * 1.05;
    scr_Just_Shoot(); 
    bullet_speed = bossbulletspeed * 1.25;
    scr_Just_Shoot();  
    bullet_speed = bossbulletspeed * 1.45;
    scr_Just_Shoot(); 
}

bossPassiveAttack[1] = 0;
bossPassiveAttack[2] = 0;

///Active Attack Prep

if bossActiveAttackDelay[1] <= 0 and bossActiveAttackCooldown[1] <= 0 and bossActiveAttackDuration[1] <= 0 {
    
    if currentphase = 2 {
        bossActiveAttack[1] = choose(1);
    }
    
    if bossActiveAttack[1] = 1 {
        bossActiveAttackDelay[1] = 10;
        bossActiveAttackDuration[1] = 60;
        bossActiveAttackCooldown[1] = 180 + random(30);
    }
    
}


/// Active Attack Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Echolocation_Shot;
    bullet_sprite = spr_Dark_Ball;
    bullet_speed = bossbulletspeed * 1.4;
    bullet_power = bosspower;
    bullet_direction = (-10 + random(20)) / bossaccuracy;
    bullet_lifespan = 800;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;

if bossActiveAttackDelay[1] <= 0 {
        
    if bossActiveAttack[1] = 1 {
		scr_Boss_Stretch("Horizontal", 0.2);
        bullet_type = obj_Nightmare_Bullet;
        bullet_size = 1;
        bullet_speed = bossbulletspeed * (1.55 + random(0.2));
        bullet_count = 3;
        bullet_spread = 66;
        scr_Soul_Shoot();
        
        bossActiveAttack[1] = -1;
    }
}


/// Active Attack Pattern Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Echolocation_Shot;
    bullet_sprite = spr_Echolocation_Shot;
    bullet_speed = bossbulletspeed * 1.4;
    bullet_power = bosspower;
    bullet_direction = image_angle - 90 + + 90 + (-10 + random(20)) / bossaccuracy;
    bullet_lifespan = 800;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;
    
if bossActiveAttackDelay[1] <= 0 and bossPatternsCooldown[1] <= 0 and bossPatternsCount[1] > 0 {
  
    bossPatternsCount[3] -= 1;
    bossPatternsCooldown[3] += bossPatternsCooldownMax[3];
}

/// Active Attack Post
   
if bossActiveAttackDuration[1] <= 0 { 
    bossActiveAttack[1] = 0;
}

#region /// Boss Sprite Code

scr_Boss_Size_Lerp(0.15);

//if champ = 0 {
	if bossActiveAttack[1] != 0 { // Sonic Attack
		sprite_index = spr_Rain_Manifestation_Blink;
		if image_index >= 5 and bossActiveAttackDuration[1] > 5 {
			image_index = 5;	
		}
	} else { // Default
		sprite_index = spr_Rain_Manifestation;		
	}
//}

#endregion

scr_Boss_Soul_Hitbox(sprite_index);