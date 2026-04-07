/// @description Insert description here
// You can write your code in this editor

var _dam = other.shot_stats.Shot_Power;

alarm[0] = 1;
event_user(0);
with (obj_bell) {
	speed = _dam * 100 / (distance_to_object(other) + 150);
	direction = point_direction(x,y,other.x, other.y) + 180;
}

direction = other.direction;
speed = max(1, _dam / 2);

scr_Sound_Effect([snd_Bell_Hit_1, snd_Bell_Hit_2], 1.25 + (sqrt(speed) / 50))

//instance_destroy(other)

scr_Disk_Effect(30, sqrt(speed) / 4, c_orange)
scr_Disk_Effect(30, sqrt(speed) / 2, c_orange)

if instance_exists(boss_parent) {
	with (boss_parent) {
		bosshealth -= 5 + _dam;
		scr_setup_dmg_indicator(x, y, 25)
		
		if active_attack != 2 {
			
			active_attack = 2;
			scr_Boss_Attack_Time_Setup_v2(300, 30, 1, 120, 60, 10);
			scr_Boss_Dash_Setup_v2(scr_Soul_Point(), 0, 3.5 * bossmovespeed);
		}
	}
}
