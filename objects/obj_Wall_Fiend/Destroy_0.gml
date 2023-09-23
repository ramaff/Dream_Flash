
    scr_H14_Minion();
    
    scr_Default_Attack_Settings();

    bullet_type = obj_Basic_Bullet;
    bullet_sprite = spr_Glowy_Enemy_Shot;
    bullet_speed = bossbulletspeed * (1.35 + random(0.25));
    bullet_power = bosspower;
    bullet_direction = (-10 + random(20)) / bossaccuracy;
    bullet_lifespan = 300 + irandom(90);
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;
    
    bullet_count = 6;
    bullet_spread = 360 / bullet_count;
    bullet_lifespan = 300;
	
	bullet_speedfac_min = 1;
    bullet_speedfac_add = 0;
    bullet_timefac_min = 1;
    bullet_timefac_add = 0;
	
    scr_Suicide_Even_Shoot(6,bullet_speed,400);
	
	bullet_direction += 30;
	
	scr_Suicide_Even_Shoot(6,bullet_speed * 0.75,400);