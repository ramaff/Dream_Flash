
	
	
	scr_Default_Attack_Settings();
    bullet_type = obj_Basic_Bullet;
    bullet_sprite = spr_Glowy_Purple_Shot;
    bullet_speed = bossbulletspeed * (0.9 + random(0.05));
    bullet_image_speed = 0.5;
    bullet_power = bosspower;
    bullet_direction = (-10 + random(20)) / bossaccuracy;
    bullet_lifespan = 90;
    bullet_size = 1;
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;
	
	bullet_type = obj_Bubble_Bullet;
	bullet_sprite = spr_Pink_Bubble_Bullet;
    
	bullet_speedfac_min = 1;
    bullet_speedfac_add = 1;
    bullet_timefac_min = 1;
    bullet_timefac_add = 0;
	
	repeat(4) {
		bullet_speed = bossbulletspeed * (0.75 + random(0.7));
		
		bullet_direction = scr_Boss_Bullet_Direction_Formula(scr_Soul_Point(), 70)
		
		scr_Boss_Shoot()
	}
    
    //ds_list_destroy(projectile_hits);
    

