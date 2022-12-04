scr_Boss_Status_Step();

scr_Boss_Two_Face_Direction();

scr_Room_Loop_Horizontal_Long();

speed = setspeed;

souldir = scr_Soul_Point();
var adif = angle_difference(direction, souldir);
if adif < 0 {
    direction += 0.2;
}
if adif > 0 {
    direction -= 0.2;
}

scr_Boss_Attack_Step();

///

if bossActiveAttackDelay[1] <= 0 and bossActiveAttackCooldown[1] <= 0 and bossActiveAttackDuration[1] <= 0 {
    bossActiveAttack[1] = choose(1);
	
	state = states.normal;
	
    if bossActiveAttack[1] = 1 {
		image_index = 0;
		
		bossActiveAttackDelay[1] = 10;
		
		bossActiveAttackDuration[1] = 20;
        bossActiveAttackCooldown[1] = 160 + (irandom(4) * 20);
    }
	
}

/// Active Attack Pattern Code


if bossActiveAttackDelay[1] <= 0 {
        
	scr_Default_Attack_Settings();
    bullet_type = obj_Direction_Bullet;
    bullet_sprite = spr_Glowy_Enemy_Shot;
    bullet_speed = bossbulletspeed * (1.45 + random(0.45));
    bullet_power = bosspower;
    bullet_direction = (-5 + random(10)) / bossaccuracy;
    bullet_lifespan = 400;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    bullet_image_speed = 1;
    boss_radius = 0;
	
	if bossActiveAttack[1] = 1 {
        bullet_spread = 15;
	    bullet_count = 2;
		
	    scr_Soul_Shoot();
		
		bossActiveAttack[1] = -1;
    }
	
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

scr_Boss_Size_Lerp(0.15);

if bossActiveAttack[1] != 0 {
	sprite_index = spr_Locust_Spawn_Shoot;
} else {
	sprite_index = spr_Locust_Spawn;
}

scr_Boss_Soul_Hitbox(sprite_index);
