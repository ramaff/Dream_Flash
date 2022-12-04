    scr_Default_Attack_Settings();
    bullet_type = obj_Poison_Pool;
    bullet_sprite = spr_Poison_Pool;
    bullet_speed = bossbulletspeed * 0;
    bullet_image_speed = 0.2;
    bullet_power = bosspower * 0.25;
    bullet_direction = (-10 + random(20)) / bossaccuracy;
    bullet_lifespan = 300;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;
    
	bullet_speedfac_min = 1;
    bullet_speedfac_add = 0;
    bullet_timefac_min = 1;
    bullet_timefac_add = 0;
	
	scr_Suicide_Even_Shoot(1,bullet_speed,300);
	
	scr_Default_Attack_Settings();
    bullet_type = obj_Basic_Bullet;
    bullet_sprite = spr_Glowy_Purple_Shot;
    bullet_speed = bossbulletspeed * (0.6 + random(0.05));
    bullet_image_speed = 0.5;
    bullet_power = bosspower;
    bullet_direction = (-10 + random(20)) / bossaccuracy;
    bullet_lifespan = 80;
    bullet_size = 1;
    bullet_count = 3;
    bullet_spread = 360;
    boss_radius = 0;
	
	bullet_type = obj_Poison_Ball_Bullet;
    bullet_sprite = spr_Glowy_Green_Shot;
    
	bullet_speedfac_min = 1;
    bullet_speedfac_add = 1;
    bullet_timefac_min = 1;
    bullet_timefac_add = 0;
	
	//repeat(3) {
		//bullet_speed = bossbulletspeed * (1.2 + random(1));
		//bullet_direction = random(360);
		scr_Suicide_Vomit();
	//}
    
    ds_list_destroy(projectile_hits);
    scr_H14_Minion();

