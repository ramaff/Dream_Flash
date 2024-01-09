/// @description Insert description here
// You can write your code in this editor

alarm[1] = 20;

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
