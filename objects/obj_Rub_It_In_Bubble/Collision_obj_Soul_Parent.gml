with (obj_Main_Boss_Parent) {
    
	var dmg = 25;
	bosshealth -= dmg;
            
	scr_Damage_Indicator(0, dmg, 3);
	
	scr_Default_Attack_Settings();
    bullet_type = obj_Basic_Bullet;
    bullet_sprite = spr_Glowy_Enemy_Shot;
    bullet_speed = 2 + random(3);
    bullet_power = global.stagedamage;
    bullet_direction = (-45 + random(90)) / bossaccuracy;
    bullet_lifespan = 300;
    bullet_size = 1;
    bullet_count = 4;
    bullet_spread = 90;
    boss_radius = 0;
    bullet_image_speed = 0.5
	
	repeat(3) {
		bullet_direction += 12.5;
		scr_Just_Shoot()
	}
	bullet_speed += 3;
	repeat(3) {
		bullet_direction += 12.5;
		scr_Just_Shoot()
	}

	var color = make_color_rgb(255, 0, 0);
	var color2 = make_color_rgb(180, 0, 0);
		
	scr_Particle_Burst(obj_Field_Trail, spr_Soul_Big_Bit, color, color2, 10, 12, 0, 360, 20, 0.5, 15, false)
		
	scr_Disk_Effect(20, 0.5, color);
	scr_Disk_Effect(20, 0.9, color2);
	
	var dir = random(360);
	x += lengthdir_x(bullet_speed * 10, dir);
	y += lengthdir_y(bullet_speed * 10, dir);

}

instance_destroy();