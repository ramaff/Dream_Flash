/// @description Insert description here
// You can write your code in this editor

alarm[1] = 20;

if champ = 1 {
	scr_Default_Attack_Settings();

	bullet_type = obj_Rain_Drop_Bullet;
	bullet_sprite = spr_Water_Drop_Bullet;
	bullet_speed = bossbulletspeed * (0.75 + random(0.75));
	bullet_power = bosspower;
	bullet_lifespan = 360;
	
	bullet_part = 2;
	bullet_part_sprite = spr_Bullet_Tear_Part;
	bullet_part_area = 25;
	bullet_part_life = 20;
	bullet_part_color1 = make_color_rgb(0,106,255);
	bullet_part_color2 = c_white;
	
	bullet_direction = 270;
	
	boss_yoffset = (room_height / 2) - (field_width / 2) - 300 - y
	
	if currentphase = 1 {
		boss_xoffset = (room_width / 2) + random(field_width) - (field_width / 2) - x	
	} else {
		if instance_exists(obj_Basic_Soul) {
			rain_xx = scr_Converge(rain_xx, obj_Basic_Soul.perX, 20)
		}
		boss_xoffset = rain_xx + random(150) - 75 - x
		bullet_lifespan = 240;
		
		bullet_speed += bossbulletspeed;
		
		alarm[1] = 7;
	}
		
	scr_Boss_Shoot();
	
} else {
	if currentphase = 2 and active_attack_delay <= 0 {
		scr_Default_Attack_Settings();

		bullet_type = obj_Lob_Direction_Bullet
		bullet_sprite = spr_Water_Drop_Bullet;
		bullet_speed = bossbulletspeed * (1.25 + random(1));
		bullet_power = bosspower;	
	
		bullet_bounce_speed = 2 + random(2);
		bullet_lob_time = 60 + random(90);
		bullet_lifespan = bullet_lob_time + 2;
	
		bullet_direction = random(360);
		
		scr_Boss_Shoot();
	}
}
