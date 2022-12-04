/// @description  Boss Step Event

scr_Boss_Step();

//image_angle = direction;

//scr_Boss_Two_Face_Direction();

/*

image_xscale = 0.66;
image_yscale = 0.66;

/* */
with (other) {
///Passive Attack Prep

if bossPassiveAttackDelay[1] <= 0 and bossPassiveAttackCooldown[1] <= 0 {
    if champ = 0 || champ = 1 || champ = 2 {
        bossPassiveAttack[1] = 1;
        bossPassiveAttackCooldown[1] = 15 + random(16);
        bossPassiveAttackDelay[1] = 0;
    }
}


/* */
}
///Passive Attack Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Dormant_Bullet;
    bullet_sprite = spr_Dormant_Shot;
    bullet_speed = bossbulletspeed * (0.6 + random(0.5));
    bullet_power = bosspower * 1;
    bullet_direction = (-180 + random(360)) / bossaccuracy;
    bullet_lifespan = 600 + random(360);
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;
	
	bullet_part = 2;
	bullet_part_sprite = spr_Bullet_Part;
	bullet_part_area = 5;
	bullet_part_life = 25;
	bullet_part_color1 = make_color_rgb(255,0,106);
	bullet_part_color2 = c_white;

    if champ = 1 {
        bullet_speed = bossbulletspeed * (0.9 + random(0.5));
        bullet_sprite = spr_Inactive_Shot;
    }
    if champ = 2 {
        bullet_speed = bossbulletspeed * (0.75 + random(0.4));
        bullet_sprite = spr_Cursed_Dormant_Shot;
    }
    
if bossPassiveAttack[1] = 1 {
    bullet_direction = scr_Soul_Point();
    bullet_direction += (-180 + random(360)) / bossaccuracy;
    scr_Just_Shoot(); 
}

bossPassiveAttack[1] = 0;
bossPassiveAttack[2] = 0;

/* */
///Active Attack Prep

if bossActiveAttackDelay[1] <= 0 and bossActiveAttackCooldown[1] <= 0 and bossActiveAttackDuration[1] <= 0 {
    bossdirection = (-45 + random(90)) + scr_Soul_Point();
    speed = (1 + random(1)) * bossmovespeed;
    direction = bossdirection;    

    bossActiveAttack[1] = choose(1,2,3,3);
    if champ = 1 {
        bossActiveAttack[1] = choose(2,3);
    }
    if champ = 2 {
        bossActiveAttack[1] = choose(1,4,3,3);
    }

    if bossActiveAttack[1] = 1 {
        bossActiveAttackDelay[1] = 15;
		bossPatternCount = 60;
        bossPatternCooldown = 1;
        bossPatternCooldownMax = 1;
        bossPatternDirection = random(360);
        bossActiveAttackDuration[1] = 15 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 30 + random(30);
    }
    if bossActiveAttack[1] = 2 {
        bossActiveAttackDelay[1] = 15;
		bossPatternCount = 3;
        bossPatternCooldown = 20;
        bossPatternCooldownMax = 20;
        bossPatternDirection = random(360);
        bossActiveAttackDuration[1] = 15 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 75 + random(30);
    }
    if bossActiveAttack[1] = 3 {
        scr_Boss_Dash_Setup();
        bossPatternCount = 100;
		if champ = 1 {
			bossPatternCount += 20;	
		}
        bossPatternCountMax = bossPatternCount;
        bossPatternCooldown = 1;
        bossPatternCooldownMax = 1;
        bossActiveAttackDuration[1] = 15 + bossattackspeed * bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 60 + random(30);
		
		var bossdirection = scr_Soul_Point();
        bossMaxDashSpeed = 18 * bossmovespeed;
		if champ = 1 {
			bossMaxDashSpeed -= 1 * bossmovespeed;
		}
		bossDashSpeed = 0;
    }
    if bossActiveAttack[1] = 4 {
        bossActiveAttackDelay[1] = 15;
        bossPatternCount = 8;
        bossPatternCooldown = 15;
        bossPatternCooldownMax = 15;
        bossPatternDirection = random(360);
        bossActiveAttackDuration[1] = 30 + bossPatternCooldownMax * bossPatternCount;
        bossActiveAttackCooldown[1] = 105 + random(30);
    }
    bossPatternCountMax = bossPatternCount;
}


/* */
/// Active Attack Code
    
    scr_Default_Attack_Settings();
    bullet_type = obj_Direction_Bullet;
    bullet_sprite = spr_Wicked_Shot;
    bullet_speed = bossbulletspeed;
    bullet_power = bosspower * 1;
    bullet_direction = (-5 + random(10)) / bossaccuracy;
    bullet_lifespan = 120 + random(90);
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;
    
if bossActiveAttackDelay[1] <= 0 {
     
    
    
}

/* */
/// Active Attack Pattern Code
    
     scr_Default_Attack_Settings();
    bullet_type = obj_Direction_Bullet;
    bullet_sprite = spr_Wicked_Shot;
    bullet_speed = bossbulletspeed;
    bullet_power = bosspower * 1;
    bullet_direction = (-5 + random(10)) / bossaccuracy;
    bullet_lifespan = 120 + random(90);
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;

