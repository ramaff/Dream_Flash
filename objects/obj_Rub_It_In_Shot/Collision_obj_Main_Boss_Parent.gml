/// @description Insert description here
// You can write your code in this editor

var _boss = other.id;
var _hitable = false
	
if !variable_struct_exists(boss_hits, _boss) {
	_hitable = true
}
if variable_struct_get(boss_hits, _boss) != (real(_boss) + shot_stats.Shot_ID_Offset) {
	_hitable = true	
}
		
if _hitable {
	variable_struct_set(boss_hits, _boss, _boss)
	var _dir = direction;
	
	with(other) {
		scr_default_attack_settings_v2();
	    attack_stats.bullet_speed = 2 + random(3);
	    attack_stats.bullet_power = global.stagedamage;
	    attack_stats.bullet_direction = _dir + (-45 + random(90)) / bossaccuracy;
	    attack_stats.bullet_lifespan = 300;
	    attack_stats.bullet_count = 4;
	    attack_stats.bullet_spread = 90;
	
		repeat(3) {
			attack_stats.bullet_direction += 12.5;
			scr_boss_shoot_v2();
		}
		attack_stats.bullet_speed += 3;
		repeat(3) {
			attack_stats.bullet_direction += 12.5;
			scr_boss_shoot_v2();
		}

		var color = make_color_rgb(255, 0, 9);
		var color2 = make_color_rgb(255, 0, 9);
		
		scr_Particle_Burst(obj_Friction_Part, spr_Soul_Big_Bit, color, color2, 10, 12, 0, 360, 20, 0.5, 15, false)
		
		scr_Disk_Effect(20, 0.5, color);
		scr_Disk_Effect(20, 0.9, color2);
	
		x += lengthdir_x(attack_stats.bullet_speed * 10, _dir);
		y += lengthdir_y(attack_stats.bullet_speed * 10, _dir);
	}
		
}