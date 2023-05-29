/// @description  Boss Step Event

scr_Boss_Step();

if instance_exists(obj_Sandman) {

    dist = point_distance(x,y,obj_Sandman.x,obj_Sandman.y);
    
    ang = point_direction(x,y,obj_Sandman.x,obj_Sandman.y);
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
} else {
    instance_destroy();
}

///Passive Attack Prep

if bossPassiveAttackDelay[1] <= 0 and bossPassiveAttackCooldown[1] <= 0 {
    if champ = 0 and currentphase = 2 {
        bossPassiveAttack[1] = 1;
        bossPassiveAttackCooldown[1] = 15;
        bossPassiveAttackDelay[1] = 0;
    }
}


///Passive Attack Code   

if bossPassiveAttack[1] = 1 {
    
}

bossPassiveAttack[1] = 0;
bossPassiveAttack[2] = 0;

///Active Attack Prep

if bossActiveAttackDelay[1] <= 0 and bossActiveAttackCooldown[1] <= 0 and bossActiveAttackDuration[1] <= 0 {
    
    speed = bossmovespeed * (0.25 + random(0.1));
    bossdirection = scr_Soul_Point();
    direction = bossdirection;

    bossActiveAttack[1] = choose(1,1,3);
    bossActiveAttackDelay[1] = 10;
    
    if bossActiveAttack[1] = 1 {
        bossActiveAttackDelay[1] = 15;
        bossActiveAttackCooldown[1] = (90 + random(30));
        bossPatternCount = 5;
        bossPatternCooldown = 13;
        bulletdirection = random(360);
        bossPatternDirection = bulletdirection;
        bossActiveAttackDuration[1] = 10 + bossPatternCooldown * bossPatternCount;
    }
    if bossActiveAttack[1] = 2 {
        bossActiveAttackCooldown[1] = (180 + random(60));
        bossActiveAttackDuration[1] = 15;
    }
    if bossActiveAttack[1] = 3 {
        scr_Boss_Teleport_From_Boss(300);
        bossActiveAttackCooldown[1] = (15 + random(5));
        bossActiveAttackDuration[1] = 15;
    }
    
}


/// Active Attack Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Mischief_Bullet;
    bullet_sprite = spr_Mischief_Shot;
    bullet_speed = bossbulletspeed;
    bullet_power = bosspower * 2;
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
        bullet_count = 1 + irandom(1);
        bullet_spread = 20
        bullet_speed = bossbulletspeed * (1.5 + random(0.4));
        scr_Soul_Shoot();
        bossActiveAttack[1] = 0;
    }
}

/// Active Attack Pattern Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Mischief_Bullet;
    bullet_sprite = spr_Mischief_Shot;
    bullet_speed = bossbulletspeed;
    bullet_power = bosspower * 2;
    bullet_direction = (-2.5 + random(5)) / bossaccuracy;
    bullet_lifespan = 400;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;

if bossActiveAttackDelay[1] <= 0 and bossPatternCooldown <= 0 and bossPatternCount > 0 {
        
    
    if bossActiveAttack[1] = 1 {
		scr_Boss_Stretch("Horizontal", 0.1);
		
        bullet_speed = bossbulletspeed * (1.4 + random(0.1));
        //bullet_direction = bossPatternDirection;
        bullet_type = obj_Basic_Bullet;
        bullet_sprite = spr_Glowy_Dark_Shot;
        bullet_count = 5;
        bullet_power = bosspower;
        bullet_spread = 15;
        scr_Soul_Shoot();
    
        bossPatternCount -= 1;
        bossPatternCooldown += 9;
    }
    
}

/// Active Attack Post
   
if bossActiveAttackDuration[1] <= 0 { 
    bossActiveAttack[1] = 0;
    bossActiveAttack[2] = 0;
}

/// Boss Sprite Code

#region /// Boss Sprite

scr_Boss_Size_Lerp(0.15);


//if currentphase = 3 {
	if bossActiveAttack[1] != 0 {
	    sprite_index = spr_Sandman_Thought_Blink;
		if image_index >= 4 {
			image_index = 4;	
		}
	} else {
		sprite_index = spr_Sandman_Thought;
	}
//}

#endregion

scr_Boss_Soul_Hitbox(sprite_index);