/// @description  Boss Step Event

scr_Boss_Step();

if instance_exists(obj_Fleeing_Twin_Horror) and currentphase = 1 {

    var dist = point_distance(x,y,obj_Fleeing_Twin_Horror.x,obj_Fleeing_Twin_Horror.y);
   
    var ang = point_direction(x,y,obj_Fleeing_Twin_Horror.x,obj_Fleeing_Twin_Horror.y);
	
	var num = 0
	repeat(9) {
		num++;
	    var xx = lengthdir_x(dist * 0.1 * num,ang);
	    var yy = lengthdir_y(dist * 0.1 * num,ang);
    
	    with instance_create(x + xx,y + yy,obj_Thought) {
			sprite_index = spr_Boss_Chain;
	        image_index = 0;
	    }
	}
	
	if dist > 400 {
		x = obj_Fleeing_Twin_Horror.x + lengthdir_x(400,ang+180);	
		y = obj_Fleeing_Twin_Horror.y + lengthdir_y(400,ang+180);	
	}
}

#region ///Passive Attack Prep

if bossPassiveAttackDelay[1] <= 0 and bossPassiveAttackCooldown[1] <= 0 {
    var bossdirection = scr_Soul_Point();
    speed = 3 * bossmovespeed;
	if bossActiveAttack[1] != 0 {
		speed = 0.05 * bossmovespeed;	
	}
    direction = bossdirection;
    
}

#endregion

#region ///Passive Attack Code   

if bossPassiveAttack[1] = 1 {
    
}

bossPassiveAttack[1] = 0;
bossPassiveAttack[2] = 0;

#endregion

#region ///Active Attack Prep

if bossActiveAttackDelay[1] <= 0 and bossActiveAttackCooldown[1] <= 0 and bossActiveAttackDuration[1] <= 0 {
    
    speed = 0;

    bossActiveAttack[1] = choose(1);
    bossActiveAttackDelay[1] = 15;
    if currentphase = 2 {
        bossActiveAttack[1] = choose(1,2,3);
    }
    
    if bossActiveAttack[1] = 1 {
		image_index = 0;
        bossActiveAttackCooldown[1] = 300 + (30 * irandom(1));
		if currentphase = 2 {
			bossActiveAttackCooldown[1] -= 120;	
		}
        bossActiveAttackDuration[1] = 20;
    }
    if bossActiveAttack[1] = 2 {
		scr_Boss_Teleport();
		image_index = 0;
        bossActiveAttackCooldown[1] = (180 + (30 * irandom(1)));
        bossPatternCount = 30;
        bossPatternCooldown = 4;
		bossPatternCooldownMax = 4;
        bulletdirection = random(360);
        bossPatternDirection = scr_Soul_Point();
        bossActiveAttackDuration[1] = 15 + bossPatternCooldown * bossPatternCount;
    }
    if bossActiveAttack[1] = 3 {
		scr_Boss_Teleport();
		image_index = 0;
        bossActiveAttackCooldown[1] = (180 + (30 * irandom(1)));
        bossPatternCount = 65;
        bossPatternCooldown = 45;
		bossActiveAttackDelay[1] = 45;
		bossPatternCooldownMax = 6;
        bulletdirection = random(360);
        bossPatternDirection = bulletdirection;
        bossActiveAttackDuration[1] = 60 + bossPatternCooldownMax * bossPatternCount;
    }
    
}

if bossActiveAttack[1] = 3 and bossActiveAttackDuration[1] > 0 {
	scr_Only_Soul_Push_Pull(4);
	
	var dist = point_distance(x,y,obj_Soul_Parent.x,obj_Soul_Parent.y);
   
    var ang = point_direction(x,y,obj_Soul_Parent.x,obj_Soul_Parent.y);
	
	var num = 0
	repeat(9) {
		num++;
	    var xx = lengthdir_x(dist * 0.1 * num,ang);
	    var yy = lengthdir_y(dist * 0.1 * num,ang);
    
	    with instance_create(x + xx,y + yy,obj_Thought) {
			sprite_index = spr_Soul_Chain;
	        image_index = 0;
	    }
	}
}

#endregion

#region /// Active Attack Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Basic_Bullet;
    bullet_sprite = spr_Glowy_Enemy_Shot;
    bullet_speed = bossbulletspeed;
    bullet_power = bosspower;
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
    
    if bossActiveAttack[1] = 1 {
		scr_Boss_Stretch("Vertical",0.5);
		
        bullet_count = 13;
        bullet_spread = 180 / bullet_count;
        bullet_speed = bossbulletspeed * (1.15 + random(0.1));
        scr_Soul_Shoot();
		
		bullet_direction -= 3;
		
		repeat(3) {
			bullet_count = 3;
			bullet_spread = 180 / bullet_count;
			bullet_direction -= 6;
	        bullet_speed += bossbulletspeed * (0.2);
			scr_Soul_Shoot();
		
			bullet_direction += 6;
	        bullet_speed += bossbulletspeed * (0.2);
			scr_Soul_Shoot();
		
		}
		
		bossActiveAttack[1] = -1;
    }
    
    if bossActiveAttack[1] != 4 and bossActiveAttack[1] != 5 and bossActiveAttack[1] != 8 and bossActiveAttack[1] != 7 and bossActiveAttack[1] != 9 {
        //bossActiveAttack[1] = 0;
    }
}