if bossActiveAttackDelay[1] <= 0 and bossPatternCooldown <= 0 and bossPatternCount > 0 {

	if bossActiveAttack[1] = 1 {
		if bossPatternCount mod 10 = 0 {
			scr_Boss_Stretch("Vertical", 0.2);
		}
		
        if champ != 2 {
            with (obj_Dormant_Bullet) {
                if speed < bulletspeed * 3.7 {
					//direction = scr_Soul_Point();
					
					if distance_to_object(obj_Soul) <= 1330 {
					    var im = direction;
    
					    //speed = min(speed,bulletspeed * 0.1);
    
					    var pointDir = scr_Soul_Point();
					    im += sin(degtorad(pointDir - im)) * 15;
					    direction = im;

					}

					speed += bulletspeed * (0.075 + random(0.02));
                }
            }
        }
        if champ = 2 {
            with (obj_Dormant_Bullet) {
                dir = random(360);
                dirspeed = bulletspeed * (1.35 + random(0.5))
                repeat(4) {
                    with instance_create(x,y,obj_Basic_Bullet) {
                        scr_Bullet_Replicate_Properties();
                        sprite_index = spr_Glowy_Enemy_Shot;
                        bulletsize = 0.5;
                        image_xscale = bulletsize;
                        image_yscale = bulletsize;
                        bulletspeed = other.dirspeed;
                        bulletpower = other.bulletpower;
                        speed = bulletspeed;
                        direction = other.dir;
                    }
                    dir += 90
                }
                instance_destroy();
            }
        }
    }
	
	if bossActiveAttack[1] = 2 {
		scr_Boss_Stretch("Vertical", 0.4);
		
        bullet_type = obj_Smart_Spin_Phase_Bullet;
        bullet_count = 12;
		bullet_speed = bossbulletspeed * (2.75 + random(0.5));
		if bossPatternCount < bossPatternCountMax {
			bullet_count = 6;
			bullet_speed -= bossbulletspeed * (0.5);
		}
        bullet_spread = 360 / bullet_count;
        bullet_lifespan = 270;
        scr_Just_Shoot();
    }
	
    if bossActiveAttack[1] = 3 {
		if bossPatternCount mod 5 = 0{
			scr_Boss_Stretch("Horizontal", 0.05);
		}
        bossPhase = 1;
        scr_Boss_Dash_Movement(40,10);
		
		speed = bossDashSpeed;
        direction = bossDashDirection;
		
		if (bossPatternCount = round((bossPatternCountMax - 20) / 2)) || (bossPatternCount = 1) {
			if champ != 1 {
			bossDashDirection += 180;
			} else {
				bossDashDirection = scr_Soul_Point();
			}
			
	        if champ != 2 {
	            bullet_type = obj_Direction_Phase_Bullet;
	            bullet_count = 12 + (1 * irandom(2));
	            bullet_spread = 360 / bullet_count;
	            bullet_lifespan = 400;
	            bullet_speed = bossbulletspeed * 2;
	        }
	        if champ = 2 {
	            bullet_type = obj_Homing_Bullet;
	            bullet_count = 5 + (irandom(1));
	            bullet_spread = 360 / bullet_count;
	            bullet_lifespan = 240;
	            bullet_speed = bossbulletspeed * 1.2;
	        }
			
			scr_Boss_Stretch("Vertical", 0.4);
			
			scr_Just_Shoot();
		}
        
    }
    
    if bossActiveAttack[1] = 4 {
		if bossPatternCount mod 5 = 0 {
			scr_Boss_Stretch("Vertical", 0.3);
		}
		
        bullet_count = 4;
        bullet_spread = 90;
        bullet_type = obj_Spin_Phase_Bullet;
        bullet_lifespan = 180;
        bullet_speed = bossbulletspeed * (2.4 + random(0.1));
        bullet_direction = bossPatternDirection;
        bossPatternDirection -= 18;
        scr_Just_Shoot();
    }
    
    bossPatternCount -= 1;
    bossPatternCooldown += bossPatternCooldownMax;
}



/* */
/// Active Attack Post
   
if bossActiveAttackDuration[1] <= 0 { 

    bossPhase = 0;
    speed = (1 + random(1)) * bossmovespeed;

    bossActiveAttack[1] = 0;
    bossActiveAttack[2] = 0;
    bossActiveAttack[3] = 0;
    bossActiveAttack[0] = 0;
}

#region /// Boss Sprite

scr_Boss_Size_Lerp_Dir(0.15);

 if bossActiveAttack[1] != 0 {
    sprite_index = spr_Wicked_Spectre_Attack;
	if image_index > 8 and bossActiveAttackDuration[1] > 10 {
		image_index = 3;
	}
	if bossActiveAttackDuration[1] <= 10 and image_index < 8 {
		image_index = 8;	
	}
} else {
	sprite_index = spr_Wicked_Spectre;
}

#endregion

scr_Boss_Soul_Hitbox(sprite_index);