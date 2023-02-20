function scr_Default_Attack_Settings() {

		bullet_type = obj_Basic_Red_Bullet;
	    bullet_sprite = spr_Glowy_Enemy_Shot;
	    bullet_speed = bossbulletspeed * 1.5;
	    bullet_power = bosspower;
	    bullet_direction = (-10 + random(20)) / bossaccuracy;
	    bullet_lifespan = 180;
	    bullet_size = 1;
	    bullet_count = 1;
	    bullet_spread = 0;
	    bullet_image_speed = 1;
		bullet_direction_angle = 1;
		bullet_depth = 0;
	
		bullet_part = 0;
		bullet_part_sprite = spr_Essence_Trail_Bit;
		bullet_part_area = 16;
		bullet_part_frequency = 5;
		bullet_part_life = 30;
		bullet_part_color1 = c_white;
		bullet_part_color2 = c_white;
		
		bullet_crowd_direction = 0;
		bullet_crowd_speed = 0;
		bullet_crowd_acceleration = 0;
		
		bullet_bounce_Y = 0;
		bullet_bounce_speed = 10;
	    bullet_bounce_direction = 1;
		
	
		bullet_blend = 0;
	    bullet_fade = 1;
	
	    soul_shot_block = 0;
	    bullet_id = id;
	    bullet_hit_list = {}//ds_list_create();
	    bullet_hit_ID = noone;
	    boss_Part = 0;
    
	    boss_radius = 0;
	    boss_xoffset = 0;
	    boss_yoffset = 0;
    
	    bullet_speedfac_min = 1;
	    bullet_speedfac_add = 0;
	    bullet_timefac_min = 1;
	    bullet_timefac_add = 0;
	
		bullet_stun = 0;
		bullet_stun_time = 0;
		bullet_sleep = 0;
		bullet_sleep_time = 0;
		
		bullet_crowd_direction = 0;
		bullet_crowd_speed = 0;
		bullet_crowd_acceleration = 0;
    
	    minion_count = 1;
	    minion_type = noone;
	    minion_maxhealth = bossmaxhealth;
	    minion_health = bossmaxhealth;
	    minion_power = bosspower;
	    minion_knockdefense = bossknockdefense - 10;
	    minion_movespeed = bossmovespeed;
	    minion_attackspeed = bossattackspeed;
	    minion_accuracy = bossaccuracy;    
	    minion_defense = bossdefense;
	    minion_bulletspeed = bossbulletspeed;
	    minion_knockbackforce = bossknockbackforce;
	    minion_contactdamage = bosscontactdamage;
		minion_target = other.id;
		
		minion_dir = 0;
		minion_speed = 0;
	
		minion_xx = 0;
		minion_yy = 0;
		
		bullet_target = 0;


}