#endregion

#region /// Active Attack Pattern Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Basic_Bullet;
    bullet_sprite = spr_Glowy_Enemy_Shot;
    bullet_speed = bossbulletspeed;
    bullet_power = bosspower;
    bullet_direction = (-5 + random(10)) / bossaccuracy;
    bullet_lifespan = 400;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;

if bossActiveAttackDelay[1] <= 0 and bossPatternCooldown <= 0 and bossPatternCount > 0 {
        
    if bossActiveAttack[1] = 2 {
		scr_Boss_Stretch("Vertical",0.1);
		
		bullet_lifespan = 240;
	
		repeat(2) {
	        bullet_speed = bossbulletspeed * (1.9 + random(0.4));
			bullet_direction = bossPatternDirection + ((-7.5 + random(15)) / bossaccuracy);
			
			bossPatternDirection = scr_Angle_Converge(bossPatternDirection, scr_Soul_Point(), 5)
			
	        bullet_count = 1;
			bullet_size = (5 + irandom(1)) / 5;
	        scr_Just_Shoot();
		}
    }
    if bossActiveAttack[1] = 3 {
		scr_Boss_Stretch("Vertical",0.1);
		
        bullet_speed = bossbulletspeed * 1.35;
        bullet_direction = bossPatternDirection;
        bullet_count = 3;
        bullet_spread = 360 / bullet_count;
        scr_Just_Shoot();
    
        bossPatternDirection += 12;
    }
	
	if bossActiveAttack[1] = 7 {
        scr_Boss_Dash_Movement(33,5);
		scr_Boss_Stretch("Horizontal",0.02);
		
		speed = bossDashSpeed;
        direction = bossDashDirection;
		
		if bossPatternCount = 1 {
			scr_Boss_Stretch("Vertical",0.35);
			
			bullet_speed = bossbulletspeed * 2.05;
	        bullet_direction = random(360);
	        bullet_type = obj_Basic_Bullet;
	        bullet_sprite = spr_Glowy_Pink_Shot;
	        bullet_count = 8;
	        bullet_power = bosspower;
	        bullet_spread = 360 / bullet_count;
	        scr_Just_Shoot();
			
			if champ = 2 {
				bullet_speed = bossbulletspeed * 2.5;
				scr_Just_Shoot();
				bullet_speed = bossbulletspeed * 1.5;
				bullet_direction += 22.5;
				scr_Just_Shoot();
			}
		}
		
    }
    
    if bossActiveAttack[1] = 8 {
		scr_Boss_Stretch("Vertical",0.05);
		
        bullet_speed = bossbulletspeed * 3 + random(1);
        bullet_type = obj_Direction_Bullet;
        bullet_sprite = spr_Yellow_Laser;
        bullet_direction = (-1 + random(2)) / bossaccuracy;
        bullet_power = bosspower;
        
		if bossPatternCount >= 0 {
	        boss_xoffset = -15;
	        boss_yoffset = -15;
	        scr_Offset_Soul_Shoot();
        
	        boss_xoffset = 15;
	        scr_Offset_Soul_Shoot();
		}
		
		if bossPatternCount <= 1 {
			bullet_count = 6;
			bullet_spread = 15;
			bullet_speed = bossbulletspeed * 3;
			
			boss_xoffset = -15;
	        boss_yoffset = -15;
	        scr_Offset_Soul_Shoot();
        
	        boss_xoffset = 15;
	        scr_Offset_Soul_Shoot();
			
		}
    
    }
	
	if bossActiveAttack[1] = 9 {
		scr_Boss_Stretch("Vertical",0.05);
		
        bullet_speed = bossbulletspeed * 2.1;
        bullet_direction = bossPatternDirection;
        bullet_type = obj_Basic_Bullet;
        bullet_power = bosspower;
        bullet_sprite = spr_Glowy_Yellow_Shot;
        
		bullet_count = 2;
        bullet_spread = 180;
        scr_Just_Shoot();
		
		bullet_direction = -bossPatternDirection;
		bullet_count = 2;
        bullet_spread = 180;
        scr_Just_Shoot();
    
        bossPatternDirection += 15;
    }
	bossPatternCount -= 1;
	bossPatternCooldown += bossPatternCooldownMax;
}

#endregion

#region /// Active Attack Post
   
if bossActiveAttackDuration[1] <= 0 { 
    bossActiveAttack[1] = 0;
    bossActiveAttack[2] = 0;
}

#endregion

#region /// Boss Sprite

scr_Boss_Size_Lerp(0.15);

if bossActiveAttack[1] != 0 { // Default
	if bossActiveAttackDuration[1] > 10 {
		sprite_index = spr_Chasing_Twin_Horror_Shoot;
		if image_index > 7 {
			image_index = 2;	
		}
	} else {
		sprite_index = spr_Chasing_Twin_Horror;
	}
} else {
	sprite_index = spr_Chasing_Twin_Horror;
}

#endregion

scr_Boss_Soul_Hitbox(sprite_index);