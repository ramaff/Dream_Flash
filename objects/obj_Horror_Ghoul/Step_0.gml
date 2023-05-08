scr_Boss_Status_Step();

souldir = scr_Soul_Point();
var adif = angle_difference(direction, souldir);
if adif < 0 {
    direction += 0.2;
}
if adif > 0 {
    direction -= 0.2;
}

scr_Boss_Attack_Step();


var bossdirection = scr_Soul_Point();
    speed = 2 * bossmovespeed;
	if bossActiveAttack[1] != 0 {
		speed = 0.05 * bossmovespeed;	
	}
    direction = bossdirection;
///

if bossActiveAttackDelay[1] <= 0 and bossActiveAttackCooldown[1] <= 0 and bossActiveAttackDuration[1] <= 0 {
    bossActiveAttack[1] = choose(1);
	
	state = states.normal;
	
    if bossActiveAttack[1] = 5 {
		image_index = 0;
		
		jumpDirection = "Up";
		jumpHeight = 0;
		
		bossActiveAttackDelay[1] = 0;
		
        scr_Boss_Dash_Setup();
        bossPatternCount = 60;
        bossPatternCountMax = bossPatternCount;
        bossPatternCooldown = 10;
        bossPatternCooldownMax = 1;
		
		var bossdirection = scr_Soul_Point();
        bossDashDirection = bossdirection - 30 + random(60);
		
		bossDashSpeed = 0;
		bossMaxDashSpeed = bossmovespeed * 3.5;
		
		bossActiveAttackDuration[1] = 20 + bossattackspeed * bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 45 + random(5);
    }
	if bossActiveAttack[1] = 1 {
        bossActiveAttackDelay[1] = 10;
        bossPatternCount = 1;
		bossPatternCountMax = 1;
        bossPatternCooldown = 10;
        bossPatternCooldownMax = 10;
        bossActiveAttackDuration[1] = 40 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 210 + random(120);
    }
	
}

/// Active Attack Pattern Code


if bossActiveAttackDelay[1] <= 0 and bossPatternCooldown <= 0 and bossPatternCount > 0 {
        
	scr_Default_Attack_Settings();
    bullet_type = obj_Basic_Bullet;
    bullet_sprite = spr_Glowy_Enemy_Shot;
    bullet_speed = bossbulletspeed * (0.9 + random(0.15));
    bullet_power = bosspower;
    bullet_direction = (-5 + random(10)) / bossaccuracy;
    bullet_lifespan = 400;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    bullet_image_speed = 1;
    boss_radius = 0;
	
	if bossActiveAttack[1] = 5 {
		scr_Boss_Dash_Movement(15,15);
		
		speed = bossDashSpeed;
        direction = bossDashDirection; 	
	}
	
	if bossActiveAttack[1] = 1 {
		scr_Boss_Stretch("Vertical",0.4);
		
	    bullet_count = 7;
		bullet_spread = 180 / bullet_count;
		
	    scr_Soul_Shoot();
		
		bullet_count = 3;
		bullet_spread = 180 / bullet_count;
		
		repeat(2) {
			bullet_speed += bossbulletspeed * 0.2;
			scr_Soul_Shoot();
		}
		
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

if bossActiveAttack[1] = 1 {
	sprite_index = spr_Horror_Minion_Shoot;
	if image_index >= 3 and bossActiveAttackDuration[1] >= 10 {
		image_index = 3;
	}
} else {
	sprite_index = spr_Horror_Minion;
}

scr_Boss_Soul_Hitbox(sprite_index);
