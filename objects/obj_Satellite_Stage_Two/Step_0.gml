scr_Boss_Status_Step();

scr_Boss_Attack_Step();

cOrbit += 1;

target = minionbossparent;
speed = bossmovespeed;

if cOrbit > bulletOrbit {
	cOrbit = bulletOrbit;	
}

if instance_exists(target) {
    bulletCenterX = target.x;
    bulletCenterY = target.y;
    
    bulletAngle += speed;
    if (bulletAngle >= 360) {
        bulletAngle -= 360;
    }
    
    x = lengthdir_x(cOrbit, bulletAngle) + bulletCenterX;
    y = lengthdir_y(cOrbit, bulletAngle) + bulletCenterY;
} else {
    instance_destroy();
}


if bossActiveAttackDelay[1] <= 0 and bossActiveAttackCooldown[1] <= 0 and bossActiveAttackDuration[1] <= 0 {
    bossActiveAttack[1] = choose(1);
	
	state = states.normal;
	
	if bossActiveAttack[1] = 1 {
        bossActiveAttackDelay[1] = 10;
        bossPatternCount = 2;
		bossPatternCountMax = 1;
        bossPatternCooldown = 10;
        bossPatternCooldownMax = 45;
        bossActiveAttackDuration[1] = 30 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 180 + random(60);
    }
	
}

/// Active Attack Pattern Code


if bossActiveAttackDelay[1] <= 0 and bossPatternCooldown <= 0 and bossPatternCount > 0 {
        
	scr_Default_Attack_Settings();
    bullet_type = obj_Triple_Bullet_Circle;
    bullet_sprite = spr_Glowy_Purple_Shot;
    bullet_speed = bossbulletspeed * (1 + random(0.1));
    bullet_power = bosspower;
    bullet_direction = (-15 + random(30)) / bossaccuracy;
    bullet_lifespan = 300;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    bullet_image_speed = 1;
    boss_radius = 0;

	
	if bossActiveAttack[1] = 1 {
		scr_Boss_Stretch("Vertical",0.4);
		
	    bullet_count = 1;
		
	    scr_Soul_Shoot();
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
