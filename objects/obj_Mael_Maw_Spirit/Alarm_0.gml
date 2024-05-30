/// @description Insert description here
// You can write your code in this editor
instance_destroy()

scr_Default_Attack_Settings();

bullet_direction = random(360);
bullet_speed = bossbulletspeed * 1.5;
bullet_count = 4;
bullet_spread = 90;
		
scr_Boss_Shoot();	

