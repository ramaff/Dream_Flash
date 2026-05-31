/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if alarm[0] mod 5 = 1 {
	var _pow = shot_stats.Shot_Power;
	var _soul = shot_stats.Shot_Follow_Origin;
	var _xst = x;
	var _yst = y;

	with (instance_nearest(x, y, obj_Boss_Parent)) {
	        
		var max_streaks = 30;
		var streak_length = 64;
		var streak_target = other.id;
		var chain_damage = _pow;
		var streak_color = make_color_rgb(255, 150, 150);
		var chains = 1;
		var chain_range = 1000;
		var _boss = id;
				
		scr_setup_dmg_indicator(x,y, chain_damage, c_white);
				
		bosshealth -= chain_damage;
		
		with instance_create_depth(x, y, depth - 1, obj_Boss_Flash) {
			target = _boss;	
			image_alpha = 0.5;
			alarm[0] = 3;
			event_user(0);
		}
			
		scr_Lightning_To_Target(spr_Lightning_Streak, _xst, _yst, x, y, max_streaks, streak_length, streak_color)
		
		if instance_exists(_soul) {
			var _dist = max(0, point_distance(x, y, _soul.x, _soul.y) - 100);
			var _dir = point_direction(_soul.x, _soul.y, x, y)
			var _speed = _dist / 30;
			var _time = 5;
			scr_force_push(_soul, _time, _speed, _speed/_time, _dir)
		}
	}
}
