/// @description Insert description here
// You can write your code in this editor

scr_Default_Attack_Settings();
	
bullet_speed = bossbulletspeed * 3;
	
bullet_type = obj_Dormant_Rebound_Bullet;
bullet_count = 8;
bullet_spread = 45;
bullet_direction = random(360);
	
boss_xoffset = obj_Soul_Parent.perX - x;
boss_yoffset = obj_Soul_Parent.perY - y;
	
scr_Boss_Shoot()

// Inherit the parent event
event_inherited();

