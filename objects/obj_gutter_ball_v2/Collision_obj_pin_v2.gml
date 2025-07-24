/// @description Insert description here
// You can write your code in this editor

if speed > 1 {

	scr_default_attack_settings_v2();

	attack_stats.bullet_count = 6;
	attack_stats.bullet_spread = 60;

	attack_stats.boss_xoffset = other.x - x;
	attack_stats.boss_yoffset = other.y - y;

	attack_stats.bullet_direction = scr_Boss_Bullet_Direction_Formula(scr_Soul_Point(), 360)
		
	scr_boss_shoot_v2();

	instance_destroy(other)

}

